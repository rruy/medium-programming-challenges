def reduce(word, index, letter)
  word[index] = letter
  word.slice!(index + 1)
  word
end

def StringReduction(str)
  swap = false
  index = 0

  loop do
    while index < str.length - 1
      swap = false

      if str[index] == str[index + 1]
        index += 1
      else
        if str[index] == 'a'
          if str[index + 1] == 'b'
            str = reduce(str, index, 'c')
            index += 1
          elsif str[index + 1] == 'c'
            str = reduce(str, index, 'b')
            index += 1
          end
          swap = true
        elsif str[index] == 'b'
          if str[index + 1] == 'a'
            str = reduce(str, index, 'c')
            index += 1
          elsif str[index + 1] == 'c'
            str = reduce(str, index, 'a')
            index += 1
          end
          swap = true
        elsif str[index] == 'c'
          if str[index + 1] == 'a'
            str = reduce(str, index, 'b')
            index += 1
          elsif str[index + 1] == 'b'
            str = reduce(str, index, 'a')
            index += 1
          end
          swap = true
        end
      end
    end

    break unless swap

    if str.length == 1
      swap = false
    end

    index = 0
  end

  str.length
end

# Test cases
puts StringReduction("cab")    # Output: 2
puts StringReduction("bcab")   # Output: 1
puts StringReduction("abcabc") # Output: 2
puts StringReduction("cccc")   # Output: 4
