import consumer from "./consumer"


// document.addEventListener('click', (e) => {
//   setTimeout(()=>{
//     e.preventDefault();
    
//    const box = document.getElementById("text_box");
//   box.value = "";
//   const button = document.getElementById("message_button");
//   button.disabled = false;

//   }, 100);
// })

var job_id = 0

document.addEventListener('change', () => {

  const room_element = document.getElementById('room-id');
  const room_id = Number(room_element.getAttribute('data-room-id'));
 
  
  
  consumer.subscriptions.create({ channel: "RoomChannel", room_id: room_id }, {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("connected to  => " + room_id)
    
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this 
    console.log(data)
     
    const user_element = document.getElementById('user-id');
    const user_id = Number(user_element.getAttribute('data-user-id'));

    let html;
    let count = 0;
    if(user_id === data.message.user_id) {
      html = data.mine
      count = 1 + count
      console.log('hello this is count')
      console.log(count)
    }else{
     
      html = data.theirs
    }
    if(job_id != data.message.id){
      document.getElementById('messages').innerHTML += html
      job_id = data.message.id
    }
    
    // document.getElementById("text_box").value = "";

    // document.getElementById("message_button").disabled = false;
    // document.getElementById("m_form")[0].reset()

    setTimeout(()=>{
    
    
    const box = document.getElementById("text_box");
    box.value = "";
    const button = document.getElementById("message_button");
    button.disabled = false;

  }, 100);

    
  }
});


})

