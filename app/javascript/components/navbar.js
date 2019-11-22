const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-custom');
  console.log(navbar);

  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        console.log("reached")
        navbar.classList.add('navbar-custom-white')
      }
      else {
        navbar.classList.remove('navbar-custom-white')
      }
    })
  }
};

export { initUpdateNavbarOnScroll };
