# frozen_string_literal: true

class PokeService # rubocop:disable Style/Documentation
  class << self
    def call_a_pokemon(pokemon)
      response = conn.get("pokemon-form/#{pokemon}")
      parse_data(response)
    end

    private

    def conn
      Faraday.new('https://pokeapi.co/api/v2/')
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
