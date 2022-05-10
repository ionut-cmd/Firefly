
document.addEventListener('DOMContentLoaded', (e) => {
  setTimeout(()=>{
   const box = document.getElementById("message_content");
  box.value = "";
  const button = document.getElementById("message_button");
  button.disabled = false;

  }, 100);
})