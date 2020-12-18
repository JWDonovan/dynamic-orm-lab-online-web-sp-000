require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  def initialize(options = {})
    options.each do |key, value|
      self.send("#{key}=", value)
    end
  end

  def self.table_name
    self.to_s.pluralize.downcase
  end

  def self.column_names
    sql = "pragma table_info('#{tabel_name}')"
    table = DB[:conn].execute(sql)

    column_names = []
    table.each do |row|
      column_names << row["name"]
    end
  end
end

def self.column_names

    sql = "pragma table_info('#{table_name}')"

    table_info = DB[:conn].execute(sql)
    column_names = []
    table_info.each do |row|
      column_names << row["name"]
    end
    column_names.compact
  end

# def table_name_for_insert
# end
#
# def col_names_for_insert
# end
#
# def values_for_insert
# end
#
# def save
# end
#
# def self.find_by_name(name)
# end
#
# def self.find_by
# end
