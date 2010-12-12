require 'helper'

class TestGenerators < Test::Unit::TestCase
  should "return a name when #name" do
    assert_instance_of String, Seedy::Random.name
  end
  should "return a first_name when #first_name" do 
    assert_instance_of String, Seedy::Random.first_name
  end  
end
