module Seedy
  module Generators
    OWNERSHIPS = ["Public", "Private", "Partnership", "Unknown"]
    def ownership
      OWNERSHIPS[rand(OWNERSHIPS.length - 1)]
    end
  end
end