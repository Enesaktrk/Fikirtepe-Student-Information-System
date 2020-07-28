var termExp,startDate,endDate,firstYear,secondYear;
getTermInputs = () => {
     termExp = document.querySelector('#term-exp').value;
     startDate = document.querySelector('#term-start-date').value;
     endDate = document.querySelector('#term-end-date').value;
}
displayInfo = () => {
    document.querySelector('#term-exp-content').innerHTML = '<strong>Dönem Açıklaması</strong><br>' + termExp;
    document.querySelector('#term-start-date-content').innerHTML = '<strong>Dönem Başlangıç Tarihi</strong><br>' + startDate;
    document.querySelector('#term-end-date-content').innerHTML = '<strong>Dönem Bitiş Tarihi </strong><br>' + endDate;
    document.querySelectorAll('.term-input').forEach(item=>{item.value = '';});
    document.querySelector('#toggle-switch-container').style.display = 'flex';
    document.querySelector('#create-class-btn').style.display = 'block';
}
termValidation = (input) => {
      var parseSlash = input.split('/'),parseDash = input.split('-');
      var day = parseSlash[0], month = parseSlash[1], year = parseSlash[2];
      if(input === startDate)firstYear = year;
      if(input === endDate)secondYear = year;
      var day_monthValidation = day > 0 && day <= 31 && month > 0 && month <= 12;
      return input === termExp ? parseDash[1]-parseDash[0] === 1 : day_monthValidation;
}
const addTermButton = document.querySelector('#add-term-button');
addTermButton.addEventListener('click',function(){
    getTermInputs();
    if(termValidation(termExp) && termValidation(startDate) && termValidation(endDate))
        displayInfo();
});
document.querySelectorAll('.term-input').forEach(item => {
    item.addEventListener('keypress',function(e){
        if(e.keyCode == 13){
            getTermInputs();
            if(termValidation(termExp) && termValidation(startDate) && termValidation(endDate))
                displayInfo();
        }
    })
})

/*
//to do
->adding one term div under the other term div respectively.
*/
