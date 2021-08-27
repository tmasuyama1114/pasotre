FactoryBot.define do
  factory :menu do
  end

  ########## Succsess: menus for each parts ##########
  factory :menu_0, class: 'Menu' do
    training { FactoryBot.create(:training_leg) }
    count { 10 }
    num { 0 }
    set { 'abcde' }
  end

  factory :menu_1, class: 'Menu' do
    training { FactoryBot.create(:training_shoulder) }
    count { 10 }
    num { 1 }
    set { 'abcde' }
  end

  factory :menu_2, class: 'Menu' do
    training { FactoryBot.create(:training_chest) }
    count { 10 }
    num { 2 }
    set { 'abcde' }
  end

  factory :menu_3, class: 'Menu' do
    training { FactoryBot.create(:training_back) }
    count { 10 }
    num { 3 }
    set { 'abcde' }
  end

  factory :menu_4, class: 'Menu' do
    training { FactoryBot.create(:training_abdominal) }
    count { 10 }
    num { 4 }
    set { 'abcde' }
  end

  factory :menu_5, class: 'Menu' do
    training { FactoryBot.create(:training_arm) }
    count { 10 }
    num { 5 }
    set { 'abcde' }
  end

  ########## Fails: blank patterns ##########
  factory :menu_fails_blank_count, class: 'Menu' do
    count { }
    num { 0 }
    set { 'xyz'}
  end

  factory :menu_fails_blank_num, class: 'Menu' do
    training { FactoryBot.create(:training_leg) }
    count { 10 }
    num {  }
    set { 'xyz'}
  end

  factory :menu_fails_blank_set, class: 'Menu' do
    training { FactoryBot.create(:training_leg) }
    count { 10 }
    num { 0 }
    set { }
  end

  factory :menu_fails_blank_training, class: 'Menu' do
    count { 10 }
    num { 0 }
    set { 'xyz'}
  end
  ########## Fails: invalid patterns ##########
  factory :menu_fails_invalid_count, class: 'Menu' do
    training { FactoryBot.create(:training_leg) }
    count { 0 }
    num { 0 }
    set { 'xyz'}
  end

  factory :menu_fails_invalid_num, class: 'Menu' do
    training { FactoryBot.create(:training_leg) }
    count { 10 }
    num { -1 }
    set { 'xyz'}
  end
end