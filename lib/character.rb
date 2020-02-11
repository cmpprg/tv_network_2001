class Character
  attr_accessor :name, :actor, :salary

  def initialize(**args)
    @name = args[:name]
    @actor = args[:actor]
    @salary = args[:salary]
  end
  
end
