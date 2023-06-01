compatibilityMatrix = [
    5 4 3 2 1;
    4 5 2 3 1;
    3 2 5 4 1;
    2 3 4 5 1;
    1 1 1 1 5
];

function score = calculateCollaborationScore(compatibilityMatrix)
    n = size(compatibilityMatrix, 1);
    score = zeros(n, 1);
    for i = 1:n
        for j = 1:n
            if i ~= j
                score(i) = score(i) + compatibilityMatrix(i, j);
            end
        end
    end
end

function displayCollaborationLevels(score)
    n = numel(score);
    for i = 1:n
        fprintf('Team member %d: Collaboration level %d\n', i, score(i));
    end
end

collaborationScore = calculateCollaborationScore(compatibilityMatrix);

displayCollaborationLevels(collaborationScore);
