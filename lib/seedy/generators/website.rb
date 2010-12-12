module Seedy
  module Generators
    def website
      Faker::Internet.domain_name
    end
  end
end