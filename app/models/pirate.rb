class Pirate

  @@pirates = []

attr_accessor :name, :weight, :height

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@piratess << self
  end

  def self.all
    @@pirates
  end


end
