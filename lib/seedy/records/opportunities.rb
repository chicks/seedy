module Seedy
  class Opportunities < Record
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
      :opportunity_type => :customer_type,
      :amount => :monetary_sum,
      :date_closed => :date_time,
      :next_step => :subject,
      :sales_stage => :subject
    }

    class << self
      def build(user, team, account)
        opportunity = Opportunities.new
        opportunity.associate(user,team,account)
        opportunity
      end
    end
    
    def associate(user, team, account)
      write_attribute(:modified_user_id, user.id)
      write_attribute(:assigned_user_id, user.id)
      write_attribute(:team_id, team)
      write_attribute(:created_by, user.id)
      join("accounts_opportunities", {
        :id => Random.guid, 
        :account_id => account, 
        :opportunity_id => read_attribute(:id), 
        :date_modified => read_attribute(:date_modified)})
    end
  end 
end