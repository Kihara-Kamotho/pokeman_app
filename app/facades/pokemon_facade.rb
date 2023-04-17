# frozen_string_literal: true

class PokemonFacade # rubocop:disable Style/Documentation
  class << self
    def get_a_pokemon(pokemon)
      data = PokeService.call_a_pokemon(pokemon)
      PokemonPoro.new(data)
    end
  end
end
