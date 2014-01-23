#A ruby interactive program to manipulate .gpr files for Microarray data analysis


APP_ROOT = File.dirname(__FILE__)
$:.unshift(File.join(APP_ROOT, 'lib'))

require 'gpr_sort'

gpr_sort = GprSort.new
gpr_sort.start_app
