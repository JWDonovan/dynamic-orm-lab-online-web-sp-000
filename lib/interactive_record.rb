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
end

# attr_accessor :id, :name, :grade
#
# def self.column_names
# end
#
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
