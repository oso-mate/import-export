## ImportExport

##### *A Ruby toolkit to import CSV files and export them into JSON.*

- Simplicity is the fundamental principle of this library.
- It can be included in all types of Ruby applications.
- New formats can be easily included and customized.

### File structure

- **script** is an executable ruby file that takes care of import-export execution.
- **importer.rb** is the class that opens, reads and transforms input files.
- **exporter.rb** is the class that formats and writes the output files.
- **exporters/** includes subclasses of format-customized exporters.

