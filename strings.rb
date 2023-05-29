
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    result = {}
    lowered_string = string.downcase
    input_string = lowered_string.split(" ")
    dictionary.each do |word|
        result[word] = lowered_string.scan(word).length if lowered_string.include?(word)
    end
    puts result
    puts input_string.inspect
end

substrings("BELOW BELOW DOWN HORN",dictionary)