import ApplicationController from './application_controller'

export default class extends ApplicationController {
  connect () {
    super.connect()
  }

  static targets = ["dropdown", "toggleBtn"]

  toggleDropwdown(){
      if (Array.from(this.dropdownTarget.classList).includes("hidden")){
        this.dropdownTarget.classList.remove("hidden")
        this.toggleBtnTarget.innerHTML = `<span class="text-2xl"> <i class="fa-solid fa-xmark" aria-hidden="true"></i> </span>`
      } else {
        this.dropdownTarget.classList.add("hidden")
        this.toggleBtnTarget.innerHTML = `<span class="text-2xl"> <i class="fa-solid fa-bars" aria-hidden="true"></i> </span> `
      }
  }
}
