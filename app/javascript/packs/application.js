import "../channels"
import "../styles/application.scss"
import 'core-js/stable'
import 'regenerator-runtime/runtime'
import 'jquery'
import 'popper.js'
import 'bootstrap'

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"


Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"

window.dispatchMapsEvent = function(...args) {
    const event = new Event("google-maps-callback")
    window.dispatchEvent(event)
}