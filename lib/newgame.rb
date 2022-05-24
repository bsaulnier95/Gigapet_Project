require_relative 'dragon'
require_relative 'reaction'
require 'byebug'
class StartGame
  include Reaction
  attr_reader :dragon

  def initialize
    @dragon = Dragon.new
  end

  def game
    loop do
      welcome
      user_input
      break if @user_input == 'Quit'
    end
  end

  def welcome
    print "Here is the current state of your Dragon:\n"
    print "Hunger: #{@dragon.hunger} \n"
    print "Energy: #{@dragon.energy} \n"
    print "Fun: #{@dragon.fun} \n"
    print "Affection: #{@dragon.affection} \n"
    print "Mood Report: #{@dragon.mood}\n"
    print "\n"
    sleep(2)
  end

  def user_input
    print "How would you like to interact with your dragon?\n"
    print "Feed, Sleep, Play, Pet, or Quit\n"
    print "Input:\n"
    @user_input = gets.capitalize.chomp
    print "\n"
    feed_response
    sleep_response
    affection_response
    fun_response
    exit if @user_input == 'Quit'
  end
end
