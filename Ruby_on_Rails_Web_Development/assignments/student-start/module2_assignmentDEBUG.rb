

class LineAnalyzer
  attr_reader :highest_wf_count,:highest_wf_words,:content,:line_number

  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency()
  end

  def calculate_word_frequency()
    words = @content.split(' ')
    @highest_wf_count = []
    @highest_wf_words = Hash.new(0)
    words.each {|word| @highest_wf_words[word.downcase] += 1}
    @highest_wf_count = @highest_wf_words.values.max
  end
end

    
 class Solution
  attr_reader :analyzers,:highest_count_accross_lines,:highest_count_words_across_lines
  def initialize()
    @analyzers = []
    @highest_count_across_lines = []
    @highest_count_words_across_lines = [] 
  end

  def analyze_file()
    ln = 0
    if File.exist? 'test.txt'
      File.foreach( 'test.txt' ) do |line|
        @analyzers << (LineAnalyzer.new(line,ln))
        ln += 1
      end
    end

  end

  def calculate_line_with_highest_frequency()
    p @analyzers
  end

  def print_highest_word_frequency_across_lines()  
  end 
 end

a = Solution.new()
a.analyze_file

