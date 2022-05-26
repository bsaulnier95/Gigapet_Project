require_relative 'dragon'
require_relative 'reaction'
require 'time'
require 'tod'
require 'tod/core_extensions'
require 'byebug'
class StartGame
  include Reaction
  attr_reader :dragon, :start_time

  def initialize
    @dragon = Dragon.new
    @start_time = Time.now.to_time_of_day
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
    hunger_increase
    exit if @user_input == 'Quit'
  end

  def feed_time
    Time.now.to_time_of_day unless @user_input != 'Feed'
  end

  def hunger_increase
    if (@start_time.to_i - feed_time.to_i) > 120
      @dragon.hunger += 1
    elsif feed_time.to_i.nil? && @start_time.to_i > 120
      @dragon.hunger += 1
    end
  end
end