document.addEventListener("DOMContentLoaded", function() {
    const priceField = document.getElementById('price-field');
    const quantityField = document.getElementById('quantity-field');
    const grandTotalField = document.getElementById('grand-total-field');
  
    function updateGrandTotal() {
      const price = parseFloat(priceField.value);
      const quantity = parseFloat(quantityField.value);
      const grandTotal = price * quantity;
      grandTotalField.value = grandTotal.toFixed(2); // Set the grand total with 2 decimal places
    }
  
    priceField.addEventListener("input", updateGrandTotal);
    quantityField.addEventListener("input", updateGrandTotal);
  });
  