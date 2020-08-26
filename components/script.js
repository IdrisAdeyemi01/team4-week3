let txtCount = document.querySelector('#txt-count');
let textarea = document.querySelector('#text-cont');
textarea.value = textarea.value.replace(/^\s*|\s*$/g,'');

function changeBottomBorder() {
    textarea.style.borderColor = '#FDB600';
    var count = (textarea.value.split(" ").length) - 1;
    txtCount.innerHTML = count + ' / 500 Words';
    if(count === 5) {
        showAle=t();
        setTimeout (function () {
            errorMsg.style.display = "none";
        }, 5000);
    }
    if (textarea.value.length == 0) {
      textarea.style.borderBottom = '4px solid #E4E4E4';
      count = 0;
    } else {
      textarea.style.borderBottom = '4px solid #FDB600';
    }
};

    let errorMsg = document.querySelector('#errorMsg');
    
    errorMsg.style.width = "44%";
    errorMsg.style.display = "none";
    errorMsg.style.marginLeft = '8%';
    errorMsg.style.background = '#FFD874';
    errorMsg.style.padding = "1%";
    errorMsg.style.fontSize = "2vw";   
    errorMsg.style.color = 'rgba(0, 0, 0, 0.88)';
    errorMsg.style.position = 'absolute';
    errorMsg.style.borderRadius = '5px';
    errorMsg.style.top = '27%';

function showAlert() {
    errorMsg.style.display = "block";
}