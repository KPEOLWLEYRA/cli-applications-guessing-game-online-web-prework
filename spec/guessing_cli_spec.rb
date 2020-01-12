require_relative 'spec_helper'

describe "Guessing CLI" do

  context 'user inputs' do
    it "responds to 'exit'" do
      expect(self).to receive(:gets).and_return('exit')
      expect { run_guessing_game }.to output(/Goodbye!/).to_stdout
    end

    it "responds to an incorrect guess" do
      allow(self).to receive(:rand).and_return(5)

      expect(self).to receive(:gets).and_return("2")

      expect { run_guessing_game }.to output(/Sorry! The computer guessed 5./).to_stdout
    end

    it "responds to a correct guess" do
      allow(self).to receive(:rand).and_return(1)

      expect(self).to receive(:gets).and_return("1")

      expect { run_guessing_game }.to output(/You guessed the correct number!/).to_stdout
    end
  end


end
