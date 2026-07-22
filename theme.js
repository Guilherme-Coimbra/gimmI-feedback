/* Theme: dark by default, light on request, remembered per browser.
   Loaded blocking in <head> so the theme is set before first paint and the
   page never flashes the wrong background. Pages that draw charts listen for
   the 'themechange' event to restyle them. */
(function () {
  const root = document.documentElement;
  root.dataset.theme = localStorage.getItem('theme') === 'light' ? 'light' : 'dark';

  document.addEventListener('DOMContentLoaded', function () {
    const btn = document.createElement('button');
    btn.className = 'theme-toggle';
    btn.type = 'button';

    function paint() {
      const isDark = root.dataset.theme !== 'light';
      btn.textContent = isDark ? '☀' : '☾';
      btn.setAttribute('aria-label', isDark ? 'Switch to light theme' : 'Switch to dark theme');
    }

    btn.addEventListener('click', function () {
      root.dataset.theme = root.dataset.theme === 'light' ? 'dark' : 'light';
      localStorage.setItem('theme', root.dataset.theme);
      paint();
      document.dispatchEvent(new CustomEvent('themechange'));
    });

    paint();
    document.body.appendChild(btn);
  });
})();
