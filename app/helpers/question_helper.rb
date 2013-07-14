module QuestionHelper
  def data_tag(question)
    case question.answer_type
    when ANSWER_TYPES[:numeric]
      #TODO: add min, max, step
      number_field_tag :value#, min: question.min, max: question.max, step: question.step
    when ANSWER_TYPES[:string]
      text_field_tag :value
    when ANSWER_TYPES[:classification]
      text_field_tag :value, placeholder: 'FINISH THE CLASSIFICATION DATA'
    end
  end
end
