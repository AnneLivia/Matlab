function distance = get_distance(city1, city2)
    distance = -1;
    [num, txt, raw] = xlsread('Distances.xlsx');
    lineC1 = -1;
    lineC2 = -1;
    for row = 2:length(txt)
        if (strcmpi(txt{row, 1}, city1))
            lineC1 = row;
        end
        
        if (strcmpi(txt{1, row}, city2))
            lineC2 = row;
        end
    end
    if (~(lineC1 == -1 || lineC2 == -1))
        distance = raw{lineC1, lineC2};
end

% distance = get_distance('Seattle, WA','Miami, FL')