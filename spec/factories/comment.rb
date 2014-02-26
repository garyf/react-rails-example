FactoryGirl.define do
  factory :comment do
    author 'Shakespeare'
    text 'Hamlet'
    created_at { Time.now }
  end
end
