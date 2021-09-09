function ok = palindrome(txt)
  if length(txt) <= 1                 % if it is empty or has just one char,
    ok = true;                        % it is a palindrome. Base case.
  else                                %    else
    ok = (txt(1) == txt(end) & ...    % the first and last digits must be the same, and
          palindrome(txt(2:end-1)));  % what's in the middle must be a palindrome too
  end                     
end
