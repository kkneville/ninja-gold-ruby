module RpgHelper


def getgold(place)

      session[:results] ||= []  
      session[:gold] ||= 0


      if place == "cave"
        gold = rand(5..10)
        session[:gold] += gold
        session[:results] << "You won #{gold} golds at the cave. #{ (Time.now) }"
        return redirect_to "/rpg/index"
      end 

      if place == "farm"
        gold = rand(10..20)
        session[:gold] += gold
        session[:results] << "You won #{gold} golds at the farm. #{ (Time.now) }"
        return redirect_to "/rpg/index"
      end

      if place == "house"
        gold = rand(25..50)
        session[:gold] += gold
        session[:results] << "You won #{gold} golds at the house. #{ (Time.now) }"
        return redirect_to "/rpg/index"
      end 

      if place == "casino"
      gold = rand(-100..100)  
        if gold < 0
          session[:gold] += gold
          session[:results] << "You lost #{gold} golds at the casino. Gambling is stupid. #{ (Time.now) }"
          return redirect_to "/rpg/index"
        else 
          session[:gold] += gold
          session[:results] << "You won #{gold} golds at the casino. Gambling is stupid. #{ (Time.now) }"
          return redirect_to "/rpg/index"
        end
      end  
  end

end

