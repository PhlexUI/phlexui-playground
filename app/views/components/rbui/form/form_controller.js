import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static outlets = ["rbui--form-field"];


  connect() {
    console.log('form controlle')
  }

  onSubmit(event) {
    this.rbuiFormFieldOutlets.forEach(field => field.handleSubmit(event));
  }
}