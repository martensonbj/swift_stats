require 'minitest/autorun'
require 'minitest/pride'
require './lib/swift_lyrics'

class SwiftLyricsTest < Minitest::Test

  # Input a text file
  # Sanitize the lyrics
      #
  # Count the number of uniq lyrics

  #BONUS
  # Create a Hash that stores the word and how often its used
  # Return top words used
  # Strip out A An And and The in this part

  def setup
    @swift = SwiftLyrics.new("./fixtures/lyrics_sample.txt")
  end

  def test_it_sanitizes_text
    assert_equal ["myself", "can't", "help", "myself", "i", "can't", "help", "myself"], @swift.sanitize_text
  end


  def test_it_counts_uniq_words
    assert_equal 4, @swift.find_uniq_words(["myself", "can't", "help", "myself", "i", "can't", "help", "myself"])
  end

  def test_it_counts_frequency_of_uniq_words
    assert_equal({"myself" => 3, "can't" => 2, "help"=>2, "i"=>1}, @swift.word_frequency)
  end

end
