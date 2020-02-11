class Network
  attr_reader :name, :shows

  def initialize name
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_characters = []
    @shows.each do |show|
      show.characters.each do |character|
        if character.name == character.name.upcase &&
        character.salary > 500000
          main_characters << character
        end
      end
    end
    main_characters
  end

  def actors_by_show
    @shows.reduce({}) do |actors, show|
      actors.update(show=>show.characters.map{|character| character.actor})
    end
  end
end
