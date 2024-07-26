require 'json'

class JsonRepository
  def self.read(file)
    unless File.exist?(file)
      puts "The file #{file} doesn't exist."
      return nil
    end

    begin
      json_data = File.read(file)
      data = JSON.parse(json_data)
      return data
    end
  end

  def self.add(file, obj)
    data = read(file) || []

    data << obj

    File.open(file, 'w') do |file|
      file.puts JSON.pretty_generate(data)
    end
  end
end
