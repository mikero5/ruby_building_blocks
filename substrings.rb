# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
# 
#   > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }
# Next, make sure your method can handle multiple words:
# 
#   > substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }
# Quick Tips:
# 
# Recall how to turn strings into arrays and arrays into strings.

def substrings(word, dictionary)
  test_word = word.downcase;
  retval = {};

  dictionary.map! {|w|
    w.downcase
  }

  dictionary.each{|w|
    if test_word.include? w
      if retval[w] == nil
        retval[w] = 1;
      else
        retval[w] += 1;
      end
    end
  }

  p dictionary
  puts test_word;
  retval
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
