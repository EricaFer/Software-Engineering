=begin
(b) Given a string of input, return a hash whose keys are words in the string and whose values 
are the number of times each word appears. Don't use for-loops. (But iterators like each are 
permitted.) Nonwords should be ignored. Case shouldn't matter. A word is defined as a string 
of characters between word boundaries. 
=end

#def count_words(string)
#    formatted =  string.scan(/\w+/).downcase
#
#    formatted.each_pair do |key,val| 
#end


def count_words(string)

    hash = Hash.new
    
    formatted =  string.scan(/\w+/)
    
    formatted.each{|string| 
    
        lower = string.downcase
    
        if hash.key?(lower)
            hash[lower] = hash[lower] + 1
        else
            hash[lower] = 1
       end
    }

    return hash
end

print(count_words("Doo bee doo bee doo")) 