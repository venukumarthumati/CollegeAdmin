var picker=new Lightpick({field:document.getElementById("pro-start-date"),secondField:document.getElementById("pro-end-date"),singleDate:!1,onSelect:function(e,t){var n="";n+=e?e.format("Do MMMM YYYY")+" to ":"",n+=t?t.format("Do MMMM YYYY"):"...",document.getElementById("result-3").innerHTML=n}});