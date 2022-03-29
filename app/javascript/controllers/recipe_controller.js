import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["ingredientForm", "ratioForm", "showPage"]

  showIngredientForm() {
    this.ingredientFormTarget.classList.remove("hidden")
    this.showPageTarget.classList.add("pop-up")
  }
  hideIngredientForm() {
    this.ingredientFormTarget.classList.add("hidden")
    this.showPageTarget.classList.remove("pop-up")
  }

  showRatioForm() {
    this.ratioFormTarget.classList.remove("hidden")
    this.showPageTarget.classList.add("pop-up")
  }
  hideRatioForm() {
    this.ratioFormTarget.classList.add("hidden")
    this.showPageTarget.classList.remove("pop-up")
  }
}
