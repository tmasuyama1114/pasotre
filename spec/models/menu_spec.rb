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

end