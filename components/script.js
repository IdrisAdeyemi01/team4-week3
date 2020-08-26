let textarea = document.querySelector('text-cont');
function changeButtomBorder() {
    if (textarea.value.length == 0) {
      textarea.style.borderBottom = '4px solid #E4E4E4';
    } else {
      textarea.style.borderBottom = '4px solid #FDB600';
    }
}