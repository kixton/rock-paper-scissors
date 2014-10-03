require_relative './spec_helper.rb'

describe 'RockPapeScis' do

  let(:kim) { {id: 1, move: 'rock'} }
  let(:jeff) { {id: 2, move: 'paper'} }  
  let(:peng) { {id: 3, move: 'scissors'} }
  let(:pong) { {id: 4, move: 'scissors'} }  

  describe 'play' do
    it 'player has id and move' do
      expect(kim[:id]).to eq(1)
      expect(kim[:move]).to eq('rock')
    end

    it 'rock beats scissors' do
      game = RockPapeScis.play(player_1: kim, player_2: peng)

      expect(kim[:move]).to eq('rock')
      expect(peng[:move]).to eq('scissors')

      expect(game).to eq(1)
    end

    it 'paper beats rock' do
      game = RockPapeScis.play(player_1: jeff, player_2: kim)

      expect(game).to eq(2)
    end

    it 'scissors beats paper' do
      game = RockPapeScis.play(player_1: peng, player_2: jeff)

      expect(game).to eq(3)
    end    

    it 'two scissors tie' do
      game = RockPapeScis.play(player_1: peng, player_2: pong)

      expect(game).to eq(-1)
    end

  end # end of play

end

