ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  # code here
  # call the sort_by method on arr, passing each sentence into the block.
  # sorts the sentences numerically once they are transformed into index integers of Esperanto.
  # if the first integer of the second sentence is less than the first integer of the first sentence,
  # the second sentence becomes the first sentence in our arr and so on.
  # then sort_by maps the original values and returns a sorted array.
  arr.sort_by do |sentence|
    # split each sentence in an arr of letters and spaces and
    # map a new value from the code block onto each element of the arr
    sentence.split("").map do |character|
      # identifies the index of each character as it occurs in Esperanto
      ESPERANTO_ALPHABET.index(character)
    end
  end
end
