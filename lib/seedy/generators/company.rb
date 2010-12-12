module Seedy
  module Generators
    def company
      Faker::Company.name
    end
    def employees
      rand(10 ** 5).to_s
    end
  end
end