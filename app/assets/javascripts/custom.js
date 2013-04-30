$(function(){

    var currentValue = $('#range');
    var currentValueSmall = $('#range-small');
    var sideA = $('#order_gravering_attributes_side_a_rpm');
    var sideB = $('#order_gravering_attributes_side_b_rpm');


    /* Gravering logic */

    $('#order_rpm').change();
    $('#order_rpm').change(function() {

        // set number of matrices to albumQty / 1000
        var orderRpm = $('#order_rpm').val()
    
        sideA.val(orderRpm);    
        sideB.val(orderRpm);    
        $('#gravering_status_text').html(orderRpm);    
    });

    sideA.change(function() {
            $('#gravering_status_text').html(sideA.val() + " / " + sideB.val());
    });

    sideB.change(function() {
            $('#gravering_status_text').html(sideA.val() + " / " + sideB.val());
    });


    // Trigger the event on load, so
    // the value field is populated:

    $('#order_quantity').change();

    $('#order_quantity').change(function() {

        $('#quantitySlider').slider('setValue', $(this).val());

        // set number of matrices to albumQty / 1000
        albumQty = $('#order_quantity').val();
        matrixQty = Math.ceil(albumQty / 1000);

        $('#order_matrix_attributes_quantity').val(matrixQty);    
        $('#matrise_status_text').html(matrixQty +" stk");

        currentValue.html(this.value);
        currentValueSmall.html(this.value);

        // set album qty status
        $('#pressing_status_text').html(albumQty + " x " + $('#order_pressing_attributes_color').val());

        // set labels qty status
        $('#labels_status_text').html((albumQty*2) + " x " + $('#order_labels_attributes_type').val());

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

   $('#order_labels_attributes_type').change(function() {

        $('#labels_status_text').html(($('#order_quantity').val()*2) + " x " + $('#order_labels_attributes_type').val());    
    });

   /* Covers logic */
   $('#order_covers_attributes_inner_sleeve_type').change(function() {

        $('#covers_status_text').html($('#order_quantity').val() + " x " + $('#order_covers_attributes_inner_sleeve_type').val());    
    });


});
