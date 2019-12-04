const favoriseIcon = () => {
  const btns = document.querySelectorAll('.btn-flat')
  btns.forEach((btn) => {
    btn.addEventListener('click', (event) => {
      setTimeout(() => { updateIcon(); }, 500)
    })
  })
}

const updateIcon = () => {
  const icon = getIcon();
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

const getIcon = () => {
  const icon = document.querySelector('.fa-heart');
  return icon
}

export { favoriseIcon };

