// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
// import "chartkick/chart.js"
import "chartkick"
// import "chartkick/highcharts"
// import "./chart_show"

// function clearAllCharts() {
//   const expensesByCategory = document.getElementById("expenses-by-category");
//   expensesByCategory.style.display = "none";

//   const myAccounts = document.getElementById("my-accounts");
//   myAccounts.style.display = "none";

//   const lastSevenDays = document.getElementById("last-seven-days");
//   lastSevenDays.style.display = "none";

//   const lastMonth = document.getElementById("last-month");
//   lastMonth.style.display = "none";
// }

// clearAllCharts();
// console.log("primer clearAllCharts")

// const chartSelector = document.getElementById("chart-selector")
// chartSelector.addEventListener("change", (event) => {
//   console.log("test")

//   switch (event.target.value) {
//     case 'expenses-by-category':
//       // clearAllCharts();
//       const expensesByCategoryMostrar = document.getElementById("expenses-by-category");
//       expensesByCategoryMostrar.style.display = "block";

//       break;
//     case 'my-accounts':
//       // clearAllCharts();
//       const myAccountsMostrar = document.getElementById("my-accounts");
//       myAccountsMostrar.style.display = "block";
//       break;
//     case 'last-seven-days':
//       // clearAllCharts();
//       const lastSevenDaysMostrar = document.getElementById("last-seven-days");
//       lastSevenDaysMostrar.style.display = "block";
//       break;
//     case 'last-month':
//       // clearAllCharts();
//       const lastMonthMostrar = document.getElementById("last-month");
//       lastMonthMostrar.style.display = "block";
//       break;
//     default:
//       // clearAllCharts();
//   }
// })
