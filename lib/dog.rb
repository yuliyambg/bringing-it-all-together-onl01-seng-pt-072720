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

  # def initialize(h)
  # h.each {|k,v| public_send("#{k}=",v)}
  # end


  def initialize(h)
  h.each {|k,v| self.k = v }
  end

end