const favoriseIcon = () => {
  const btns = document.querySelectorAll('.btn-flat')
  btns.forEach((btn) => {
    btn.addEventListener('click', (event) => {
      const id = event.currentTarget.dataset.id
      setTimeout(() => { updateIcon(id); }, 500)
    })
  })
}

const updateIcon = (id) => {
  console.log(id)
  const icon = getIcon(id);
  console.log(icon)
  icon.addEventListener('click', (event) => {
    const currentIcon = event.currentTarget
    if (currentIcon.classList.contains('far')) {
      fillHeartIcon(currentIcon);
    } else {
      emptyHeartIcon(currentIcon);
    }
  })
}

const fillHeartIcon = (icon) => {
  icon.classList.remove('far')
  icon.classList.add('fas')
}

const emptyHeartIcon = (icon) => {
  icon.classList.add('far')
  icon.classList.remove('fas')
}

const getIcon = (id) => {
  const icon = document.querySelector(`.heart${id}`);
  return icon
}

export { favoriseIcon };

