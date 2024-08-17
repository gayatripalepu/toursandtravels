/**
 * 
 */
 function showQuestion(str) {
  var xhttp;
  if (str == "") {
    document.getElementById("txtHint").innerHTML = "";
    return;
  }
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
    document.getElementById("txtHint").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "getQuestion.jsp?q="+str, true);
  xhttp.send();
}

 function showPassword(str) {
  var xhttp;
  if (str == "") {
    document.getElementById("txtHint1").innerHTML = "";
    return;
  }
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
    document.getElementById("txtHint1").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "getPassword.jsp?q="+str, true);
  xhttp.send();
}