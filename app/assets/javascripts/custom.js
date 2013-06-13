
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
    var labelQuantity = $('#order_labels_attributes_quantity')

    var graveringPrice
    var totalGraveringPrice
    var matriserPrice
    var totalMatriserPrice
    var testpressPrice
    var totalTestpressPrice
    var pressingPrice
    var labelprice
    var totalLabelsPrice
    var totalPressingPrice
    
    function setGraveringPrice()
    {
        orderRpm = $('#order_rpm').val();
        orderSize = $('#order_record_size').val();

        if (orderSize == "7 tommer") {
            if (orderRpm == "33 1/3 rpm") {
               graveringPrice = window.gravering_7_33;
            }
            if (orderRpm == "45 rpm") {
               graveringPrice = window.gravering_7_45;
            }
        }

        if (orderSize == "10 tommer") {
            if (orderRpm == "33 1/3 rpm") {
               graveringPrice = window.gravering_10_33;
            }
            if (orderRpm == "45 rpm") {
               graveringPrice = window.gravering_10_45;

            }
        }

      if (orderSize == "12 tommer") {
            if (orderRpm == "33 1/3 rpm") {
               graveringPrice = window.gravering_12_33;
            }
            if (orderRpm == "45 rpm") {
               graveringPrice = window.gravering_12_45;
            }
        }
        $('#gravering_price').html(graveringPrice + " kr / side");
        totalGraveringPrice = graveringPrice * 2;
    }

    function setMatriserPrice(matrixQuantity)
    {
        orderSize = $('#order_record_size').val();
        
        var matrix_price

        if (orderSize == "7 tommer") {
           matrix_price = window.matriser_7 * matrixQuantity; 
        }

        if (orderSize == "10 tommer") {
          matrix_price = window.matriser_10 * matrixQuantity; 
        }

        if (orderSize == "12 tommer") {
          matrix_price = window.matriser_12 * matrixQuantity; 
        }
        $('#matrix_price').html(matrix_price + " kr");
        totalMatriserPrice = matrix_price;
    }


    function setTestpressPrice()
    {
        orderRpm = $('#order_rpm').val();
        orderSize = $('#order_record_size').val();
  
        if (orderSize == "7 tommer") {
            if (orderRpm == "33 1/3 rpm") {
              testpress_price = window.testpress_7_33;
            }
            if (orderRpm == "45 rpm") {
              testpress_price = window.testpress_7_45;
            }           
        }
        if (orderSize == "10 tommer") {           
            if (orderRpm == "33 1/3 rpm") {
              testpress_price = window.testpress_10_33;
            }
            if (orderRpm == "45 rpm") {
              testpress_price = window.testpress_10_45;
            }           
        }
        if (orderSize == "12 tommer") {           
            if (orderRpm == "33 1/3 rpm") {
               testpress_price = window.testpress_12_33;
            }
            if (orderRpm == "45 rpm") {
               testpress_price = window.testpress_12_45;
            }           
        }        
       $('#testpress_price').html(testpress_price + " kr");
       totalTestpressPrice = testpress_price;
    }

    function setPressingPrice()
    {
        orderSize = $('#order_record_size').val();
        recordColor = $('#order_pressing_attributes_color').val();
        recordWeight = $('#order_pressing_attributes_weight').val();
        orderQuantity  = $('#order_quantity').val();

        if (orderSize == "7 tommer") {
            if (recordColor == "Svart") {
              pressingPrice = window.pressing_7_svart;
            }
            else 
            {
              pressingPrice = window.pressing_7_farget;
            }           
        }
        if (orderSize == "10 tommer") {
            if (recordColor == "Svart") {
              pressingPrice = window.pressing_10_svart;
            }
            else 
            {
              pressingPrice = window.pressing_10_farget;
            }           
        }
        if (orderSize == "12 tommer") {
            if (recordColor == "Svart") {
                if (recordWeight == "140") {
                  pressingPrice = window.pressing_12_svart_140;
                }
                if (recordWeight == "180") {
                  pressingPrice = window.pressing_12_svart_180;
                }
            }
            else 
            {
                if (recordWeight == "140") {
                  pressingPrice = window.pressing_12_farget_140;
                }
                if (recordWeight == "180") {
                  pressingPrice = window.pressing_12_farget_180;
                }
            }           
        }        
        totalPressingPrice = pressingPrice * orderQuantity;        
        $('#pressing_price').html(totalPressingPrice + " kr");
    }

    function setLabelPrice()
    {
       labelprice = window.labels_svart;
       labelQuantity = $('#order_labels_attributes_quantity').val();

       totalLabelsPrice = labelprice * labelQuantity;

       $('#labels_price').html(totalLabelsPrice + " kr");

    }


    function setTotalPrice()
    {

         total_price = totalGraveringPrice + totalMatriserPrice + totalTestpressPrice + totalPressingPrice + totalLabelsPrice;
         $('#total_price').html(parseFloat(total_price,10).toFixed(2) + " kr");   
    }

    /* Gravering logic */

    $('#order_rpm').change();
    $('#order_rpm').change(function() {

        setGraveringPrice();
        setTestpressPrice();
        setTotalPrice();

        sideA.val(orderRpm);
        sideB.val(orderRpm);

        $('#gravering_status_text').html(orderRpm);

    });

    $('#order_pressing_attributes_weight').change(function() {

        setPressingPrice();
        setTotalPrice();
    });

    $('#order_pressing_attributes_color').change(function() {
        setPressingPrice();
        setTotalPrice();
    });

    $('#order_record_size').change(function() {

        setGraveringPrice();
        setTestpressPrice();
        setPressingPrice();
        setTotalPrice();

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
        setPressingPrice();

        $('#order_matrix_attributes_quantity').val(matrixQty);
        $('#matrise_status_text').html(matrixQty +" stk");

        currentValue.val(this.value);
        currentValueSmall.html(this.value);
        setLabelPrice();

        setTotalPrice();

        // set album qty status
        $('#pressing_status_text').html(albumQty + " x " + $('#order_pressing_attributes_color').val());

        // set labels qty status
        $('#labels_status_text').html(($('#order_quantity').val()*2) + " x " + $('#order_labels_attributes_label_type').val());    
        $('#order_labels_attributes_quantity').val($('#order_quantity').val()*2);    

        // set covers qty status
        $('#covers_status_text').html(albumQty + " x " + $('#order_covers_attributes_inner_sleeve_type').val());
    });

    $('#order_labels_attributes_quantity').change(function() {
        $('#labels_status_text').html( $('#order_labels_attributes_quantity').val() + " x " + $('#order_labels_attributes_label_type').val());    
        setLabelPrice();
        setTotalPrice();
    });

    $('#order_labels_attributes_label_type').change(function() {
        $('#labels_status_text').html( $('#order_labels_attributes_quantity').val() + " x " + $('#order_labels_attributes_label_type').val());    
        setLabelPrice();
        setTotalPrice();        
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
