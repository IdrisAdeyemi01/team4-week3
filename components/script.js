let txtCount = document.querySelector('#txt-count');
let textarea = document.querySelector('#text-cont');
textarea.value = textarea.value.replace(/^\s*|\s*$/g,'');

function changeBottomBorder() {
    textarea.style.borderColor = '#FDB600';
    var count = textarea.value.split(" ").length;
    txtCount.innerHTML = count + ' / 500 Words';
    if(count == 500) {
        setTimout(showAlert(), 5000);
    }
    if (textarea.value.length == 0) {
      textarea.style.borderBottom = '4px solid #E4E4E4';
    } else {
      textarea.style.borderBottom = '4px solid #FDB600';
    }
};

function showAlert() {
    let errorMsg = document.querySelector('#errorMsg');
    errorMsg.style.display = "block";
}