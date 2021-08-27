FactoryBot.define do
  factory :training do
  end

  ########## Succsess: each records of part ##########
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

  ########## Fails: blank patterns ##########
  factory :training_fails_blank_name, class: 'Training' do
    name { }
    part { "脚" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "face training for test should fail by checking blank name" }
  end

  factory :training_fails_blank_part, class: 'Training' do
    name { "test_fail_blank_part" }
    part {  }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "face training for test should fail by checking blank part" }
  end

  factory :training_fails_blank_point, class: 'Training' do
    name { "test_fail_blank_point"}
    part { "脚" }
    point {  }
    time { 1 }
    basis { 1 }
    description { "face training for test should fail by checking blank point" }
  end

  factory :training_fails_blank_time, class: 'Training' do
    name { "test_fail_blank_time"}
    part { "脚" }
    point { 1 }
    time {  }
    basis { 1 }
    description { "face training for test should fail by checking blank time" }
  end

  factory :training_fails_blank_basis, class: 'Training' do
    name { "test_fail_blank_basis"}
    part { "脚" }
    point { 1 }
    time { 1 }
    basis {  }
    description { "face training for test should fail by checking blank basis" }
  end

  factory :training_fails_blank_description, class: 'Training' do
    name { "test_fail_blank_description"}
    part { "脚" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description {  }
  end


  ########## Fails: invalid patterns ##########
  factory :training_fails_invalid_name, class: 'Training' do
    name { "012345678901234567890123456789012345678901234567890" }
    part { "脚" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "face training for test should fail by checking invalid name" }
  end

  factory :training_fails_invalid_part, class: 'Training' do
    name { "test_fail_invalid_part" }
    part { "顔" }
    point { 1 }
    time { 1 }
    basis { 1 }
    description { "face training for test should fail by checking invalid part" }
  end

  factory :training_fails_invalid_point, class: 'Training' do
    name { "test_fail_invalid_point" }
    part { "顔" }
    point { 0 }
    time { 1 }
    basis { 1 }
    description { "face training for test should fail by checking invalid point" }
  end

  factory :training_fails_invalid_time, class: 'Training' do
    name { "test_fail_invalid_time" }
    part { "顔" }
    point { 1 }
    time { 0 }
    basis { 1 }
    description { "face training for test should fail by checking invalid time" }
  end

  factory :training_fails_invalid_basis, class: 'Training' do
    name { "test_fail_invalid_basis" }
    part { "顔" }
    point { 1 }
    time { 1 }
    basis { 0 }
    description { "face training for test should fail by checking invalid basis" }
  end
end