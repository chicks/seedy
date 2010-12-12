module Seedy
class UserGraph < AbstractGraph
  @@related_records = {
    'Teams' => 1,
    'Accounts' => 20,
    'Bugs' => 60,
    'Calls' => 480,
    'Cases' => 80,
    'Contacts' => 80,
   	'Documents'=> 80,
    'Emails' => 320,    
   	'EmailAddresses'=> 80,
    'Leads' => 80,
    'Meetings' => 160,
    'Notes' => 80,
    'Opportunities' => 40,
    'Products' => 80,
    'ProductBundles' => 40,
    'Quotes' => 20,
    'Tasks' => 80,
  }
  
  # Creates a new user record, and all the dependent records listed above
  def initialize 
    user = Users.build
    @@related_records.each_pair do |module_name,count|
      count.times { 
        record = module_name.build(self)
        DatabaseBuffer.insert(record)
      }
    end
  end
  
end
end