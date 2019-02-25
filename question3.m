rng default;

p1Score = 0;
p1Heads = 0;
p1Tails = 0;

p2Score = 0;
p2Heads = 0;
p2Tails = 0;

for i = 1 : 1000000
    if p1Heads ~= 0 && p1Tails ~= 0
        play1 = player1(p2Heads, p2Tails);
        play2 = player2(p1Heads, p1Tails);
        
        if play1 == 1
            p1Heads = p1Heads + 1;
        else
            p1Tails = p1Tails + 1;
        end

        if play2 == 1
            p2Heads = p2Heads + 1;
        else
            p2Tails = p2Tails + 1;
        end

        if play1 == play2
            p1Score = p1Score + 1;
            p2Score = p2Score - 1;
        else
            p1Score = p1Score - 1;
            p2Score = p2Score + 1;
        end

    else
        %First run goes here
        r1 = rand;
        r2 = rand;
        if r1 < 0.5
            p1Heads = p1Heads + 1;
            if r2 < 0.5
                p2Heads = p2Heads + 1;
                p1Score = p1Score + 1;
                p2Score = p2Score - 1;
            else
                p2Tails = p2Tails + 1;
                p1Score = p1Score - 1;
                p2Score = p2Score + 1;
            end
        else
            p1Tails = p1Tails + 1;
            if r2 > 0.5
                p2Heads = p2Heads + 1;
                p1Score = p1Score + 1;
                p2Score = p2Score - 1;
            else
                p2Tails = p2Tails + 1;
                p1Score = p1Score - 1;
                p2Score = p2Score + 1;
            end
        end
    end
end

disp('Player 1 Strategy: ');
disp(p1Heads / (p1Heads + p1Tails));
disp(p1Tails / (p1Heads + p1Tails));
disp('Player 2 Strategy: ');
disp(p2Heads / (p2Heads + p2Tails));
disp(p2Tails / (p2Heads + p2Tails));


function output = player1(heads, tails)

    headStrategy = heads / (heads + tails);
    tailStrategy = tails / (heads + tails);

    if headStrategy > tailStrategy
        output = 1;
    elseif tailStrategy > headStrategy
        output = 2;
    else
        output = 1;
    end

end

function output = player2(heads, tails)

    headStrategy = heads / (heads + tails);
    tailStrategy = tails / (heads + tails);

    if headStrategy > tailStrategy
        output = 2;
    elseif tailStrategy > headStrategy
        output = 1;
    else
        output = 1;
    end

end