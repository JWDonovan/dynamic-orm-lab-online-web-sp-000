require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  attr_accessor :id, :name, :grade

  def initialize(id: nil, name:, grade:)
    @id, @name, @grade = id, name, grade
  end

  def self.table_name
  end

  def self.column_names
  end

  def table_name_for_insert
  end

  def col_names_for_insert
  end

  def values_for_insert
  end

  def save
  end

  def self.find_by_name(name)
  end

  def self.find_by
  end
end
