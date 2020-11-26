require './lib/database_connection'
require './lib/database_connection_setup'

class Peep

  attr_reader :text

  def initialize(text:)
    @text = text
  end

  def self.add(text:)
    peep = DBconnect.query("INSERT INTO peeps (text) VALUES('#{text}') RETURNING text;")
    Peep.new(text: peep[0]['text'])
  end

end