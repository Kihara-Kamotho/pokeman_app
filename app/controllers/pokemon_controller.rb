# rubocop:disable Style/Documentation
# frozen_string_literal: true

require 'json'
class PokemonController < ApplicationController
  def index
    pokemon = params[:pokemon]
    @pokemon = PokemonFacade.get_a_pokemon(pokemon)
    # binding.irb
    # require 'pry'; binding.pry
  end
end

# rubocop:enable Style/Documentation
