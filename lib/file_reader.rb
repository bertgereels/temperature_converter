
class FileReader

  # Reads temperature in degrees celcius from a .txt file
  def self.file_open(path)
    File.open(path, "r") do |f|
      f.each_line do |line|
        temperature = line.to_f
          return temperature
      end
    end
  end

end
