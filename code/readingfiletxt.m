function charnum = char_counter(fname, chaar)
    charnum = 0;
    file = fopen(fname, 'rt');
    if file < 0 || ~ischar(chaar)
        charnum = -1;
    else
        line = fgets(file);
        while ischar(line)
            charnum = charnum + sum(line == chaar);
            line = fgets(file);
        end
        fclose(file);
    end
end

%charnum = char_counter('Frankenstein-by-Shelley.txt','?')