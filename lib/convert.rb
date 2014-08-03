#require 'fileCheck'

class Convert

  def get_file     

      begin
      data_files = Dir.entries("#{APP_ROOT}/data")
      data_files.delete_if {|e| e == "." || e == ".."}
      
      if data_files.size > 3
         raise "Maximum one .gpr file is allowed in the data directory!! Currently there is #{data_files.size} files"
      end
      
      data_files.each do |file, index|

      ext_name = File.extname(file)       
	      if ext_name == ".gpr"
	         @path = File.absolute_path("#{APP_ROOT}/data/#{file}")
                 puts @path.to_s 
                 return @path
	      else
		 raise "File does not seem to be GPR. Please use .gpr extended file!!!"
	      end
       

      end
      
      rescue Exception => e
             puts "Oops, Error occured in creating data file path!! ##" + " " + e.message.to_s
      end
          
  end

  def start
  @block1, @block2, @block3, @block4, @block5, @block6, @block7, @block8, @header = [],[],[],[],[],[],[],[],[] 
    begin
           path = get_file
	   file = IO.readlines(path)
           file.each_with_index do |line, index|

                 next if index == 1                  
       
                 if line.chr == '1' 
                    @block1.push(line)
                 elsif line.chr == '2'
                    @block2.push(line)
                 elsif line.chr == '3'
                    @block3.push(line)
                 elsif line.chr == '4'
                    @block4.push(line)
                 elsif line.chr == '5'
                    @block5.push(line)
                 elsif line.chr == '6'
                    @block6.push(line)
                 elsif line.chr == '7'
                    @block7.push(line)
                 elsif line.chr == '8'
                    @block8.push(line)
                 else 
                    @header.push(line)                 
                 end
           end

    
    format = ask_format
 
	    if format == "one"
		create_first_file_format_one
		create_second_file_format_one		
	    elsif format == "two"
	        create_first_file_format_two
                create_second_file_format_two                 
	    else
                 puts "Please select a proper format for sorting!!"
	    end 

     output

    rescue Exception => e
           puts "Error occured in .gpr file reading!! ##" + " " + e.message.to_s
    end
       
  end

  def create_first_file_format_two

   begin
      File.open('sample_1.gpr', 'a') do |f|
         f.puts @header
         f.puts @block1
      end
   rescue Exception => e
          puts "Aahh, error occured in first file creation!! ##" + " " +e.message.to_s
   end

  end

  def create_second_file_format_two

   begin
      File.open('sample_2.gpr', 'a') do |f|
         f.puts @header
         f.puts @block2
      end
   rescue Exception => e
          puts "Aahh, error occured in first file creation!! ##" + " " +e.message.to_s
   end

  end


  def create_first_file_format_one

   begin
      File.open('sample_1.gpr', 'a') do |f|
         f.puts @header
         f.puts @block1
         f.puts @block2
         f.puts @block5
         f.puts @block6
      end
   rescue Exception => e
          puts "Aahh, error occured in first file creation!! ##" + " " +e.message.to_s
   end

  end
  
  def create_second_file_format_one

    begin
      File.open('sample_2.gpr', 'a') do |f|
         f.puts @header
         f.puts @block3
         f.puts @block4
         f.puts @block7
         f.puts @block8
      end
    rescue Exception => e
           puts "Aahh, error occured in Second file creation!! ##" + " " +e.message.to_s
    end

  end

  def ask_format

      print "With which format you would like to proceed? try 'help' for details, (one/two): "
      input = gets.chomp.strip
      return input
    
  end

  def output
        puts "##################Header######################"
        puts @header
        puts "##################block1######################"
        puts @block1
        puts "##################block2######################"
        puts @block2
        puts "##################block3######################"

     if !@block3.nil?
        puts @block3 
        puts "##################block4######################"
        puts @block4
        puts "##################block5######################"
        puts @block5
        puts "##################block6######################"
        puts @block6
        puts "##################block7######################"
        puts @block7
        puts "##################block8######################"
        puts @block8
     end
  end

  

end

