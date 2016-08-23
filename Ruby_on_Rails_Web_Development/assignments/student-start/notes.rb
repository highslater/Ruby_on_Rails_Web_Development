class LineAnalyzer
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number
    def initialize (content, line_number)
    @content = content
    @line_number = line_number


    calculate_word_frequency ()
  end


  
    def calculate_word_frequency()
    @highest_wf_words = []
    hash = Hash.new ()
    hash.each do |i|
      if hash[i].nil?
        hash = 1
      else
        hash[i] += 1
      end
      hash[i.downcase] +=1
    end
    @highest_wf_count = hash.values.max
    hash.select!{|k, v| v == @highest_wf_count} 
    hash.each_key{|key| @highest_wf_words << key}    
  end 
end  