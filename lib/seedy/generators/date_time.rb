module Seedy
  module Generators
    def date_time
      (Time.now - rand(60 * 60 * 24 * 365 * 5)).strftime("%Y-%m-%d %H:%M:%S")
    end
  end
end