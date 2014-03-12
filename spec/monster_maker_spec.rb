require "rspec"
require "./lib/monster_maker.rb"

describe "Game" do
  describe "initialize" do
    it "initializes the main Game object, with a player and dungeon" do
      test_game = Game.new("Hero")
      test_game.should be_an_instance_of Game
      test_game.player.should be_an_instance_of Player
      test_game.player.name.should eq "Hero"
      test_game.dungeon.should be_an_instance_of Dungeon
    end
  end
end

describe "Monster" do
  describe "initialize" do
    it "initializes a monster with name and hit points" do
      test_monster = Monster.new("Orc", 3)
      test_monster.should be_an_instance_of Monster
      test_monster.name.should eq "Orc"
      test_monster.hit_points.should eq 3
    end
  end
end

describe "Player" do
  describe "initialize" do
    it "initializes a player with a name and some RPG attributes" do
      test_player = Player.new("Hero Nakamura")
      test_player.should be_an_instance_of Player
      test_player.name.should eq "Hero Nakamura"
      test_player.strength.class.should eq Fixnum
    end
  end
end

describe "Dungeon" do
  describe "initialize" do
    it "initializes a dungeon" do
      test_dungeon = Dungeon.new()
      test_dungeon.should be_an_instance_of Dungeon
    end
  end
end

describe "Room" do
  describe "initialize" do
    it "initializes a room with a description" do
      test_room = Room.new("Entrance")
      test_room.should be_an_instance_of Room
    end
  end
end

