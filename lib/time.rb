module InreaseHunger

  def start_time
    Time.now
  end

  def end_time
    Time.now
  end

  def increase_hunger
    if @user_input != 'feed' && end_time - start_time > 120
      @dragon.hunger += 1
    end
  end
end
