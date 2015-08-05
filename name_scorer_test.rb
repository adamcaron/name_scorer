require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './name_scorer'

class NameScorerTest < Minitest::Test

  def test_it_takes_a_list_of_names_and_sorts_it_alphabetically
    names = ["Troy", "Adam", "John"]

    name_scorer = NameScorer.new(names)

    assert_equal ["Adam", "John", "Troy"], name_scorer.sort
  end

  def test_it_works_out_the_alphabetical_value_for_a_name
    name = "Al"

    assert_equal 13, NameScorer.get_alphabetical_value_for_name(name)
  end

end

# Using names.txt (right click and 'Save Link/Target As…'),
# a 46K text file containing over five-thousand first names,


# Then working out the alphabetical value for each name,
# multiply this value by its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53,
# is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.



# What is the total of all the name scores in the file?

