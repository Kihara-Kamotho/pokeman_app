# rubocop:disable Style/Documentation
# frozen_string_literal: true

require 'json'
class PokemonController < ApplicationController
  def index
    pokemon = params[:pokemon]
    conn = Faraday.new('https://pokeapi.co/api/v2/')
    response = conn.get("pokemon-form/#{pokemon}")
    data = JSON.parse(response.body, symbolize_names: true)
    @pokemon = PokemonPoro.new(data)
    # binding.irb
    # require 'pry'; binding.pry
  end
end

# rubocop:enable Style/Documentation
