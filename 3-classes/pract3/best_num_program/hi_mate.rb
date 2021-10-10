require_relative "try_again"
require_relative "secret"


def question_one
  puts "answer correct and I'll tell u a secret"
  puts "what is the best number, range 1-10"
  answer = gets
  if answer_is_ok?(answer.chomp.to_i)
    then question_two
  end
end

def question_two
  puts "best index? range 1-10"
  answer2 = gets
  if answer_is_ok?(answer2.chomp.to_i)
    then secret("my favourite number is 8")
  end
end

def answer_is_ok?(answero)
  p "your answer was " + answero.to_s
  if answero == 7
    then true
  else try_again
  end
end

question_one

