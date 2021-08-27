require 'rails_helper'

RSpec.describe Menu, type: :model do
  describe '[Success] create record for Menu model' do
    context 'when creates records' do

      before do
        menu = FactoryBot.create(:menu_0)
        menu = FactoryBot.create(:menu_1)
        menu = FactoryBot.create(:menu_2)
        menu = FactoryBot.create(:menu_3)
        menu = FactoryBot.create(:menu_4)
        menu = FactoryBot.create(:menu_5)
      end

      it 'should success by the menu data with the leg part' do
        # get the test data
        saved_menu = Menu.where(set: 'abcde')[0]

        # check the identity
        expect(saved_menu.training.name).to eq('test_leg')
        expect(saved_menu.count).to eq(10)
        expect(saved_menu.num).to eq(0)
        expect(saved_menu.set).to eq('abcde')
      end

      it 'should success by the menu data with the shoulder part' do
        # get the test data
        saved_menu = Menu.where(set: 'abcde')[1]

        # check the identity
        expect(saved_menu.training.name).to eq('test_shoulder')
        expect(saved_menu.count).to eq(10)
        expect(saved_menu.num).to eq(1)
        expect(saved_menu.set).to eq('abcde')
      end

      it 'should success by the menu data with the chest part' do
        # get the test data
        saved_menu = Menu.where(set: 'abcde')[2]

        # check the identity
        expect(saved_menu.training.name).to eq('test_chest')
        expect(saved_menu.count).to eq(10)
        expect(saved_menu.num).to eq(2)
        expect(saved_menu.set).to eq('abcde')
      end

      it 'should success by the menu data with the back part' do
        # get the test data
        saved_menu = Menu.where(set: 'abcde')[3]

        # check the identity
        expect(saved_menu.training.name).to eq('test_back')
        expect(saved_menu.count).to eq(10)
        expect(saved_menu.num).to eq(3)
        expect(saved_menu.set).to eq('abcde')
      end

      it 'should success by the menu data with the abdominal part' do
        # get the test data
        saved_menu = Menu.where(set: 'abcde')[4]

        # check the identity
        expect(saved_menu.training.name).to eq('test_abdominal')
        expect(saved_menu.count).to eq(10)
        expect(saved_menu.num).to eq(4)
        expect(saved_menu.set).to eq('abcde')
      end

      it 'should success by the menu data with the arm part' do
        # get the test data
        saved_menu = Menu.where(set: 'abcde')[5]

        # check the identity
        expect(saved_menu.training.name).to eq('test_arm')
        expect(saved_menu.count).to eq(10)
        expect(saved_menu.num).to eq(5)
        expect(saved_menu.set).to eq('abcde')
      end
    end
  end


  describe '[Fail] create record for Menu model' do
    context 'when creates blank records' do
      it 'should fail by the menu data with blank count' do
        menu_fails_blank_count = FactoryBot.build(:menu_fails_blank_count)
        expect(menu_fails_blank_count).not_to be_valid
      end

      it 'should fail by the menu data with blank num' do
        menu_fails_blank_num = FactoryBot.build(:menu_fails_blank_num)
        expect(menu_fails_blank_num).not_to be_valid
      end

      it 'should fail by the menu data with blank set' do
        menu_fails_blank_set = FactoryBot.build(:menu_fails_blank_set)
        expect(menu_fails_blank_set).not_to be_valid
      end

      it 'should fail by the menu data with blank training' do
        menu_fails_blank_training = FactoryBot.build(:menu_fails_blank_training)
        expect(menu_fails_blank_training).not_to be_valid
      end
    end

    context 'when creates invalid records' do
      it 'should fail by the menu data with invalid count' do
        menu_fails_invalid_count = FactoryBot.build(:menu_fails_invalid_count)
        expect(menu_fails_invalid_count).not_to be_valid
      end

      it 'should fail by the menu data with invalid num' do
        menu_fails_invalid_num = FactoryBot.build(:menu_fails_invalid_num)
        expect(menu_fails_invalid_num).not_to be_valid
      end
    end
  end

end