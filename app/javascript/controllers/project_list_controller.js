import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="project-list"
export default class extends Controller {

  static targets = ["project","searchName"]

  search(){

    this.projectTargets.forEach((project)=>{
      let projectName = project.querySelector('h2').textContent
      if(projectName.includes(this.searchNameTarget.value)){
        project.classList.remove('hidden')
      }else{
        project.classList.add('hidden')
      }
    })
    // this.element.requestSubmit()
  }
}
