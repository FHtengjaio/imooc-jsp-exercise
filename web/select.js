function selectMessage() {
    var count = 0;
    var number = document.getElementById("selectNumber").value;
    var oTableNode = document.getElementById("messageList");
    var oCollTrNodes = oTableNode.getElementsByTagName("tr");
    if(number===""){
       oTableNode.style.display = " ";
        for(var i=1;i<oCollTrNodes.length; i++){
            oCollTrNodes[i].style.display = " ";
        }
    }else{
        for(var j=1;j<oCollTrNodes.length; j++){
            if(oCollTrNodes[j].id !== number){
                oCollTrNodes[j].style.display = "none";
                count++;
            }
            else{
                oCollTrNodes[j].style.display = " ";
            }
        }
    }
    if(count===oCollTrNodes.length-1){
        oTableNode.style.display = "none";
    }
}