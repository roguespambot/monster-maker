class Game
  attr_reader :player, :dungeon

  def initialize(name, game_map)
    # game_map is a string with O's where you can move,
    # and X's where you can't.  P is player (spawn point
    # in opening board. B for end point.

    @dungeon = Dungeon.new(game_map)
    @player = Player.new(name)
  end
end

class Monster
  attr_reader :name, :hit_points

  def initialize(name, hit_points)
    @name = name
    @hit_points = hit_points
  end

end

class Player
  attr_reader :name, :strength, :constitution, :intelligence

 def initialize(name)
    @name = name
    @strength = (3..19).to_a.sample
    @constitution = (3..19).to_a.sample
    @intelligence = (3..19).to_a.sample
  end
end

class Dungeon
  attr_reader :map

  def initialize(game_map)
    @map = game_map

    #location = player_location
    # @directions = {"N" => @map[location - 4] == "O",
    #                "E" => @map[location + 1] == "O",
    #                "S" => @map[location + 4] == "O",
    #                "W" => @map[location - 1] == "O"}
  end

  def player_location
    @map.index('P')
  end

  def travel(direction)
    location = self.player_location

    if direction == "N" && @map[location - 4] != "X"
      @map[location - 4] = "P"
      @map[location] = "O"
    elsif direction == "S" && @map[location + 4] != "X"
      @map[location + 4] = "P"
      @map[location] = "O"
    elsif direction == "W" && @map[location - 1] != "X"
      @map[location - 1] = "P"
      @map[location] = "O"
    elsif direction == "E" && @map[location + 1] != "X"
      @map[location + 1] = "P"
      @map[location] = "O"
    else
      puts "no"
    end
  end

end

class Room
  def initialize(description)
    @description = description
  end
end

