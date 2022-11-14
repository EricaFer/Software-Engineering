class String
    def palindrome?
        self.scan(/\w+/).join.downcase.reverse == self.scan(/\w+/).join.downcase
    end
end

puts("foo".palindrome?)