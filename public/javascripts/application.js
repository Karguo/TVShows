function setStyleSheet(sheet) {
  var setStyleSheet = document.getElementById('switchtheme');
  setStyleSheet.setAttribute('href', sheet);
  localStorage.setItem('theme', `${sheet}`)
}

let localTheme = localStorage.getItem('theme')

if (localStorage.getItem('theme')) {
  setStyleSheet(localTheme)
};
