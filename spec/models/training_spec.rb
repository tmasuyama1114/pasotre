require 'rails_helper'

RSpec.describe Training, type: :model do
  describe '正常系の機能' do
    context 'Training データの登録をできること' do
      it '正しく登録できること / name: 脚テスト' do

        # テストデータ作成
        training = FactoryBot.create(:training_ashi)

        # 保存したテストデータを取得
        saved_training = Training.find_by(name: '脚テスト');

        # 想定したデータと同一であることを確認
        expect(saved_training.name).to eq('脚テスト')
        expect(saved_training.part).to eq('脚')
        expect(saved_training.point).to eq(1)
        expect(saved_training.time).to eq(1)
        expect(saved_training.basis).to eq(1)
        expect(saved_training.description).to eq('テスト用の脚トレーニング')
      end

      it '正しく登録できること / name: 胸テスト' do
        # テストデータ作成
        training = FactoryBot.create(:training_mune)

        # 保存したテストデータを取得
        saved_training = Training.find_by(name: '胸テスト');

        # 想定したデータと同一であることを確認
        expect(saved_training.name).to eq('胸テスト')
        expect(saved_training.part).to eq('胸')
        expect(saved_training.point).to eq(1)
        expect(saved_training.time).to eq(1)
        expect(saved_training.basis).to eq(1)
        expect(saved_training.description).to eq('テスト用の胸トレーニング')
      end

      it '正しく登録できること / name: 肩テスト' do
        # テストデータ作成
        training = FactoryBot.create(:training_kata)

        # 保存したテストデータを取得
        saved_training = Training.find_by(name: '肩テスト');

        # 想定したデータと同一であることを確認
        expect(saved_training.name).to eq('肩テスト')
        expect(saved_training.part).to eq('肩')
        expect(saved_training.point).to eq(1)
        expect(saved_training.time).to eq(1)
        expect(saved_training.basis).to eq(1)
        expect(saved_training.description).to eq('テスト用の肩トレーニング')
      end

      it '正しく登録できること / name: 背中テスト' do
        # テストデータ作成
        training = FactoryBot.create(:training_senaka)

        # 保存したテストデータを取得
        saved_training = Training.find_by(name: '背中テスト');

        # 想定したデータと同一であることを確認
        expect(saved_training.name).to eq('背中テスト')
        expect(saved_training.part).to eq('背中')
        expect(saved_training.point).to eq(1)
        expect(saved_training.time).to eq(1)
        expect(saved_training.basis).to eq(1)
        expect(saved_training.description).to eq('テスト用の背中トレーニング')
      end

      it '正しく登録できること / name: 腹テスト' do
        # テストデータ作成
        training = FactoryBot.create(:training_hara)

        # 保存したテストデータを取得
        saved_training = Training.find_by(name: '腹テスト');

        # 想定したデータと同一であることを確認
        expect(saved_training.name).to eq('腹テスト')
        expect(saved_training.part).to eq('腹')
        expect(saved_training.point).to eq(1)
        expect(saved_training.time).to eq(1)
        expect(saved_training.basis).to eq(1)
        expect(saved_training.description).to eq('テスト用の腹トレーニング')
      end

      it '正しく登録できること / name: 腕テスト' do
        # テストデータ作成
        training = FactoryBot.create(:training_ude)

        # 保存したテストデータを取得
        saved_training = Training.find_by(name: '腕テスト');

        # 想定したデータと同一であることを確認
        expect(saved_training.name).to eq('腕テスト')
        expect(saved_training.part).to eq('腕')
        expect(saved_training.point).to eq(1)
        expect(saved_training.time).to eq(1)
        expect(saved_training.basis).to eq(1)
        expect(saved_training.description).to eq('テスト用の腕トレーニング')
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