require 'pry'

ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
def alphabetize(arr)
  alpha_hsh = {}
  ALPHABET.chars.each.with_index { |char, idx| alpha_hsh[char] = idx }

  arr.each.with_index do |word,idx1|
    arr.each.with_index do |word, idx2|
      next if idx1 == idx2

      i = 0
      if alpha_hsh[arr[idx1][i]] == alpha_hsh[arr[idx2][i]]
        i+=1 while alpha_hsh[arr[idx1][i]] == alpha_hsh[arr[idx2][i]]
      end

      if alpha_hsh[arr[idx1][i]] < alpha_hsh[arr[idx2][i]]
        arr[idx1], arr[idx2] = arr[idx2], arr[idx1]
      end

    end
  end
  arr
end
