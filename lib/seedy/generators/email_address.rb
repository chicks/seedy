module Seedy
  module Generators
    def website
      Faker::Internet.email
    end
  end
end