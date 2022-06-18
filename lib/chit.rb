class Chit

  attr_reader :content, :id

  def initialize(id:, content:)
    @content = content
    @id = id
  end

  def self.all
    result = DatabaseConnection.query(
      "SELECT * FROM chits", []
    )
    result.map { |entry| 
      Chit.new(content: entry['text'], id: entry['id']) }
  end

  def self.create(content:)
    result = DatabaseConnection.query(
      "INSERT INTO chits (text) VALUES($1) RETURNING id, text", [content]
    )
    Chit.new(content: result[0]['text'], id: result[0]['id'])
  end
end