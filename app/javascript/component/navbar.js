const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-custom');

  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-custom-white')
      }
      else {
        navbar.classList.remove('navbar-custom-white')
      }
    })
  }
};

export { initUpdateNavbarOnScroll };
