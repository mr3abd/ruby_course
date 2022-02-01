require_relative 'db_connector'
class Person < DbConnector
  def self.table_name
    "person"
  end
end