# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/halloween-sale/copy-from/1327550049
# Halloween Sale Solution from Hackerrank

def howManyGames(p, d, m, s)
    money_spent = 0;
    game_price = p;
    counter= 0;
    while money_spent <= s do
        money_spent += game_price
        counter = money_spent <= s ? counter+1 : counter
        if(game_price >= m)
            game_price = game_price - d >= m ? game_price - d : m
        end
    end
    return counter
end