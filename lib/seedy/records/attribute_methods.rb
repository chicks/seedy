module Seedy
  module AttributeMethods
    # Wrapper around attributes hash
    def read_attribute(key)
      @attributes[key]
    end

    # Wrapper around attributes hash
    def write_attribute(key, value)
      @attributes[key] = value
    end
    
    def table_name
      self.class.to_s.tableize.split(/\//)[-1]
    end
    
    def table_columns#:nodoc:
      sql = "SHOW FIELDS FROM #{table_name}"
      columns = []
      result = execute(sql)
      result.each { |field| columns << field[0]}
      result.free
      columns
    end
    
    # Adds a row to a join table
    def join(table, hash)
      sql = <<-EOF
      INSERT INTO #{table}
        (#{hash.keys.join(",")})
        VALUES
        (#{quote(hash.values).join(",")});
      EOF
      sql.gsub!(/^\s{6}/, '')
      execute(sql)
    end
    
    def quote(object)
      case object
      when String:
        return "'#{object.gsub(/\\/, '\&\&').gsub(/'/, "''")}'"
      when Fixnum:
        return object
      when Array:
        objs = []
        object.each do |o|
          objs << quote(o)
        end
        return objs
      else
        return "'#{object}'"
      end
    end
    
    def execute(sql)
      puts sql
      Seedy.connection.query(sql) 
    end
    
    # Checks to see if we have all the neccessary attributes
    def valid?
      clear_errors
      valid = true
      self.class.columns.keys.each do |attribute|
        if @attributes[attribute].blank?
          @errors.add "#{attribute} cannot be blank"
          valid = false
        end
      end
      valid
    end
    
    def errors
      @errors.to_a.join(", ")
    end
    
    def clear_errors
      @errors = ::Set.new
    end
    
    # Generates get/set methods for keys in the attributes hash
    def define_attribute_methods
      return if self.class.attribute_methods_generated
      table_columns.each do |k|
        self.class.module_eval %Q?
        def #{k}
          read_attribute :#{k}
        end
        def #{k}=(value)
          write_attribute :#{k},value
        end
        ?
      end
      self.class.attribute_methods_generated = true
    end
    
    def generate_attributes_for(columns)
      columns.each_pair do |column, generator|
        case generator
        when Symbol:
          next if generator == :association
          write_attribute(column, Seedy::Random.send(generator))
        else
          write_attribute(column, generator)
        end
      end
    end
    
    def attribute_for_inspect(attr_name)
      value = read_attribute(attr_name)
      if value.is_a?(String) && value.length > 50
        "#{value[0..50]}...".inspect
      elsif value.is_a?(Date) || value.is_a?(Time)
        %("#{value.to_s}")
      else
        value.inspect
      end
    end
    
  end
end