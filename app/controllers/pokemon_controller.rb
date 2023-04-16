# frozen_string_literal: true

require 'json'
class PokemonController < ApplicationController
  def index
    conn = Faraday.new('https://pokeapi.co/')
    response = conn.get('/api/v2/pokemon-form/150')
    @pokemon = JSON.parse(response.body, symbolize_names: true)
    binding.irb
  end
end
