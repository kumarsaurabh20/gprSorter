class FileCheck

 attr_accessor :header, :block1, :block2, :block3, :block4, :block5, :block6, :block7, :block8


 def initialize
     @header = []
     @block1 = []
     @block2 = []
     @block3 = []
     @block4 = []
     @block5 = []
     @block6 = []
     @block7 = []
     @block8 = []
 end


 def self.file_exist?(file)
     if file and File.exists?(file)
        return true
     else
        return false
     end
 end

 def self.file_usable?(file)     
      return false unless file
      return false unless File.exists?(file)
      return false unless File.readable?(file)
      return false unless File.writable?(file)
      return true
 end

 def create_file(file)
     File.open(file, 'a')
     return file_usable?(file)
 end

 def append_file(file, format)

      first_file_handler = create_file(file)
      if first_file_handler and format == 1
         first_file_handler.puts @header
         first_file_handler.puts @block1
         first_file_handler.puts @block2
         first_file_handler.puts @block5
         first_file_handler.puts @block6
      elsif file_handler and format == 2
         first_file_handler.puts @header
         first_file_handler.puts @block1 
      else
         puts "format code is not recognized. Try Again!"
      end     

      second_file_handler = create_file(file)
        if file_handler and format == 1
         second_file_handler.puts @header
         second_file_handler.puts @block3
         second_file_handler.puts @block4
         second_file_handler.puts @block7
         second_file_handler.puts @block8
      elsif file_handler and format == 2
         second_file_handler.puts @header
         second_file_handler.puts @block2 
      else
         puts "format code is not recognized. Try Again!"
      end     

  end

  def read_file(path)
      file = IO.readlines(path)
      return file
  end

end
