require 'rails_helper'

RSpec.describe Training, type: :model do
  describe '[Success] create record for Menu model' do
    context 'when creates records' do
      it 'should success by the training data with the leg part' do
        # create the test data
        training = FactoryBot.create(:training_leg)

        # get the test data
        saved_training = Training.find_by(name: 'test_leg');

        # check the identity
        expect(saved_training.name).to eq('test_leg')
        expect(saved_training.part).to eq('脚')
        expect(saved_training.point).to eq(1)
        expect(saved_training.time).to eq(1)
        expect(saved_training.basis).to eq(1)
        expect(saved_training.description).to eq('leg training for test')
      end

      it 'should success by the training data with the chest part' do
        # create the test data
        training = FactoryBot.create(:training_chest)

        # get the test data
        saved_training = Training.find_by(name: 'test_chest');

        # check the identity
        expect(saved_training.name).to eq('test_chest')
        expect(saved_training.part).to eq('胸')
        expect(saved_training.point).to eq(1)
        expect(saved_training.time).to eq(1)
        expect(saved_training.basis).to eq(1)
        expect(saved_training.description).to eq('chest training for test')
      end

      it 'should success by the training data with the shoulder part' do
        # create the test data
        training = FactoryBot.create(:training_shoulder)

        # get the test data
        saved_training = Training.find_by(name: 'test_shoulder');

        # check the identity
        expect(saved_training.name).to eq('test_shoulder')
        expect(saved_training.part).to eq('肩')
        expect(saved_training.point).to eq(1)
        expect(saved_training.time).to eq(1)
        expect(saved_training.basis).to eq(1)
        expect(saved_training.description).to eq('shoulder training for test')
      end

      it 'should success by the training data with the back part' do
        # create the test data
        training = FactoryBot.create(:training_back)

        # get the test data
        saved_training = Training.find_by(name: 'test_back');

        # check the identity
        expect(saved_training.name).to eq('test_back')
        expect(saved_training.part).to eq('背中')
        expect(saved_training.point).to eq(1)
        expect(saved_training.time).to eq(1)
        expect(saved_training.basis).to eq(1)
        expect(saved_training.description).to eq('back training for test')
      end

      it 'should success by the training data with the abdominal part' do
        # create the test data
        training = FactoryBot.create(:training_abdominal)

        # get the test data
        saved_training = Training.find_by(name: 'test_abdominal');

        # check the identity
        expect(saved_training.name).to eq('test_abdominal')
        expect(saved_training.part).to eq('腹')
        expect(saved_training.point).to eq(1)
        expect(saved_training.time).to eq(1)
        expect(saved_training.basis).to eq(1)
        expect(saved_training.description).to eq('abdominal training for test')
      end

      it 'should success by the training data with the arm part' do
        # create the test data
        training = FactoryBot.create(:training_arm)

        # get the test data
        saved_training = Training.find_by(name: 'test_arm');

        # check the identity
        expect(saved_training.name).to eq('test_arm')
        expect(saved_training.part).to eq('腕')
        expect(saved_training.point).to eq(1)
        expect(saved_training.time).to eq(1)
        expect(saved_training.basis).to eq(1)
        expect(saved_training.description).to eq('arm training for test')
      end

    end
  end

end

# ashi
# mune
# kata
# senaka
# hara
# ude