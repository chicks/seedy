module Seedy
  module Generators
    PRIORITIES = ["Low", "Medium", "High", "Urgent"]
    def priority
      PRIORITIES[rand(PRIORITIES.length - 1)]
    end
  end
end