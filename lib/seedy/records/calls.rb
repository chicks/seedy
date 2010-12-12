module Seedy
  class Calls < Record
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
      :duration_hours => :duration,
      :durection_minutes => :duration,
      :date_start => :date_time,
      :status => :status,
      :direction => :direction,
    }

    class << self
      def build(user, team, contact)
        call = Calls.new
        call.associate(user,team,contact)
        call
      end
    end
    
    def associate(user, team, contact)
      write_attribute(:modified_user_id, user.id)
      write_attribute(:assigned_user_id, user.id)
      write_attribute(:team_id, team)
      write_attribute(:created_by, user.id)
      join("calls_contacts", {
        :id => Random.guid, 
        :contact_id => contact, 
        :call_id => read_attribute(:id), 
        :date_modified => read_attribute(:date_modified)})
    end
  end 
end