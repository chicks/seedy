module Seedy
  class AbstractBuffer
    
    @@buffer = []
    @@limit  = 5
    
    class << self
      def <<(record)
        raise InvalidRecord, record.table_name + ": " + record.errors.to_a.join(", ") unless record.valid?
        @@buffer << record
        flush if @@buffer.length >= @@limit
      end
      def flush
        puts "Flushing!"
        @@buffer.length.times {
          record = @@buffer.shift
          if record.valid?
            puts record.to_sql
          else
            puts record.errors
          end
        }
      end
    end

  end
end