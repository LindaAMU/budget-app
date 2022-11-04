// import { Controller } from "@hotwired/stimulus"

// export default class extends Controller {
//   connect(){
//     document.getElementById("chart-selector").addEventListener("change", (event) => {
//       console.log("event");
//      })
//   }
// }

function clearAllCharts() {
  const barras = document.getElementById("barras-charts");
  barras.style.display = "none";
  const otros = document.getElementById("otros-charts");
  otros.style.display = "none";
  console.log("clearAllCharts");
}

const chartSelector = document.getElementById("chart-selector")
chartSelector.addEventListener("change", (event) => {
  console.log("Si detecta el select");


  switch (event.target.value) {
    case 'barras':
      clearAllCharts();
      console.log("has seleccionado " + event.target.value + " usando switch")
      const barrasMostrar = document.getElementById("barras-charts");
      barrasMostrar.style.display = "block";
      console.log("ahora se muestran los graficos de barras")
      break;
    case 'otros':
      clearAllCharts();
      console.log("has seleccionado " + event.target.value + " usando switch")
      const otrosMostrar = document.getElementById("otros-charts");
      otrosMostrar.style.display = "block";
      console.log("ahora se muestran otros graficos")
      break;
    default:
      clearAllCharts();
      console.log(`nope`);
  }
})
