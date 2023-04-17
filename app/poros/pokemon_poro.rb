# should be decoupled from the other code 
# should encapsulate code
# usually created with a DS, usually a hash

class PokemonPoro # rubocop:disable Style/Documentation

  attr_reader :name, :number, :image

  def initialize(data)
    @name = data[:name].capitalize
    @number = data[:id]
    @image = data[:sprites][:front_default]
  end
end
