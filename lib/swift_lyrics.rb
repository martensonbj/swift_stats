require 'pry'

class SwiftLyrics

  attr_reader :lyrics

  def initialize(path)
    @lyrics = File.read(path)
  end

  def sanitize_text
    lyrics.gsub("\n", " ").downcase.split(" ")
  end

  def find_uniq_words(sanitize_text)
    sanitize_text.uniq.length
  end

  def word_frequency
    word_frequency_data = {}
    sanitize_text.uniq.map do |word|
      word_frequency_data[word] = sanitize_text.count(word)
    end
    word_frequency_data
  end

end
