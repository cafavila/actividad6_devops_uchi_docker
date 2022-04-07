// VARIABLES
const activador = document.querySelector('#activador')
const banner = document.querySelector('#banner')

// EVENTOS
eventListeners()

function eventListeners() {
    activador.addEventListener('mouseover', activadorHover)
    activador.addEventListener('mouseout', () => {
        banner.classList.add('hidden')
    })
}

// FUNCIONES
function activadorHover() {
    banner.classList.remove('hidden')
}