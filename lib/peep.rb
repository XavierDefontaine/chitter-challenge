require './lib/database_connection'

class Peep

  attr_reader :text

  def initialize(text:)
    @text = text
  end

  def self.add(text:)
    Peep.new(text: text)
  end

end