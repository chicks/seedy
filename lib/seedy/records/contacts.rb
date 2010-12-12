module Seedy
  class Contacts < Record
    self.columns = {
      :id => :guid,
      :date_entered => :date_time,
      :date_modified => :date_time,
      :modified_user_id => :association,
      :created_by => :association,
      :description => :description,
      :deleted => 0,
      :assigned_user_id => :association,
      :team_id => :association,
      :first_name => :first_name,
      :last_name => :last_name,
      :title  => :title,
      :department => :department,
      :phone_mobile => :phone,
      :phone_work => :phone,
      :primary_address_street => :address_street,
      :primary_address_city => :city,
      :primary_address_state => :state,
      :primary_address_postalcode => :zip,
      :primary_address_country => :country,
    }

    class << self
      def build(user, team, account)
        contact = Contacts.new
        contact.associate(user,team,account)
        contact
      end
    end
    
    def associate(user, team, account)
      write_attribute(:modified_user_id, user.id)
      write_attribute(:assigned_user_id, user.id)
      write_attribute(:team_id, team)
      write_attribute(:created_by, user.id)
      join("accounts_contacts", {
        :id => Random.guid, 
        :account_id => account, 
        :contact_id => read_attribute(:id), 
        :date_modified => read_attribute(:date_modified)})
    end
  end 
end