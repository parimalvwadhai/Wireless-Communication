clc
clear all
close all

a1 = round(rand(1,9));

while 1
  temp = arr2();
  cnt = 0;
  for i = 1:9
    row_sum = 0;
    for j = 1:3
      row_sum = row_sum + temp(j, i);
    end
    if row_sum > 0
      cnt = cnt + 1;
    end
  end
  % Moved display statement outside the if block
  display(temp);

  if cnt == 9
    displayTambola(temp);  % Call the function to display Tambola ticket
    break;
  end
end

function dp = arr2()
  dp = zeros(3, 9);
  for i = 1:3
    dp(i, :) = arr1();
  end
  % display(dp);  % Commented out to avoid unnecessary display
end

function a1 = arr1()
  while 1
    a1 = round(rand(1, 9));
    if sum(a1) == 5
      break
    end
  end
end

% New function to display Tambola ticket
function displayTambola(matrix)
  [rows, cols] = size(matrix);
  for i = 1:rows
    for j = 1:cols
      if matrix(i, j) == 1
        fprintf('%2d ', (j-1)*10 + randi([1, 9]));  % Generate random number within column range
      else
        fprintf('   ');  % Three spaces for blank cell
      end
    end
    fprintf('\n');
  end
end
