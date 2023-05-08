import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autosubmit"
export default class extends Controller {
  submit(e) {
    this.element.requestSubmit()
  }
}