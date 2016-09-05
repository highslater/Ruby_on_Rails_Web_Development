class LineAnalyzer
  attr_reader :highest_wf_count,
              :highest_wf_words,
              :content,
              :line_number 

  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency
  end

  def calculate_word_frequency()
    word_frequency = Hash.new(0)
    words = @content.downcase.split(' ')
    @highest_wf_words = Hash.new(0)
    words.each {|word| word_frequency[word] += 1}
    @highest_wf_count = word_frequency.values.max
    @highest_wf_words.select! {|k, v| v == @highest_wf_count}
    @highest_wf_words = @highest_wf_words.to_a
    word_frequency.each do |k,v|
      @highest_wf_words << k if @highest_wf_count == v
    end
  end
end

class Solution
  attr_reader :analyzers,
              :highest_count_across_lines,
              :highest_count_words_across_lines

  def initialize
    @analyzers = []
  end

  def analyze_file()
    line_number = 0
    if File.exist? 'test.txt'
      File.foreach( 'test.txt') do |line|
        @analyzers << LineAnalyzer.new(line, line_number += 1)   
      end
    end
  end
  
  def calculate_line_with_highest_frequency
    temp_array = @analyzers.max_by do |element|
      element.highest_wf_count
    end
    @highest_count_across_lines = temp_array.highest_wf_count
    @highest_count_words_across_lines = []
    @analyzers.each do |a|
        @highest_count_words_across_lines << a if
          a.highest_wf_count == @highest_count_across_lines
    end
  end

  def print_highest_word_frequency_across_lines
    @highest_count_words_across_lines.each_pair do |line, words|
      words.each { |w| puts w }
      puts line
    end
  end 
end