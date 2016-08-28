
class LineAnalyzer
  #Have to use splat operator somewhere
  # rewrite class LineAnalyzer with complete comments
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number

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
  attr_reader :analyzers, :highest_count_accross_lines, :highest_count_words_across_lines

  def initialize()
    @analyzer = []
    @highest_count_across_lines = []
    @highest_count_words_across_lines = []
  end

  def analyze_file()
    # creates 3 line analyzers (FAILED - 1)
    #* Read the 'test.txt' file in lines 
   # File.foreach( 'test.txt' ) do |line|
      #* Create an array of LineAnalyzers for each line in the file
      #@analyzer << (LineAnalyzer.new(line, 0))
    #end
  end

  def calculate_line_with_highest_frequency()
    # calculates highest count across lines to be 4 (FAILED - 2)
    # calculates highest count words across lines to be will, it, really (FAILED - 3)
    #* calculate the maximum value for highest_wf_count contained by the LineAnalyzer objects in analyzers array and stores this result in the highest_count_across_lines attribute.
    #* identifies the LineAnalyzer objects in the analyzers array that have highest_wf_count equal to highest_count_across_lines attribute value determined previously and stores them in highest_count_words_across_lines.
  end

  def print_highest_word_frequency_across_lines()
    #* print the values of objects in highest_count_words_across_lines in the specified format
  end 
 end