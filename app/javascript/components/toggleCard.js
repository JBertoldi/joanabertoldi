function toggleCard () {
  const toggleBtns = document.querySelectorAll('.toggle-btn');

  Array.from(toggleBtns).forEach(function (btn) {
    console.log(btn);

    btn.addEventListener('click', function (e) {
      const sections = document.querySelectorAll('.toggle');
      e.preventDefault();

      Array.from(sections).forEach(function (section) {
        if (section.classList.contains('hidden')) {
          section.classList.remove('hidden');
        } else {
          section.classList.add('hidden');
        }
      });
    });
  });
};

export { toggleCard };