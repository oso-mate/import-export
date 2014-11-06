require_relative 'importer'
require_relative 'exporter'

Dir["exporters/*.rb"].each { |exporter| require_relative exporter }

class ImportExport

  def self.run!(formats)
    formats.each do |format, exporter|
      result = Importer.import("#{format}.csv")
      exporter.export(result, "#{format}.json")
    end
  end
end
