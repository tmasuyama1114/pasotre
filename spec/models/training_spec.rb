require 'rails_helper'

RSpec.describe Training, type: :model do
  describe '[Success] create record for Training model' do
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

  describe '[Fail] create record for Training model' do
    context 'when creates blank records' do
      it 'should fail by the training data with the blank name' do
        # create the test data
        training_fails_blank_name = FactoryBot.build(:training_fails_blank_name)

        # cannot save the test data
        expect(training_fails_blank_name).not_to be_valid
      end

      it 'should fail by the training data with the blank part' do
        # create the test data
        training_fails_blank_part = FactoryBot.build(:training_fails_blank_part)

        # cannot save the test data
        expect(training_fails_blank_part).not_to be_valid
      end

      it 'should fail by the training data with the blank point' do
        # create the test data
        training_fails_blank_point = FactoryBot.build(:training_fails_blank_point)

        # cannot save the test data
        expect(training_fails_blank_point).not_to be_valid
      end

      it 'should fail by the training data with the blank time' do
        # create the test data
        training_fails_blank_time = FactoryBot.build(:training_fails_blank_time)

        # cannot save the test data
        expect(training_fails_blank_time).not_to be_valid
      end

      it 'should fail by the training data with the blank basis' do
        # create the test data
        training_fails_blank_basis = FactoryBot.build(:training_fails_blank_basis)

        # cannot save the test data
        expect(training_fails_blank_basis).not_to be_valid
      end

      it 'should fail by the training data with the blank description' do
        # create the test data
        training_fails_blank_description = FactoryBot.build(:training_fails_blank_description)

        # cannot save the test data
        expect(training_fails_blank_description).not_to be_valid
      end
    end

    context 'when creates invalid records' do
      it 'should fail by the training data with invalid name' do
        # create the test data
        training_fails_invalid_name = FactoryBot.build(:training_fails_invalid_name)

        # cannot save the test data
        expect(training_fails_invalid_name).not_to be_valid
      end

      it 'should fail by the training data with the invalid part' do
        # create the test data
        training_fails_invalid_part = FactoryBot.build(:training_fails_invalid_part)

        # cannot save the test data
        expect(training_fails_invalid_part).not_to be_valid
      end

      it 'should fail by the training data with the invalid point' do
        # create the test data
        training_fails_invalid_point = FactoryBot.build(:training_fails_invalid_point)

        # cannot save the test data
        expect(training_fails_invalid_point).not_to be_valid
      end

      it 'should fail by the training data with the invalid time' do
        # create the test data
        training_fails_invalid_time = FactoryBot.build(:training_fails_invalid_time)

        # cannot save the test data
        expect(training_fails_invalid_time).not_to be_valid
      end

      it 'should fail by the training data with the invalid basis' do
        # create the test data
        training_fails_invalid_basis = FactoryBot.build(:training_fails_invalid_basis)

        # cannot save the test data
        expect(training_fails_invalid_basis).not_to be_valid
      end
    end
  end
end