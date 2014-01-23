require 'convert'

class GprSort
 
 attr_accessor :actions

 def initialize
     @actions = ['sort', 'help', 'quit']
 end

 def get_commands
     action = nil
     until @actions.include?(action)
     puts "Actions: " + @actions.join(', ') if action
     print "gprSorter->> "
     user_input = gets.chomp
     action = user_input.downcase.strip
     end
   return action
 end

 def start_app
     intro
         result = nil
         until result == :quit
           action = get_commands
           result = input_commands(action)
         end
      conclusion
 end

 def launch_sort
     convert = Convert.new
     convert.start
 end

 def input_commands(action)

     case action
       when "sort"
          launch_sort
       when "help"
          format_help
       when "quit"
           return :quit
       else
          puts "\nInput command cannot be recognized. Try available keywords!!"
       end
 end

 def intro
     puts  " "
     puts  " "
     print "   * * * * * * * * * * * * * * * * * * * * * * * * * * * * ** * *  \n"
     puts  " *                                                                  *"
     print " *                       Welcome to the gprSorter                   *\n"
     print " * An interactive Ruby program to help you sort blocks in .gpr file*\n"
     puts  " *                                                                  *"
     puts  " *                                                                  *"
     print "  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \n"
     puts  " "
     puts  " "
  end

  def conclusion
     puts  "\n\n     ### Goodbye and Thank you for using gprSorter!     ###\n\n"
     puts  "                       Kumar Saurabh Singh                         "
     puts  "                     kumarsaurabh20@gmail.com                      "
     puts  "                   ############################                    "
  end

  def format_help
     puts " "    
     puts "\n Format of 8 blocks in sequential order"
     puts "                                      "
     puts "                 Microarrray chip                   "
     puts " ---------------------------------------------------"
     puts "                                                    "
     puts " *******************" + "     " + "*******************"
     puts " * block1 * block2 *" + "     " + "* block3 * block4 *"
     puts " *******************" + "     " + "*******************"
     puts " * block5 * block6 *" + "     " + "* block7 * block8 *"
     puts " *******************" + "     " + "*******************"
     puts " "
     puts " Format 1 will put block 1, 2, 5, and 6 in one gpr file and blocks 3, 4, 7, 8 in other file."
     puts " "
     puts " "
     puts "Format of 2 blocks in sequential order"
     puts ""
     puts "         Microarrray chip                   "
     puts " -------------------------------------------"
     puts "                                            "
     puts " **********" + "     " + "********** "
     puts " * block1 *" + "     " + "* block2 * "
     puts " **********" + "     " + "********** "
     puts " "
     puts " Format 2 will put blocks 1 and 2 in separate gpr file.\n"
     puts " "
  end

end
