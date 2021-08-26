FactoryBot.define do
  factory :training do
  end

  factory :training_leg, class: 'Training' do
    name { "test_leg" }
    part { "脚" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "leg training for test" }
  end

  factory :training_chest, class: 'Training' do
    name { "test_chest" }
    part { "胸" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "chest training for test" }
  end

  factory :training_shoulder, class: 'Training' do
    name { "test_shoulder" }
    part { "肩" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "shoulder training for test" }
  end

  factory :training_back, class: 'Training' do
    name { "test_back" }
    part { "背中" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "back training for test" }
  end

  factory :training_abdominal, class: 'Training' do
    name { "test_abdominal" }
    part { "腹" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "abdominal training for test" }
  end

  factory :training_arm, class: 'Training' do
    name { "test_arm" }
    part { "腕" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "arm training for test" }
  end

end