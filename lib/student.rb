require_relative "../config/environment.rb"

class Student

  def initialize(id=nil, :name, grade)
    @id = id
    @name = name
    @grade = grade 
  end

  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS songs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
        )
        SQL
    DB[:conn].execute(sql)
  end


end
