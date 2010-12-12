module Seedy
  class Teams < Record
    self.columns = {
      :id   => :guid,
      :name => :association,
      :date_entered => :date_time,
      :date_modified => :date_time,
      :associated_user_id => :association,
      :modified_user_id => 1,
      :private => 1,
      :description => :association
    }
    
    class << self
      def build(user)
        team = Teams.new
        team.associate(user)
        team
      end
    end
    
    def associate(user)
      write_attribute(:name, user.first_name + " " + user.last_name)
      write_attribute(:associated_user_id, user.id)
      write_attribute(:description, team_description)
    end
    
    def team_description
      "Private team for #{read_attribute(:name)}"
    end
  end
end