FactoryBot.define do
  factory :order_addresses do
    num            {"123-4567"}
    prefectures_id {1}
    city           {"大阪市"}
    area           {"1-1-1"}
    token          {"testsample"}
    phone          {"12345678901"}
    building       {""}
    association :user
    association :item
  end
end
