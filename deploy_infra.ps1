<#
.SYNOPSIS
  Infra Automation Script for u888b.com.br (Agent A3 - INFRA)
#>

param(
    [string]$CloudflareToken = $env:CLOUDFLARE_API_TOKEN,
    [string]$ZoneId = $env:ZONE_U888B
)

Write-Host "=== INFRA PROVISIONING: u888b.com.br ===" -ForegroundColor Cyan

if (-not $CloudflareToken -or -not $ZoneId) {
    Write-Warning "CLOUDFLARE_API_TOKEN or ZONE_U888B not set in environment."
    Write-Host "To execute automatically, provide tokens via environment variables or parameters."
    Write-Host "Manual steps:"
    Write-Host "1. Create DNS CNAME @ -> cname.vercel-dns.com (Proxied: true, TTL: 1)"
    Write-Host "2. Set SSL: Full (strict)"
    Write-Host "3. Set Always Use HTTPS: On"
    Write-Host "4. Set Security Level: Medium"
    Write-Host "5. Set Bot Fight Mode: Off"
    Write-Host "6. Set Rocket Loader: Off"
    Write-Host "7. Run 'vercel --prod' inside u888b directory"
    exit 0
}

$headers = @{
    "Authorization" = "Bearer $CloudflareToken"
    "Content-Type"  = "application/json"
}

# 1. Create/Update CNAME record
$bodyCname = @{
    type    = "CNAME"
    name    = "@"
    content = "cname.vercel-dns.com"
    proxied = $true
    ttl     = 1
} | ConvertTo-Json

Write-Host "Configuring DNS CNAME record..."
Invoke-RestMethod -Uri "https://api.cloudflare.com/client/v4/zones/$ZoneId/dns_records" -Method Post -Headers $headers -Body $bodyCname

# 2. Configure Cloudflare zone settings
$settings = @(
    @{ id = "ssl"; value = "full" },
    @{ id = "always_use_https"; value = "on" },
    @{ id = "security_level"; value = "medium" },
    @{ id = "rocket_loader"; value = "off" }
)

foreach ($s in $settings) {
    Write-Host "Setting $($s.id) to $($s.value)..."
    $bodySetting = @{ value = $s.value } | ConvertTo-Json
    Invoke-RestMethod -Uri "https://api.cloudflare.com/client/v4/zones/$ZoneId/settings/$($s.id)" -Method Patch -Headers $headers -Body $bodySetting
}

Write-Host "Cloudflare configuration complete. Deploying to Vercel..." -ForegroundColor Green
Set-Location "C:\Users\User\.gemini\antigravity\scratch\u888b"
npx vercel --prod --yes
