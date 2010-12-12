require 'helper'

class TestSeedy < Test::Unit::TestCase
  
  context "A Seedy Instance" do
    setup do
      Seedy.connect("localhost", "ibm", "ibm", "ibm")
    end

    should "create a User object graph when SimpleGraph#new" do
      Seedy::SimpleGraph.new
    end

  end
  
  
  
end
