function Vypocet1() {
   if (document.spotreba1.vzdalenost.value == "") {
    error1.style.color = "#cf000f";
    error1.style.fontWeight = "bold";
    document.spotreba1.vzdalenost.style.border = "2px solid #cf000f";
    location.href = "#error1";
    return;
   } else if (document.spotreba1.spotreba.value == "") {
    error2.style.color = "#cf000f";
    error2.style.fontWeight = "bold";
    document.spotreba1.spotreba.style.border = "2px solid #cf000f";
    location.href = "#error2";
    return;
   } else {
    var vzdalenost = eval(document.spotreba1.vzdalenost.value.replace(",",".").replace(/ /g,""));

    var cena = eval(document.spotreba1.cena.value.replace(",",".").replace(/ /g,""));
    if (document.spotreba1.cestaZpet.checked == true) {
     vzdalenost = 2 * vzdalenost;
    }

    if (document.spotreba1.jednotka.options[0].selected == true) {   // km/l
      var spotreba = 100 / eval(document.spotreba1.spotreba.value.replace(",",".").replace(/ /g,""));
    } else {     
      var spotreba = eval(document.spotreba1.spotreba.value.replace(",",".").replace(/ /g,""));
    }   
                              
    var spotrebaUV = (vzdalenost/100) * spotreba;
    var cenaUV = spotrebaUV * cena;
    var spotreba1km = spotreba/100;
    var cena1km = spotreba1km * cena
    
    document.getElementById("spotrebaUV").innerHTML = spotrebaUV.toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, "&nbsp;").replace(".",",");   
    document.getElementById("spotreba1km").innerHTML = spotreba1km.toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, "&nbsp;").replace(".",",");   
    document.getElementById("ujetychKm").innerHTML = vzdalenost.toFixed(0).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, "&nbsp;") + " km";
    
    if (document.spotreba1.cena.value != "") {
     document.getElementById("cenaUV").innerHTML = cenaUV.toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, "&nbsp;").replace(".",",");
     document.getElementById("cena1km").innerHTML = cena1km.toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, "&nbsp;").replace(".",",");
    } else {
     document.getElementById("cenaUV").innerHTML = "";
     document.getElementById("cena1km").innerHTML = "";    
    }
    
    }
   }