=begin
(b) A rock, paper, scissors tournament is encoded as a bracketed array of games - that is, each 
element can be considered its own tournament
=end

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

def rps_tournament_winner(games)

    while (games.length > 1) do 

        playsOut = Array.new

        games.each{|layer1|
            playsIn = Array.new

            layer1.each{ |layer2|

                if layer2.length == 2

                    playsIn.push(rps_game_winner(layer2))

                else

                    flat = games.flatten!()

                    return rps_game_winner([flat[0,2],flat[2,4]])

                end
                
            }

            playsOut.push([playsIn])

        }

        games = playsOut

    end
end


