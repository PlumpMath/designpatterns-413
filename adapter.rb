class PalGame
  def play
    puts "PAL game playing!"
  end
end

class NtscGame
  def run
    puts "NTSC game running!"
  end
end

pal = PalGame.new
ntsc = NtscGame.new

class PalConsole
  def play_game(game)
    game.play
  end
end

console = PalConsole.new
console.play_game(pal)
# console.play_game(ntsc)

class Adapter
  attr_accessor :game
  def initialize(game)
    @game = game
  end
  def play
    @game.run
  end
end

adapter = Adapter.new(ntsc)
console.play_game(adapter)
