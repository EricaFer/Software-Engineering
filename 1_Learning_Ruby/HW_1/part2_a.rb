class WrongNumberOfPlayersError < StandardError ; end

class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)

    raise WrongNumberOfPlayersError unless game.length == 2
    
    gameHash = Hash.new

    verifier = {
        'P' => 'R',
        'R' => 'S',
        'S' => 'P'
    }

    game.each{|list|
        gameHash[list[0]] = list[1].upcase
    }
    
    plays = gameHash.values
    player = gameHash.keys

    plays.each{|play|
        raise NoSuchStrategyError unless play.match /^P|^S|^R/
    }

    if plays[0] == plays[1]
        return game[0]

    elsif plays[0] == verifier[plays[1]]
        return game[1]
    else
        return game[0]
    
   end
    
end

print(rps_game_winner([ ["Kristen", "P"], ["Dave", "S"] ]))