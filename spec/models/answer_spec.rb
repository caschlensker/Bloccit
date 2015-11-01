require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved: true) }

  let(:answer) { Answer.create!(question: question, body: "New Answer Body") }

  describe "attributes" do
# #2
    it "should respond to question" do
      expect(answer).to respond_to(:question)
    end
# #3
    it "should respond to body" do
      expect(answer).to respond_to(:body)
    end
  end
end
