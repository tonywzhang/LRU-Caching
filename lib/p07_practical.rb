require_relative 'p05_hash_map'

def can_string_be_palindrome?(string)
  letter_hash = Hash.new{|h,k| h[k] = 0}
  string.split("").each do |letter|
    letter_hash[letter] += 1
  end

  !(letter_hash.values.count(1) > 1)
end
