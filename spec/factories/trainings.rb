FactoryBot.define do
  factory :training do
  end

  factory :training_ashi, class: 'Training' do
    name { "脚テスト" }
    part { "脚" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "テスト用の脚トレーニング" }
  end

  factory :training_mune, class: 'Training' do
    name { "胸テスト" }
    part { "胸" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "テスト用の胸トレーニング" }
  end

  factory :training_kata, class: 'Training' do
    name { "肩テスト" }
    part { "肩" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "テスト用の肩トレーニング" }
  end

  factory :training_senaka, class: 'Training' do
    name { "背中テスト" }
    part { "背中" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "テスト用の背中トレーニング" }
  end

  factory :training_hara, class: 'Training' do
    name { "腹テスト" }
    part { "腹" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "テスト用の腹トレーニング" }
  end

  factory :training_ude, class: 'Training' do
    name { "腕テスト" }
    part { "腕" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "テスト用の腕トレーニング" }
  end

end