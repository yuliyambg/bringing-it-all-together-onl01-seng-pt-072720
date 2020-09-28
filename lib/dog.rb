class Dog
  
  attr_accessor:id, :name, :breed
  

  # def initialize(id=nil, name, breed)
  #   @id = id
  #   @name = name
  #   @breed = breed
  # end
  
  # def initialize(args)
  #   @id = args[0]
  #   @name = args[1]
  #   @breed = args[2]
  # end

  def initialize(h)
  h.each {|k,v| public_send("#{k}=",v)}
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS dogs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        breed TEXT
        )
    SQL

    DB[:conn].execute(sql)
  end

end