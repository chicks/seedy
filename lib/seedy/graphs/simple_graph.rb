module Seedy
class SimpleGraph < AbstractGraph
  @@related_records = {
    :teams => 1,
    :accounts => 20,
    :bugs => 60,
    :cases => 80,
    :contacts => 80,
    :opportunities => 40,
    :calls => 480,
    :leads => 80,
    :emails => 320,
    :email_addresses => 80
  }
  
  @@buffer  = Seedy::DatabaseBuffer
  
  # Creates a new user record, and all the dependent records listed above
  def initialize(offset=nil)    
    create_user(offset)
    create_teams
    create_accounts
    create_bugs
    create_contacts
    create_cases
    create_opportunities
    create_calls
    create_leads
    @@buffer.flush
  end
  
end
end

