import { Controller } from "@hotwired/stimulus";
import screenfull from "screenfull";

// Connects to data-controller="screenfull"
export default class extends Controller {
  connect() {
    this.element.addEventListener("click", () => {
      if (screenfull.isEnabled) {
        screenfull.request();
      } else {
        // Ignore or do something else
      }
    });
  }
}
