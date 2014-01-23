class FileCheck



 def self.check_file
     


 end

 def create_first_file

      File.open('sample_1.gpr', 'a') do |f|
         format_one(f)
      end


  end
  
  def create_second_file
      File.open('sample_2.gpr', 'a') do |f|
      format_two(f)   
      end
  end

  def read_file(path)
      file = IO.readlines(path)
      return file
  end

  def format_one(f)
         f.puts @header
         f.puts @block1
         f.puts @block2
         f.puts @block5
         f.puts @block6
  end
  
  def format_two(f)
         f.puts @header
         f.puts @block3
         f.puts @block4
         f.puts @block7
         f.puts @block8
  end
  
  def format_three(f)
         f.puts @header
         f.puts @block1
  end

  def format_four(f)
      f.puts @header
      f.puts @block2
  end


end
