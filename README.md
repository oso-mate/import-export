## ImportExport

##### *A Ruby toolkit to import CSV files and export them into JSON.*

- Simplicity is the fundamental principle of this library.
- It can be included in all types of Ruby applications.
- New formats can be easily included and customized.

### File structure

- **script** is an executable ruby file that sets up and calls ImportExport (example).
- **import_export.rb** is the class that controls the import-export process.
- **importer.rb** is the class that opens, reads and transforms input files.
- **exporter.rb** is the class that formats and writes the output files.
- **exporters/** includes subclasses of format-customized exporters.

### Instructions

- Available formats should be configured and passed as arguments for running the process
````
  ImportExport.run!({ format: Exporter::Format, any_format: Exporter, ... })
````
- Format should be consistently named, so it is the name of the CSV file to import and JSON to export (e.g.: format "stock_items" would receive "stock_items.csv" and dump "stock_items.json")
- Format should have an existing Exporter class to customize or use the base Exporter class (e.g. `Exporter::StockItems`)

### Adding Formats

- Included here is an example of how to import and export stock items (exporters/stock_items.rb).
- The class method format can be rewritten and customized to return a new hash for each row being exported.
