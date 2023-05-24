import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="project-list"
export default class extends Controller {
  search(){
    this.element.requestSubmit()
  }
}
