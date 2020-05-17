function f = taxi_fare(distance, time)
    distance = ceil(distance);
    time = ceil(time);
    f = 5 + ((distance - 1) * 2) + (time * 0.25);
end

% fare  = taxi_fare(3.5, 2.25);