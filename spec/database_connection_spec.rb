require 'database_connection'

describe DatabaseConnection do
  describe '.setup' do
    it 'sets up a connection to a database using PG' do
      expect(PG).to receive(:connect).with(dbname: 'chitter_test')
      DatabaseConnection.setup('chitter_test')
    end
  end

  describe '.query' do
    it 'executes a query via pg' do
      connection = DatabaseConnection.setup('chitter_test')
      expect(connection).to receive(:exec_params).with("SELECT * FROM chits;", [])
      DatabaseConnection.query("SELECT * FROM chits;")
    end
  end

end