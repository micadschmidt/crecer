import { Controller } from "@hotwired/stimulus"
import heic2any from "heic2any"

export default class extends Controller {
  static targets = [ "output", "input" ]

  connect() {
    console.log("Load file preview");
  }

  readURL() {
    var input = this.inputTarget
    var output = this.outputTarget
    var reader = new FileReader();

    if (input.files && input.files[0]) {
      let image = input.files[0]
      reader.onload = (e) => {
        if (/heic/.test(input.files[0].name)) {
          heic2any({
            blob: image,
            toType: 'image/jpeg'
          }).then(jpeg => {
              let newData = URL.createObjectURL(jpeg);
              let newImg = new File([jpeg], "pf_pic.jpeg");
              let container = new DataTransfer();
              container.items.add(newImg);
              input.files = container.files;
              output.setAttribute("src", newData);
          });
        } else {
          output.setAttribute("src", reader.result)
        }
      };
      reader.readAsDataURL(image);
    }
  }
}
// html: { data: { controller: 'password-visibility' }
