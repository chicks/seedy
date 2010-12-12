module Seedy
  module Generators
    DIRECTIONS = ["Inbound", "Outbound", "Queue"]
    def direction
      DIRECTIONS[rand(DIRECTIONS.length - 1)]
    end
  end
end