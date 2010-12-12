module Seedy
  class DatabaseBuffer < AbstractBuffer
    @@limit  = 2
    class << self
      def flush
        begin_db_transaction
        @@buffer.length.times {
          record = @@buffer.shift
          execute(record.to_sql)
        }
        commit_db_transaction
      end
      def begin_db_transaction #:nodoc:
        execute "BEGIN"
      rescue Exception
        # Transactions aren't supported
      end

      def commit_db_transaction #:nodoc:
        execute "COMMIT"
      rescue Exception
        # Transactions aren't supported
      end

      def rollback_db_transaction #:nodoc:
        execute "ROLLBACK"
      rescue Exception
        # Transactions aren't supported
      end
      
      def execute(sql)
        puts sql
        Seedy.connection.query(sql) 
      end      
    end
    
  end
end