class Convert

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


  def start

	   file = IO.readlines('/home/jarvis/test_app/gprSorter/test_file.gpr')
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

  def create_first_file

      File.open('file1.gpr', 'a') do |f|
         f.puts @header
         f.puts @block1
         f.puts @block2
         f.puts @block5
         f.puts @block6
      end


  end
  
  def create_second_file

      File.open('file2.gpr', 'a') do |f|
         f.puts @header
         f.puts @block3
         f.puts @block4
         f.puts @block7
         f.puts @block8
      end

  end

end

