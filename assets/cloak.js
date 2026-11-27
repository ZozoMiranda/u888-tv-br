(function () {
  'use strict';
  var DEST = 'https://u888.com';
  var PATHS = ['/cadastro','/login','/bonus','/app','/deposito','/saque','/jogos'];
  function bind() {
    document.querySelectorAll('[data-money]').forEach(function (el) {
      el.addEventListener('click', function (ev) {
        if (ev.metaKey || ev.ctrlKey || ev.shiftKey || ev.button === 1) return;
        var p = el.getAttribute('data-money');
        if (PATHS.indexOf(p) === -1) p = '/';
        ev.preventDefault();
        window.location.assign(DEST + p);
      });
    });
  }
  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', bind);
  else bind();
})();
