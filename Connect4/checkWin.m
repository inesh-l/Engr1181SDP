function gameWon = checkWin(board)
%Checks for game win
%   Goes over every row, column and diagonal, checking if the game is won.
    won = false;
    % COL WIN
    for i=1:1:7
        if won == true
            break;
        end
        streak = 0;
        startChip = 3;
        for j=7:-1:2
            if board(j,i) == startChip
                streak = streak + 1;
            else
                streak = 1;
                if startChip == 4
                    startChip = 3;
                elseif startChip == 3
                    startChip = 4;
                end
            end
            if streak == 4
                won = true;
                break;
            end
        end
    end
    % ROW WIN
    for i=2:1:7
        if won == true
            break;
        end
        streak = 0;
        startChip = 3;
        for j=1:6
            if board(i,j) == startChip
                streak = streak + 1;
            else
                streak = 1
                if startChip == 4
                    startChip = 3;
                elseif startChip == 3
                    startChip = 4;
                end
            end
            if streak == 4
                won = true;
                break;
            end
        end
    end
    % DIAG LR
    %start at row 5
    %subtract one from row, add one to column to iterate
    % go until row = 7
    % Switch to iterate column and then row
    % Start at column 2, row 7
    % Iterate by subtracting row, adding column
    % Go until column 4 is complete
    for i=5:7
        for j=1:i-1
            
        end
    end

    gameWon = won;
end