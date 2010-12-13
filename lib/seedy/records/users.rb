module Seedy
  class Users < Record
    self.columns = {
      :id => :guid,
      :user_name => :association,
      :user_hash => :user_hash,
      :system_generated_password => :password,
      :pwd_last_changed => :date_time,
      :sugar_login => :association,
      :first_name => :first_name,
      :last_name => :last_name,
      :date_entered => :date_time,
      :date_modified => :date_time,
      :created_by => 1,
      :title => :title,
      :department => :department,
      :phone_mobile => :phone,
      :phone_work => :phone,
      :status => :status,
      :address_street => :address_street,
      :address_city => :city,
      :address_state => :state,
      :address_country => :country,
      :address_postalcode => :zip,
      :employee_status => :status,
    }

    class << self
      def build(offset)
        user = Users.new
        user.update_attributes(offset)
        user
      end
    end
    
    def update_attributes(offset)
      write_attribute(:user_name, set_user_name(offset))
      write_attribute(:sugar_login, 0)
      write_attribute(:user_hash, OpenSSL::Digest::MD5.new("#{offset}")) if offset
    end
    
    def set_user_name(offset)
      return "user#{offset}" if offset
      (@attributes[:first_name][0,1] + @attributes[:last_name][0,6]).downcase
    end
  end 
end