require "./lib/monster_maker.rb"

g = Game.new("Hero", "OXPOOOOOOXOOOOOB")

puts "You are the great hero #{g.player.name}."
puts "Your stats are:"
puts "Strength: #{g.player.strength} | Constitution: #{g.player.constitution} | Intelligence: #{g.player.intelligence}"

loop do
  g.dungeon.map.split("").each_with_index do |room, i|
    if (i+1) % 4 == 0
      puts room
    else
      print room
    end
  end

  puts "Travel N, S, E, or W?"
  input = gets.chomp
  g.dungeon.travel(input)

  puts g.dungeon.player_location
  puts g.dungeon.map

end


