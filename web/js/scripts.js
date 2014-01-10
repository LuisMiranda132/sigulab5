$( document ).ready(function() {
//    alert("Document ready");
    
    // Placeholder de la descripcion del Laboratorio.
    $( "#textarea" ).attr('placeholder', 'Descripcion del Laboratorio.');

//    $(document).click(function(e) {
//        if(!$(e.target).is('.descripcion'))
//            alert("NO ES DESCR");
        //$('#yourdiv').css('background-color', 'red');
//    });

    // Descripcion de los campos del formulario.
    $( ".input_formulario" )
        .click(function() {
            $( this ).next(".descripcion").fadeIn();
        })

//        .mouseleave(function() {
//            $( this ).next(".descripcion").hide();
//
//        });
});
