class Ship

  @@ships = []

attr_accessor :name, :type, :booty_attributes

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty_attributes]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end

end
