module Reaction
  def feed_response
    if @user_input == 'Feed'
      if @dragon.hunger > 1
        @dragon.hunger -= 1
        print 'Mmmmmmm, thanks for the people parts!'
      else
        print 'I\'m full already!'
      end
    end
    print "\n"
  end

  def sleep_response
    if @user_input == 'Sleep'
      if @dragon.energy < 10
        @dragon.energy += 1
        print 'Zzz....'
      else
        print "I'm not tired!"
      end
    end
    print "\n"
  end

  def affection_response
    if @user_input == 'Pet'
      if @dragon.affection < 10
        @dragon.affection += 1
        print "Oh yea, that's the spot."
      else
        print "I'm all loved the love up!"
      end
    end
    print "\n"
  end

  def fun_response
    if @user_input == 'Play'
      if @dragon.fun < 10
        @dragon.fun += 1
        print 'Weee!'
      else
        print 'I need a break!'
      end
    end
    print "\n"
  end
end
