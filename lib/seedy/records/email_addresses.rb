module Seedy
  class EmailAddresses < Record
    self.columns = {
      :id => :guid,
      :email_address => :email,      
      :date_created => :date_time,
      :date_modified => :date_time,
      :deleted => 0,
    }

    class << self
      def build(user, team, account)
        email_address = EmailAddresses.new
        email_address.email_address_caps = email_address.email_address
        email_address
      end
    end
    
  end 
end