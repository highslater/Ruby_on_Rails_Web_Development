 class LineAnalyzer
  attr_reader :words_count, :highest_wf_count, :highest_wf_words, :content, :line_number

  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency()
  end

  def calculate_word_frequency()
    words = @content.split(' ')
    @highest_wf_count = 0
    @highest_wf_words = Hash.new(0)
    words.each {|word| @highest_wf_words[word.downcase] += 1}
    val = @highest_wf_words.values.max
    @highest_wf_words.select! {|k, v| v == val}
    @highest_wf_count = @highest_wf_words.values.max       
  end
end

=begin

first_array = []
first_array << [1, "this"]
first_array << [2, "is"]
first_array << [3, "an"]
first_array << [4, "array"]
first_array << [4, "example"]
first_array
[[1, "this"], [2, "is"], [3, "an"], [4, "array"], [4, "example"]]
second_array = first_array.select {|a| a[0] == 4}
second_array
[[4, "array"], [4, "example"]]
third_array = []
first_array.select {|a| a[0] == 4}.each { |c| third_array << c[1]}
third_array
["array", "example"]

=end


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