class LineAnalyzer
  
  attr_reader
  :words_count, :highest_wf_count,
  :highest_wf_words, :content, :line_number

  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency()
  end

  def calculate_word_frequency()
    words = @content.split(' ')
    @highest_wf_count = Hash.new(0)
    @highest_wf_words = []
    words.each {|word| @highest_wf_count[word.downcase] += 1}
    val = @highest_wf_count.values.max
    @highest_wf_count.select {|k, v| v == val}.keys.each {|k| @highest_wf_words << k}
    @highest_wf_count = @highest_wf_count.values.max       
  end

end

## Debuggung Code ##

a = LineAnalyzer.new("This is a really really really cool cool you you you" ,2)
puts
puts "Line number: #{a.line_number}"
puts "Content: #{a.content}"
puts "highest_wf_count #{a.highest_wf_count}"
puts "highest_wf_words #{a.highest_wf_words}"
puts

## Debugging Code ##

=begin

$ ruby module2_assignment.rb

line number: 2
Content: This is a really really really cool cool you you you
highest_wf_count 3
highest_wf_words ["really", "you"]

=end