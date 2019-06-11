#! /usr/bin/ruby
#
# Script written by Thomas Harriett
#  ___________  ___       __    __   
# ("     _   ")|"  |     /" |  | "\  
#  )__/  \\__/ ||  |    (:  (__)  :) 
#     \\_ /    |:  |     \/      \/  
#     |.  |     \  |___  //  __  \\  
#     \:  |    ( \_|:  \(:  (  )  :) 
#      \__|     \_______)\__|  |__/  
#                                    
# 




# import packages
require 'pycall/import'
include PyCall::Import

# I use PyCall in order to use the superior python libraries. This method almost works, most of the time.
pyimport :numpy
pyimport :cv2

puts "First image location?"
image_location = gets.chomp 
image = cv2.imread(image_location)

puts "Second image location?"
image_location = gets.chomp
image2 = cv2.imread(image_location)

# merges the images
output = cv2.bitwise_and(image, image2)

# shows the image
cv2.imshow("images", numpy.hstack([image, output]))
cv2.waitKey(0)


