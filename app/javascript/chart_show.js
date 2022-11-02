// import { Controller } from "@hotwired/stimulus"

// export default class extends Controller {
//   connect(){
//     document.getElementById("chart-selector").addEventListener("change", (event) => {
//       console.log("event");
//      })
//   }
// }
const chartSelector = document.getElementById("chart-selector")
chartSelector.addEventListener("change", (event) => {
  console.log("Si detecta el select");
  console.log(event.target.value + " testeando el value");
  if (event.target.value == 'barras') {
    console.log("has seleccionado " + event.target.value)
    const chart = document.getElementById("chart-selector")
  }
})
