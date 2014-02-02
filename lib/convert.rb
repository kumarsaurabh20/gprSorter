class Convert

 attr_accessor :header, :block1, :block2, :block3


  def initialize
     @header = []
     @block1 = []
     @block2 = []
     @block3 = []
  end


  def start

	   file = IO.readlines('/home/jarvis/test_app/gprSorter/test_file.gpr')
           file.each do |line|
          
                 if line.chr == '1'
                    @block1 << line
                 elsif line.chr == '2'
                    @block2 << line
                 elsif line.chr == '3'
                    @block3 << line
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


  end

  def create_first_file

      File.open('file1.gpr', 'a') do |f|
         f.puts @header
         f.puts @block1
         f.puts @block3
      end


  end
  
  def create_second_file

      File.open('file2.gpr', 'a') do |f|
         f.puts @header
         f.puts @block2
      end

  end

end

