require 'json'

class JsonRepository
  def self.read(file)
    unless File.exist?(file)
      puts color_text("File doesn't exits!", "red")

      return nil
    end

    begin
      json_data = File.read(file)
      data = JSON.parse(json_data)
      return data
    rescue JSON::ParserError => e
      puts "Error when analysing the JSON file: #{e}"

      return nil
    end
  end

  def self.record(file, data)
    File.open(file, 'w') do |file|
      file.puts JSON.pretty_generate(data)
    end
  end

  def self.add(file, obj)
    data = read(file) || []

    data << obj

    self.record(file, data)
  end
end
