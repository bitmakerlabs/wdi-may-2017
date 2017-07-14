# require 'typhoeus'

class PokemonController < ApplicationController

  def index

    total_requested_pokemon = params[:quantity].to_i
    if total_requested_pokemon <= 0
      total_requested_pokemon = 100
    end

    max_per_page = 15
    offset = 0
    @pokemon = []
    while offset < total_requested_pokemon do
      pokemon_response = Typhoeus.get("http://pokeapi.co/api/v2/pokemon/?limit=#{max_per_page}&offset=#{offset}")
      pokemon_json_data = pokemon_response.body
      @pokemon_data = JSON.parse(pokemon_json_data)
      @pokemon.concat(@pokemon_data["results"])

      offset += 15
    end



    if request.xhr?
      # do ajax stuff
      render json: @pokemon
    else
      # do regular stuff
      render :index
    end



  end

  def weather_endpoint
    stuff = Typhoeus.get("weather/site")
    render json: stuff
  end

  def get_pokemon(num_wanted)
    # code should really go in here to retrieve list of pokemon!

  end
end
