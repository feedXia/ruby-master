require 'timecop'
require_relative "../questions/question_1"
require "mastery_answer_code_quality"

describe "Q1. Greetings" do

  describe 'goodbye' do
    it 'always returns "See you soon!"' do
      expect(goodbye).to eq 'See you soon!'
    end
  end

  describe '#hello' do
    context 'between 09:00 and 12:00' do
      before do
        new_time = Time.local(1906, 12, 9, 9, 0, 0)
        Timecop.freeze(new_time)
      end

      it "returns 'Good morning!'" do
        expect(hello).to eq 'Good morning!'
      end
    end

    context 'between 12:00 and 16:00' do
      before do
        new_time = Time.local(1906, 12, 9, 15, 0, 0)
        Timecop.freeze(new_time)
      end

      it "returns 'Good afternoon!'" do
        expect(hello).to eq 'Good afternoon!'
      end
    end

    context 'at all other times' do
      before do
        new_time = Time.local(1906, 12, 9, 18, 0, 0)
        Timecop.freeze(new_time)
      end

      it "returns 'Hello!'" do
        expect(hello).to eq 'Hello!'
      end
    end
  end

  it "has acceptable code quality" do
    code_quality = MasteryAnswerCodeQuality.build(__FILE__)
    expect(code_quality.acceptable?).to(eq(true), code_quality.problems)
  end
end