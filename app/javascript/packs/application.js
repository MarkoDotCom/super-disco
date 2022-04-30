// Entry point for the build script in your package.json
import 'core-js/stable'
import 'regenerator-runtime/runtime'
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"

import "../styles/application.scss"
import "../channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


