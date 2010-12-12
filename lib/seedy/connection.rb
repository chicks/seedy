module Seedy
  @@connection = nil
  def self.connection
    @@connection
  end
  def self.connection=(connection)
    @@connection = connection
  end
  def self.connect(host, user, pass, db)
    @@connection = Mysql.real_connect(host, user, pass, db)
  end
  class << self
    alias :connect! :connect
  end
end
