class Question

  attr_accessor :question_string
  attr_accessor :question_answer

  def initialize(string, answer)
    @question_string = string
    @question_answer = answer
  end

end
