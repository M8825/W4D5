def first_anagram?(str1, str2)

   perms = str1.split("").permutation
   

   perms.include?(str2.split(""))

end

str1 = "mei"
str2 = "emi"

p first_anagram?(str1, str2)

def second_anagram?(str1, str2)
   str2 = str2.split("")

   str1.each_char do |char|
      str2_idx = str2.find_index(char)
      str2.delete_at(str2_idx) if !str2_idx.nil?
   end

   str2.empty?

end
str1 = "mei"
str2 = "emj"

p second_anagram?(str1, str2)


def third_anagram?(str1, str2)
   str1.split("").sort == str2.split("").sort
end

str1 = "mei"
str2 = "emi"

p third_anagram?(str1, str2)


def fourth_anagram?(str1, str2)
   return false if str1.length != str2.length
   hash = Hash.new(0)

   (0...str1.length).each do |i| 
      hash[str1[i]] += 1
      hash[str2[i]] -= 1
   end

   hash.each { |k, v| return false if v != 0 }
   true
end

str1 = "mei"
str2 = "emj"

p fourth_anagram?(str1, str2)

