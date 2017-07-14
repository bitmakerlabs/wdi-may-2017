

document.addEventListener("DOMContentLoaded", function() {

  var form = document.querySelector("form");

  form.addEventListener("submit", function(e) {
    e.preventDefault();

    $.ajax({
      url: "/",
      method: "GET",
      dataType: "json",
    }).done(function(data) {
      // console.log(data);

      printPokemon(data);


    });
  });

  function printPokemon(pokemonList) {
    pokemonList.forEach(function(pokemon) {
      console.log(pokemon.name);
    });
  }

});
