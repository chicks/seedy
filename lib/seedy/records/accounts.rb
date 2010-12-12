module Seedy
  class Accounts < Record
    self.columns = {
      :id => :guid,
      :name => :company,
      :date_entered => :date_time,
      :date_modified => :date_time,
      :modified_user_id => :association,
      :created_by => :association,
      :description => :description,
      :deleted => 0,
      :assigned_user_id => :association,
      :team_id => :association,
      :account_type => :customer_type,
      :industry => :industry,
      :annual_revenue => :monetary_sum,
      :phone_fax => :phone,
      :billing_address_street => :address_street,
      :billing_address_city => :city,
      :billing_address_state => :state,
      :billing_address_postalcode => :zip,
      :billing_address_country => :country,
      :phone_office => :phone,
      :website => :website,
      :ownership => :ownership,
      :employees => :employees,
      :shipping_address_street => :address_street,
      :shipping_address_city => :city,
      :shipping_address_state => :state,
      :shipping_address_postalcode => :zip,
      :shipping_address_country => :country,
    }

    class << self
      def build(user, team)
        account = Accounts.new
        account.associate(user,team)
        account
      end
    end
    
    def associate(user, team)
      write_attribute(:modified_user_id, user.id)
      write_attribute(:assigned_user_id, user.id)
      write_attribute(:team_id, team)
      write_attribute(:created_by, user.id)
    end
  end 
end