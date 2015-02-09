require 'singleton'

class God
  include Singleton

  # def initialize(name)
  #   @name = name
  # end

  NAME = "Zeus"

  def speak
    puts "I am #{@name}"
  end

end

# zeus = God.new("Zeus")
# zeus.speak
zeus = God.instance
puts zeus

# apollo = God.new("Apollo")
# apollo.speak
apollo = God.instance
puts apollo
