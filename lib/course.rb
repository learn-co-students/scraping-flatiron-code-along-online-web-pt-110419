

class Course
  attr_accessor :title, :schedule, :description

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end


=begin
  def title
  end

  def schedule
  end

  def description
  end
=end

end
