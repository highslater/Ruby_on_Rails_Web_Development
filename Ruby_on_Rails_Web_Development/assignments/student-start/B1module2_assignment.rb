
class LineAnalyzer
  #Have to use splat operator somewhere
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number

  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency(@content, @line_number)
  end

  def calculate_word_frequency(content, line_number)
    words = content.split(' ')
    @highest_wf_count = Hash.new(0)
    @highest_wf_words = []
    words.each {|word| @highest_wf_count[word.downcase] += 1}
    @highest_wf_words = @highest_wf_count.values.max
    #return @highest_wf_words
  end
end
    
 class Solution
#   attr_reader :analyzers, :highest_count_accross_lines, :highest_count_words_across_lines

#   def initialize()
#     @analyzer = []
#     @highest_count_across_lines = []
#     @highest_count_words_across_lines = []
#   end

#   def analyze_file()
#     #* Read the 'test.txt' file in lines 
#    # File.foreach( 'test.txt' ) do |line|
#       #* Create an array of LineAnalyzers for each line in the file
#       #@analyzer << (LineAnalyzer.new(line, 0))
#     #end
#   end

#   def calculate_line_with_highest_frequency()
#     #* calculate the maximum value for highest_wf_count contained by the LineAnalyzer objects in analyzers array and stores this result in the highest_count_across_lines attribute.
#     #* identifies the LineAnalyzer objects in the analyzers array that have highest_wf_count equal to highest_count_across_lines attribute value determined previously and stores them in highest_count_words_across_lines.
#   end

#   def print_highest_word_frequency_across_lines()
#     #* print the values of objects in highest_count_words_across_lines in the specified format
#   end 
 end


# anObj = LineAnalyzer.new("I have a string I like it I am confused", 0)

# puts anObj.calculate_word_frequency("I have a string I like it I an confused", 0)
