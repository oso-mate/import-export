require 'csv'

class Importer

  def self.import(file_name = "")
    return unless File.exists? file_name

    [].tap do |result|
      CSV.foreach(file_name, headers: true) do |row|
        result.push row.to_hash
      end
    end
  end

end