module Seedy
  class Record
    
    class_attribute :columns
    self.columns = {}    
    
    # Tracks if we have extended our class with attribute methods yet.
    class_attribute :attribute_methods_generated
    self.attribute_methods_generated = false
    
    def initialize(params={})
      define_attribute_methods
      @params = params
      @attributes = {}
      generate_attributes_for(self.columns)
    end
        
    def to_sql
      sql = <<-EOF
      INSERT INTO #{table_name}
        (#{@attributes.keys.join(",")})
        VALUES
        (#{quote(@attributes.values).join(",")});
      EOF
      sql.gsub!(/^\s{6}/, '')
    end
    
    def inspect
      self
    end

    def to_s
      attrs = []
      @attributes.keys.each do |k|
        attrs << "#{k}: #{attribute_for_inspect(k)}"
      end
      "#<#{self.class} #{attrs.join(", ")}>"
    end
    
    Record.class_eval do
      include Seedy::AttributeMethods
    end
        
  end
end