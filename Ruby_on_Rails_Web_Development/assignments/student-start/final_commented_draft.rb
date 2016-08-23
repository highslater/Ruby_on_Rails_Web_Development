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

## Debuggung Code ##

a = LineAnalyzer.new("This This This Is Is content" ,0)
puts "Line number: #{a.line_number}"
puts "Content: #{a.content}"
puts "highest_wf_words #{a.highest_wf_words}"
puts "highest_wf_count #{a.highest_wf_count}"

## Debugging Code ##