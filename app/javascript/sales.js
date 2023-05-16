$(document).ready(function() {
    $('#product-select').on('change', function() {
      var selectedProductId = $(this).val();
      var url = '/products/' + selectedProductId; // Replace '/products' with your actual products route
  
      // Fetch the price of the selected product
      $.get(url, function(product) {
        $('#price-field').val(product.price || '');
      });
    });
  });

