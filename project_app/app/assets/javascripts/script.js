jQuery(document).ready(function($) {
 $("form").on('click',()=>{
  console.log("hi")
  function showDiv() {
   document.getElementById('hidden').style.display = "flex";
}
showDiv()})
});

