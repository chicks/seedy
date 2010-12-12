module Seedy
  class Emails < Record
    self.columns = {
      :team_id => :association,
      :id => :guid,
      :date_entered => :date_time,
      :date_modified => :date_time,
      :assigned_user_id => :association,
      :modified_user_id => :association,
      :created_by => :association,
      :deleted => 0,
      :date_sent => :date_time,
      :message_id => :guid,
      :name => :subject,
    }

    class << self
      def build(user, team, account)
        email = Emails.new
        email.associate(user,team)
        email
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