module Seedy
  class Leads < Record
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
      :title => :title,
      :department => :department,
      :phone_mobile => :phone,
      :phone_work => :phone,
      :primary_address_street => :address_street,
      :primary_address_city => :city,
      :primary_address_state => :state,
      :primary_address_postalcode => :zip,
      :primary_address_country => :country,
      :website => :website,
      :contact_id => :association,
      :account_id => :association,
      :opportunity_id => :association,
    }

    class << self
      def build(user, team, contact, opp, account)
        lead = Leads.new
        lead.associate(user,team,contact,opp,account)
        lead
      end
    end
    
    def associate(user, team, contact, opp, account)
      write_attribute(:modified_user_id, user.id)
      write_attribute(:assigned_user_id, user.id)
      write_attribute(:team_id, team)
      write_attribute(:created_by, user.id)
      write_attribute(:contact_id, contact)
      write_attribute(:account_id, account)
      write_attribute(:opportunity_id, opp)
    end
  end 
end