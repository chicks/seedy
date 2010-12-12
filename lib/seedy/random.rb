module Seedy
  class Random    
    Random.class_eval do
      extend Seedy::Generators
    end
  end
end