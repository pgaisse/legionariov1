// Seleccionamos el sidebar
const sidebar = document.getElementById('sidebar');
sidebar.style.right = '-250px';  // Ocultar el sidebar

// Detectamos el evento de scroll
window.onscroll = function() {
  if (window.scrollY > 770) {  // Si el scroll es mayor que 200px
    sidebar.style.right = '0';  // Mostrar el sidebar
  } else {
    sidebar.style.right = '-250px';  // Ocultar el sideba
    
  }
};
