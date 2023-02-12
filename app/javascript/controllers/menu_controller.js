import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="menu"
export default class extends Controller {
  static targets = ["mobileMenu", "desktopMenu"];
  connect() {
    console.log("Connecting to data-controller='menu'")
  }

  toggleDesktopMenu() {
    this.desktopMenuTarget.classList.toggle("hidden");
  }

  toggleMobileMenu() {
    this.mobileMenuTarget.classList.toggle("hidden");
  }
}
