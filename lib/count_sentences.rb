require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
      
    else 
      return false
    end 
  end

  def question?
    if self.end_with?("?")
      return true
    
    else 
      return false
    end 
  end

  def exclamation?
    if self.end_with?("!")
      return true
      
    else 
      return false
    end 
  end

  def count_sentences
    current_string = self.split()
    num_sentences = 0
    
    current_string.each do |word|
      if word.include?(".") || word.include?("!") || word.include?("?")
        num_sentences += 1
      end 
    end 
    
    return num_sentences
  end
end