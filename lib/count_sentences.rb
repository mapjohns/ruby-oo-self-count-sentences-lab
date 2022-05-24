require 'pry'

class String

  def sentence?
    if self[-1] == "."
      return true
    else
      false
    end
  end

  def question?
    if self[-1] == "?"
      return true
    else
      false
    end
  end

  def exclamation?
    if self[-1] == "!"
      return true
    else
      false
    end
  end

  def count_sentences
    clean_up =self.squeeze
    count = clean_up.scan(/[(.|?|!)]/)
    count.size
  end
end