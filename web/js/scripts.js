$( document ).ready(function() {
    /*alert("Document ready");*/
    
    // Placeholder de la descripcion del Laboratorio.
    $( "#textarea" ).attr('placeholder', 'Descripcion del Laboratorio.');

    // Descripcion de los campos del formulario.
    $( ".input_formulario" )
        .mouseenter(function() {
            $( this ).next(".descripcion").fadeIn();
        })

        .mouseleave(function() {
            $( this ).next(".descripcion").hide();

        });
});
