require 'csv'

class CsvRepository
  def self.read(file)
    unless File.exist?(file)
      puts color_text("File doesn't exist!", "red")
      return nil
    end

    begin
      data = CSV.read(file, headers: true)
      return data.map(&:to_h)
    rescue CSV::MalformedCSVError => e
      puts "Error when analyzing the CSV file: #{e}"
      return nil
    end
  end

  def self.record(file, data)
    CSV.open(file, 'w', write_headers: true) do |csv|
      csv << data.first.keys
      data.each do |row|
        csv << row.values
      end
    end
  end

  def self.add(file, obj)
    data = read(file)

    data << obj

    self.record(file, data)
  end
end
