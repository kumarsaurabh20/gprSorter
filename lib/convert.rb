require 'fileCheck'

class Convert




  def start
	   file = IO.readlines('file_path')
           file.each_with_index do |line, index|

                 next if index == 1                  
       
                 if line.chr == '1' 
                    @block1 << line
                 elsif line.chr == '2'
                    @block2 << line
                 elsif line.chr == '3'
                    @block3 << line 
                 elsif line.chr == '4'
                    @block4 << line
                 elsif line.chr == '5'
                    @block5 << line
                 elsif line.chr == '6'
                    @block6 << line
                 elsif line.chr == '7'
                    @block7 << line
                 elsif line.chr == '8'
                    @block8 << line
                 else 
                    @header << line                  
                 end
           end

        create_first_file
        create_second_file
        output

       
  end

  def create_first_file

      File.open('sample_1.gpr', 'a') do |f|
         f.puts @header
         f.puts @block1
         f.puts @block2
         f.puts @block5
         f.puts @block6
      end


  end
  
  def create_second_file

      File.open('sample_2.gpr', 'a') do |f|
         f.puts @header
         f.puts @block3
         f.puts @block4
         f.puts @block7
         f.puts @block8
      end

  end

  def output
        puts "##################Header######################"
        puts @header
        puts "##################block1######################"
        puts @block1
        puts "##################block2######################"
        puts @block2
        puts "##################block3######################"
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

