class Question

  attr_reader :question_string

  def initialize()
    ran1 = rand(1...10)
    ran2 = rand(1...10)
    @question_string = "What does #{ran1} plus #{ran2} equal?"
    @question_answer = ran1 + ran2
  end

  def compare_answer(answer)
    answer.to_i == @question_answer
  end
end
