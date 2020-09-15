window.addEventListener('load', function(){

const inputPrice = document.getElementById("price")
const content = document.getElementById("add-tax-price")
const profit = document.getElementById("profit")

inputPrice.addEventListener('input', function(){
  const price = document.getElementById("price").value;
  tax_price = price/10;
  content.innerHTML = tax_price
  console.log(content)
  Net_income = (price - tax_price);
  profit.innerHTML = Net_income
  console.log(profit)
})

})