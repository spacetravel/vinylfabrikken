
$( document ).ready(function(){

    var currentValue = $('#range');
    var currentValueSmall = $('#range-small');
    var sideA = $('#order_gravering_attributes_side_a_rpm');
    var sideB = $('#order_gravering_attributes_side_b_rpm');
    var orderRpm = $('#order_rpm').val();
    var orderSize = $('#order_record_size').val();
    var orderQuantity  = $('#order_quantity').val();
    var recordColor = $('#order_pressing_attributes_color').val();
    var recordWeight = $('#order_pressing_attributes_weight').val();
    
    function setGraveringPrice()
    {
        orderRpm = $('#order_rpm').val();
        orderSize = $('#order_record_size').val();

        if (orderSize == "7 tommer") {
            if (orderRpm == "33 1/3 rpm") {
                $('#gravering_price').html(window.gravering_7_33 + " kr / side");    
            }
            if (orderRpm == "45 rpm") {
                $('#gravering_price').html(window.gravering_7_45 + " kr / side");    
            }
        }

        if (orderSize == "10 tommer") {
            if (orderRpm == "33 1/3 rpm") {
                $('#gravering_price').html(window.gravering_10_33 + " kr / side");
            }
            if (orderRpm == "45 rpm") {
               $('#gravering_price').html(window.gravering_10_45 + " kr / side");

            }
        }

      if (orderSize == "12 tommer") {
            if (orderRpm == "33 1/3 rpm") {
                $('#gravering_price').html(window.gravering_12_33 + " kr / side");
            }
            if (orderRpm == "45 rpm") {
                $('#gravering_price').html(window.gravering_12_45 + " kr / side");
            }
        }
    }

    function setMatriserPrice(matrixQuantity)
    {
        orderSize = $('#order_record_size').val();
        
        var matrix_price = window.matriser_7 * matrixQuantity; 

        if (orderSize == "7 tommer") {
          var matrix_price = window.matriser_7 * matrixQuantity; 
          $('#matrix_price').html(matrix_price + " kr");    
        }

        if (orderSize == "10 tommer") {
          var matrix_price = window.matriser_10 * matrixQuantity; 
          $('#matrix_price').html(matrix_price + " kr");
        }

        if (orderSize == "12 tommer") {
          var matrix_price = window.matriser_12 * matrixQuantity; 
          $('#matrix_price').html(matrix_price + " kr");
        }
    }


    function setTestpressPrice()
    {
        orderRpm = $('#order_rpm').val();
        orderSize = $('#order_record_size').val();
  
        if (orderSize == "7 tommer") {
            if (orderRpm == "33 1/3 rpm") {
              $('#testpress_price').html(window.testpress_7_33 + " kr");
            }
            if (orderRpm == "45 rpm") {
              $('#testpress_price').html(window.testpress_7_45 + " kr");
            }           
        }
        if (orderSize == "10 tommer") {           
            if (orderRpm == "33 1/3 rpm") {
              $('#testpress_price').html(window.testpress_10_33 + " kr");
            }
            if (orderRpm == "45 rpm") {
              $('#testpress_price').html(window.testpress_10_45 + " kr");
            }           
        }
        if (orderSize == "12 tommer") {           
            if (orderRpm == "33 1/3 rpm") {
              $('#testpress_price').html(window.testpress_12_33 + " kr");
            }
            if (orderRpm == "45 rpm") {
              $('#testpress_price').html(window.testpress_12_45 + " kr");
            }           
        }        
    }

    function setPressingPrice()
    {
        orderSize = $('#order_record_size').val();
        recordColor = $('#order_pressing_attributes_color').val();
        recordWeight = $('#order_pressing_attributes_weight').val();
       
        if (orderSize == "7 tommer") {
            if (recordColor == "Svart") {
              $('#pressing_price').html(window.pressing_7_svart + " kr");
            }
            else 
            {
              $('#pressing_price').html(window.pressing_7_farget + " kr");
            }           
        }
        if (orderSize == "10 tommer") {
            if (recordColor == "Svart") {
              $('#pressing_price').html(window.pressing_10_svart + " kr");
            }
            else 
            {
              $('#pressing_price').html(window.pressing_10_farget + " kr");
            }           
        }
        if (orderSize == "12 tommer") {
            if (recordColor == "Svart") {
                if (recordWeight == "140") {
                  $('#pressing_price').html(window.pressing_12_svart_140 + " kr");
                }
                if (recordWeight == "180") {
                  $('#pressing_price').html(window.pressing_12_svart_180 + " kr");
                }
            }
            else 
            {
                if (recordWeight == "140") {
                  $('#pressing_price').html(window.pressing_12_farget_140 + " kr");
                }
                if (recordWeight == "180") {
                  $('#pressing_price').html(window.pressing_12_farget_180 + " kr");
                }
            }           
        }        
    }

    /* Gravering logic */

    $('#order_rpm').change();
    $('#order_rpm').change(function() {


        setGraveringPrice();
        setTestpressPrice();


        sideA.val(orderRpm);
        sideB.val(orderRpm);    
        $('#gravering_status_text').html(orderRpm);    
        

    });

    $('#order_pressing_attributes_weight').change(function() {

        setPressingPrice();
    });

    $('#order_pressing_attributes_color').change(function() {
        setPressingPrice();
    });

    $('#order_record_size').change(function() {

        setGraveringPrice();
        setTestpressPrice();
        setPressingPrice();

        // set number of matrices to albumQty / 1000
        albumQty = $('#order_quantity').val();
        matrixQty = Math.ceil(albumQty / 1000);
        setMatriserPrice(matrixQty);

    });
     $('#order_record_size').change();

    sideA.change(function() {
            $('#gravering_status_text').html(sideA.val() + " / " + sideB.val());
    });

    sideB.change(function() {
            $('#gravering_status_text').html(sideA.val() + " / " + sideB.val());
    });


    // Trigger the event on load, so
    // the value field is populated:

    $('#order_quantity').change();

    $('#range').bind('input', function() { 
        $('#order_quantity').val($(this).val());
        currentValueSmall.html(this.value);
    });

   $('#range').change(function() { 
        $('#order_quantity').change();
    });

    $('#order_quantity').change(function() {

        $('#quantitySlider').slider('setValue', $(this).val());

        // set number of matrices to albumQty / 1000
        albumQty = $('#order_quantity').val();
        matrixQty = Math.ceil(albumQty / 1000);

        setMatriserPrice(matrixQty);

        $('#order_matrix_attributes_quantity').val(matrixQty);
        $('#matrise_status_text').html(matrixQty +" stk");

        currentValue.val(this.value);
        currentValueSmall.html(this.value);

        // set album qty status
        $('#pressing_status_text').html(albumQty + " x " + $('#order_pressing_attributes_color').val());

        // set labels qty status
        $('#labels_status_text').html(($('#order_quantity').val()*2) + " x " + $('#order_labels_attributes_label_type').val());    

        // set covers qty status
        $('#covers_status_text').html(albumQty + " x " + $('#order_covers_attributes_inner_sleeve_type').val());
    });


    /* Prøvetrykk logic */

    $('#order_testpress_attributes_quantity').change(function() {

        $('#provetrykk_status_text').html($('#order_testpress_attributes_quantity').val() + " eksemplarer");    
    });


    /* Pressing logic */

   $('#order_pressing_attributes_color').change(function() {

        $('#pressing_status_text').html($('#order_quantity').val() + " x " + $('#order_pressing_attributes_color').val());    
    });

    /* Labels logic */

   $('#order_labels_attributes_label_type').change(function() {


        $('#labels_status_text').html(($('#order_quantity').val()*2) + " x " + $('#order_labels_attributes_label_type').val());    
    });

   /* Covers logic */
   $('#order_covers_attributes_inner_sleeve_type').change(function() {

        $('#covers_status_text').html($('#order_quantity').val() + " x " + $('#order_covers_attributes_inner_sleeve_type').val());    
    });

    $('#order_quantity').change();
});
