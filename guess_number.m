answer = [0 0 0 0];
number_table = [0 0 0 0];
message = 'set answer number: ';

while true
    
    x = input(message);

    %seperate the number individually
    for i = 4:-1:1
        answer(i) = mod(x,10);
        x = fix(x/10);
    end

    %check is there any same number
    same_number = 0;
    for i=1:4
        temp = answer(i);
        if i<4 && same_number==0
            for j = i+1:4
                if temp==answer(j)
                    same_number = 1;
                    fprintf('Your input has same number.\n');
                    fprintf('Please input again.\n');
                    break;
                end
            end
        else
            break;
        end
    end

    if same_number==0
        break;
    end
end


%start guessing
guess = [0 0 0 0];
check = ['c' 'c' 'c' 'c'];

while ~isequal(check,['a' 'a' 'a' 'a'])
    
    x = input('Your guess is:');
    
    %seperate the number individually
    for i = 4:-1:1
        guess(i) = mod(x,10);
        x = fix(x/10);
    end
    
    same_number = 0;
    
    %check is there same number
    for i=1:4
        temp = guess(i);
        if i<4 && same_number==0
            for j = i+1:4
                if temp==guess(j)
                    same_number = 1;
                    fprintf('Your input has same number.\n');
                    fprintf('Please input again.\n\n');
                    break;
                end
            end
        else
            break;
        end
    end
    
    if same_number==0
        %compare his input with answer
        for i=1:4
            if guess(i)==answer(i)
                check(i) = 'a';
            else
                for j=1:4
                    if guess(i)==answer(j) && i~=j
                        check(i) = 'b';
                        break;
                    else
                        check(i) = 'c';
                    end
                end

            end
       
        end

        fprintf('compare solusion:');
        for i = 1:4
            fprintf('%c',check(i));
        end
        fprintf('\n\n');
    end

end

    fprintf('Bingo!! Congratualation\n');

    