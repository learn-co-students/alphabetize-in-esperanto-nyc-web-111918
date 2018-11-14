require 'pry'

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(expressions)
  expressions.sort_by{|expression| expression.chars.map{|char| ESPERANTO_ALPHABET.index(char)}}
end
