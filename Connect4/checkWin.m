function [gameWon, gameWinner] = checkWin(board)
%Checks for game win
%   Goes over every row, column and diagonal, checking if the game is won.
    won = false;
    winner = 0;
    % COL WIN
    for i=1:1:7
        if won == true
            break;
        end
        streak = 0;
        startChip = 3;
        for j=7:-1:2
            if board(j,i) == startChip
                streak = streak + 1
            else
                streak = 1;
                if board(j,i) == 3
                    startChip = 3;
                elseif board(j,i) == 4
                    startChip = 4;
                end
            end
            if streak == 4
                won = true;
                winner = startChip;
                break;
            end
        end
    end
    % ROW WIN
    for i=7:-1:2
        if won == true
            break;
        end
        streak = 0;
        startChip = 3;
        for j=1:7
            if board(i,j) == startChip
                streak = streak + 1;
            else
                streak = 1;
                if board(i,j) == 3
                    startChip = 3;
                elseif board(i,j) == 4
                    startChip = 4;
                end
            end
            if streak == 4
                won = true;
                winner = startChip;
                break;
            end
        end
    end
    % DIAG LR
    for i=5:7
        if won == true
            break;
        end
        streak = 0;
        startChip = 3;

        for j=1:i-1
            if board(i-(j-1),j) == startChip
                streak = streak + 1;
            else
                streak = 1;
                if board(i-(j-1),j) == 3
                    startChip = 3;
                elseif board(i-(j-1),j) == 4
                    startChip = 4;
                end
            end
            if streak == 4
                won = true;
                winner = startChip;
                break;
            end
        end
    end
    for i=2:4
        if won == true
            break;
        end
        streak = 0;
        startChip = 3;
        for j=i:7
            if board(7-(j-i), j) == startChip
                streak = streak + 1;
            else
                streak = 1;
                if board(7-(j-i), j) == 3
                    startChip = 3;
                elseif board(7-(j-i), j) == 4
                    startChip = 4;
                end
            end
            if streak == 4
                winner = startChip;
                won = true;
                break;
            end
        end
    end
    % DIAG RL
    for i=5:7
        if won == true
            break;
        end
        streak = 0;
        startChip = 3;

        for j=1:i-1
            if board(i-(j-1),8-j) == startChip
                streak = streak + 1;
            else
                streak = 1;
                if board(i-(j-1),8-j) == 3
                    startChip = 3;
                elseif board(i-(j-1),8-j) == 4
                    startChip = 4;
                end
            end
            if streak == 4
                won = true;
                winner = startChip;
                break;
            end
        end
    end
    for i=2:4
        if won == true
            break;
        end
        streak = 0;
        startChip = 3;
        for j=i:7
            if board(7-(j-i), 8-j) == startChip
                streak = streak + 1;
            else
                streak = 1;
                if board(7-(j-i), 8-j) == 3
                    startChip = 3;
                elseif board(7-(j-i), 8-j) == 4
                    startChip = 4;
                end
            end
            if streak == 4
                won = true;
                winner = startChip;
                break;
            end
        end
    end
    gameWon = won;
    gameWinner = winner;
end