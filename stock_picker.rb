# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
# 
#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12
# Quick Tips:
# 
# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.
#

def stock_picker(price_array)
  min_index = 0;
  max_index = 0;
  max_diff = 0;
  (0..price_array.length-1).each {|i|
    (i..price_array.length-1).each {|j|
      diff = price_array[j] - price_array[i];
      if diff > max_diff
        min_index = i;
        max_index = j;
        max_diff = diff;
      end
    }
  }

  [min_index, max_index];

end

p stock_picker([10,9,12,3,9,8]);
p stock_picker([17,3,6,9,15,8,6,1,10]);

