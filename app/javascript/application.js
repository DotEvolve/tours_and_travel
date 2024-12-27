// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "./controllers";
import "preline";
import moment from "moment";
window.moment = moment;
