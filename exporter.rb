require 'json'

class Exporter

  def self.export(data, file_name)
    formatted_data = format(data)

    file = Kernel.open(file_name, 'w')
    JSON.dump(formatted_data, file)
  end

  def self.format(data)
    data
  end

end