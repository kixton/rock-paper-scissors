require_relative './spec_helper.rb'

describe 'RockPapeScis' do

  let(:kim) { {name: 'Kim', move: 'rock'} }
  let(:jeff) { {name: 'Jeff', move: 'paper'} }  
  let(:peng) { {name: 'Peng', move: 'scissors'} }
  let(:pong) { {name: 'Pong', move: 'scissors'} }  

  describe 'play' do
    it 'player has name and move' do
      expect(kim[:name]).to eq('Kim')
      expect(kim[:move]).to eq('rock')
    end

    it 'rock beats scissors' do
      game = RockPapeScis.play(kim, peng)

      expect(kim[:move]).to eq('rock')
      expect(peng[:move]).to eq('scissors')

      expect(game).to eq('Kim wins!')
    end

    it 'paper beats rock' do
      game = RockPapeScis.play(jeff, kim)

      expect(game).to eq('Jeff wins!')
    end

    it 'scissors beats paper' do
      game = RockPapeScis.play(peng, jeff)

      expect(game).to eq('Peng wins!')
    end    

    it 'two scissors tie' do
      game = RockPapeScis.play(peng, pong)

      expect(game).to eq('Tie')
    end

  end # end of play

end

