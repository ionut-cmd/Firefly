// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails, { buttonDisableSelector } from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "bootstrap/dist/js/bootstrap"
import "bootstrap/dist/css/bootstrap"
import "stylesheets/application"
import 'trix/dist/trix.css';








// document.addEventListener("click",function(){
//   document.getElementById("myBtn").addEventListener("click",function(){
//     document.getElementById("demo").innerHTML="hello World"
//   });
// });






Rails.start()
Turbolinks.start()
ActiveStorage.start()


require("jquery")
require("trix")
require("@rails/actiontext")
require("channels")

import "../trix-editor-overrides"
import "@fortawesome/fontawesome-free/css/all"
import "controllers"
window.initMapEvent = function(){
    const evt = new Event("Events")
    document.dispatchEvent(evt)
}

