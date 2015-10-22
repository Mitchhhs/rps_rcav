class RpsController < ApplicationController

  def rps(move)
    @computer_move = ['Rock','Paper','Scissors'].sample
    comp_move=@computer_move
    @comp_link="/assets/images/"+comp_move.downcase+".png"

    if move==comp_move
      @result="Tie"

    elsif move=="Rock"
      if comp_move=="Scissors"
        @result="Win"
      else
        @result="Lose"
      end

    elsif move=="Scissors"
      if comp_move=="Paper"
        @result="Win"
      else
        @result="Lose"
      end

    else
      if comp_move=="Rock"
        @result="Win"
      else
        @result="Lose"
      end
    end
  end

  def rock
    @move='Rock'
    @link="/assets/images/rock.png"
    rps('Rock')
    render("rock.html.erb")

  end

  def paper
    @move='Paper'
    @link="/assets/images/paper.png"
    rps('Paper')
    render("paper.html.erb")

  end

  def scissors
    @move='Scissors'
    @link="/assets/images/scissors.png"
    rps('Scissors')
    render("scissors.html.erb")

  end

end
