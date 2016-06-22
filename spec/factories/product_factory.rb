FactoryGirl.define do
  factory :product do
    name "Factory Bike"
    description "factory bike"
    image_url "/assets/citybike.jpg"
    color "black"
    price "5000"
  end

    factory :comment do
      user "@user"
      body "Best bike ever"
      rating "5"
    end
end
