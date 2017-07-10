$(function() {

	// DECLARE VARIABLES
	var button = document.getElementById( 'get_monsters' );
	var addMonster = document.getElementById( 'add_monster' );

	// 'GET MONSTERS' CLICK HANDLER
	button.addEventListener( 'click', function() {
	    console.log( 'CLICKED ADD MONSTERS BUTTON' );

	    console.log( 'BEFORE AJAX REQUEST' );

	    // Make AJAX request and capture return value in `request` variable.
	    var request = $.ajax( {
	        url: 'https://monsters-api.herokuapp.com/monsters',
	        method: 'GET',
	        dataType: 'html',
	    } );

	    // Chain `.done()`, `.fail()`, `.always()` to `request`.
	    request.done( function( data ) {
	        console.log( 'INSIDE .done()' );

	        // Create new element.
	        var element = document.createElement( 'div' );

	        // Add `data` to element.
	        element.innerHTML = data;

	        // Add new element to document.
	        document.querySelector( 'body' ).append( element );

	    } ).fail( function( jqXHR, textStatus, errorThrown ) {

	        console.log( 'INSIDE .fail()' );
	        console.log( textStatus, errorThrown );

	        var msg = document.createElement( 'p' );

	        msg.innerHTML = 'Whoops! something went wrong!';

	        document.body.append( msg );

	    } ).always( function() {
	        console.log( 'INSIDE .always()' );
	    } );

	    console.log( 'AFTER AJAX REQUEST' );
	} );

	// 'ADD MONSTER' CLICK HANDLER
	addMonster.addEventListener( 'click', function() {
	    console.log( 'CLICKED `addMonster`' );

	    // Send `monster` data to API via 'POST' request.
	    // NOTE:
	    // - `.done()` and related methods are chained *DIRECTLY* to the `$.ajax( ... )` call.
	    $.ajax( {
	        url: 'https://monsters-api.herokuapp.com/monsters',
	        method: 'POST',
	        data: {
	            monster: {
	                name: 'The Deep Sea King',
	                home: 'City-J',
	                creepiness: 999999
	            }
	        }
	    } ).done( function() {

	        console.log( 'POST SUCCESSFUL' );

	    } ).fail( function() {

	        console.log( 'POST FAILED' );
	    } ).always( function() {
	        console.log( 'POST COMPLETE' );
	    } );
	} );

});
