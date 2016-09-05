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

class Solution
  attr_reader :analyzers,:highest_count_across_lines,:highest_count_words_across_lines
  def initialize()
    @analyzers = []
    @highest_count_across_lines = nil
    @highest_count_words_across_lines = nil
  end

  def analyze_file()
    line_number = 1
    if File.exist? 'test.txt'
      File.foreach( 'test.txt') do |line|
        @analyzers << (LineAnalyzer.new(line,line_number))
        line_number += 1
      end
    end
  end

  def calculate_line_with_highest_frequency()
    temp_array = []
    @highest_count_across_lines = 0
    @highest_count_words_across_lines = []
    @analyzers.each do |analyser|
      @highest_count_words_across_lines << analyser.highest_wf_words
    end
    @highest_count_across_lines = @highest_count_words_across_lines.map{|h| h.values}.flatten.max
    @highest_count_words_across_lines.each do |a|
      a.each do |b|
        if b[1] == @highest_count_across_lines
          temp_array << b[0]
        end 
      end 
    end
    @highest_count_words_across_lines = temp_array
  end

  def print_highest_word_frequency_across_lines() 
    p @highest_count_words_across_lines
    @highest_count_words_across_lines.each do |a|
        puts a 
    end 
  end
end
a = Solution.new()
a.analyze_file
a.calculate_line_with_highest_frequency
a.print_highest_word_frequency_across_lines 
