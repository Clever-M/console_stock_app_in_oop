require 'csv'

class CsvRepository
  def self.read(file)
    unless File.exist?(file) && !File.zero?(file)
      puts color_text("File doesn't exist!", "red")
      return nil
    end

    begin
      data = CSV.read(file, headers: true)
      return data
    rescue CSV::MalformedCSVError => e
      puts "Error when analyzing the CSV file: #{e}"
      return nil
    end
  end

  def self.record(file, data)
    CSV.open(file, 'w', write_headers: true) do |csv|
      csv << data.headers if data.headers
      data.each do |row|
        csv << row
      end
    end
  end

  def self.add(file, obj)
    data = read(file)
    if data
      CSV.open(file, 'a'  ) do |csv|
        csv << obj.values
      end
    else
      CSV.open(file, "wb") do |csv|
        csv << obj.keys
        csv << obj.values
      end
    end
  end
end
