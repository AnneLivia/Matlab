function valid = valid_date(year, month, day)
    if ~isscalar(year) || ~isscalar(month) || ~isscalar(day)
        valid = false
    elseif year < 0 || month < 0 || day < 0
        valid = false;
    else
        if month > 12 || month < 1
            valid = false;
        elseif month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
             if day >= 1 && day <= 31
                 valid = true;
             else
                 valid = false;
             end
        elseif month == 2
             if (mod(year, 4) == 0 && mod(year, 100) ~= 0) || mod(year, 400) == 0
                 if day >= 1 && day <= 29
                    valid = true;
                 else
                    valid = false;
                 end
             else
                 if day >= 1 && day <= 28 
                    valid = true;
                 else
                    valid = false;
                 end
             end
        else
            if day >= 1 && day <= 30
                valid = true;
            else
                valid = false;
            end
        end
    end 
end