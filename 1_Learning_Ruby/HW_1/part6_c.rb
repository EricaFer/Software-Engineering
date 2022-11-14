=begin
c) Adapt your palindrome solution so that it works on Enumerables. That is:
[1,2,3,2,1].palindrome? # => true
(It's not necessary for the collection's elements to be palindromes themselves--only that the top
level collection be a palindrome.) HINT: this should require fewer than 5 lines of 
code. Although hashes are considered Enumerables, your solution does not need to make 
sense for hashes (though it should not error).
=end

module Enumerable
    def palindrome?
        self.to_a.reverse! == self.to_a
    end
end 

puts([1,2,3,2,1].palindrome?)