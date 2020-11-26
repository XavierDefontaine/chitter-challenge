require './lib/database_connection'
require './lib/database_connection_setup'

class Peep

  attr_reader :id, :text, :date_time

  def initialize(id:, text:, date_time:)
    @id = id
    @text = text
    @date_time = date_time
  end

  def self.add(text:)
    peep = DBconnect.query("INSERT INTO peeps (text) VALUES('#{text}') RETURNING id, text, date_time;")
    Peep.new(id: peep[0]['id'], text: peep[0]['text'], date_time: peep[0]['date_time'])
  end

  def self.all
    peeps = DBconnect.query("SELECT * FROM peeps;")
    peeps.map{|peep| Peep.new(id: peep['id'], text: peep['text'], date_time: peep['date_time'])}
  end

end