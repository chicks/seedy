require 'helper'

class TestSeedy < Test::Unit::TestCase
  
  context "A Seedy Instance" do
    setup do
      Seedy.connect("localhost", "ibm", "ibm", "ibm")
    end

    should "create a User object graph when SimpleGraph#new" do
      100.times {Seedy::SimpleGraph.new}
    end

  end
  
end
