import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="sidebar"
export default class extends Controller {
  // connect() {
  //   console.log("I am connected");
  // }

  toggleMobileSidebar() {
    const mobileEl = document.getElementById("mobile-sidebar");

    if (mobileEl.classList.contains("hidden")) {
      mobileEl.classList.remove("hidden");
    } else {
      mobileEl.classList.add("hidden");
    }
  }

  toggleLargeSidebar() {
    const bigScreenEl = document.getElementById("large-screen-sidebar");
    const spanEl = document.getElementsByClassName("sidebar-details");
    const mainContent = document.getElementById("main-content");

    if (bigScreenEl.classList.contains("w-2/12")) {
      bigScreenEl.classList.remove("w-2/12");
      bigScreenEl.classList.add("w-[68px]");
      mainContent.classList.remove("lg:ml-64");
      mainContent.classList.add("lg:ml-20");

      for (let i = 0; i < spanEl.length; i++) {
        spanEl[i].classList.add("hidden");
      }
    } else {
      bigScreenEl.classList.remove("w-[68px]");
      bigScreenEl.classList.add("w-2/12");
      mainContent.classList.add("lg:ml-64");
      mainContent.classList.remove("lg:ml-20");

      for (let i = 0; i < spanEl.length; i++) {
        spanEl[i].classList.remove("hidden");
      }
    }
  }
}
