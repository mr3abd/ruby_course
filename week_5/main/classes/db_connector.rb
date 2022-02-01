# require 'pg'
require 'pg'
# require 'active_record'
# ActiveRecord::Base.establish_connection(
#   adapter: 'postgresql',
#   host: 'localhost',
#   username: 'ruby_kit',
#   password: 'ruby_kit',
#   database: 'school'
# )
class DbConnector
  def self.conn
    # Add ENV Later
    PG.connect(dbname: ENV["DB_NAME"] )
  end
  def self.all
    conn.exec( "SELECT * FROM #{self.table_name}").select_values
  end


  def self.reformat_database
    all
  end

  def self.all_json
    conn.exec( "    SELECT json_agg(#{self.table_name})::jsonb FROM  #{self.table_name}").values
  end
end
