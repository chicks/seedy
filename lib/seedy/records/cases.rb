module Seedy
  class Cases < Record
    self.columns = {
      :id => :guid,
      :name => :subject,
      :date_entered => :date_time,
      :date_modified => :date_time,
      :modified_user_id => :association,
      :created_by => :association,
      :description => :description,
      :deleted => 0,
      :assigned_user_id => :association,
      :team_id => :association,
      :status => :status,
      :priority => :priority,
    }

    class << self
      def build(user, team, account)
        cases = Cases.new
        cases.associate(user,team,account)
        cases
      end
    end
    
    def associate(user, team, account)
      write_attribute(:modified_user_id, user.id)
      write_attribute(:assigned_user_id, user.id)
      write_attribute(:team_id, team)
      write_attribute(:created_by, user.id)
      join("accounts_cases", {
        :id => Random.guid, 
        :account_id => account, 
        :case_id => read_attribute(:id), 
        :date_modified => read_attribute(:date_modified)})
    end
  end 
end