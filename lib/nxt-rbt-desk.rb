#require "nxt-rbt-desk/version"
require "java"
require "jar/jtools.jar"
require "jar/pccomm.jar"
require "jar/pctools.jar"
require "jar/3rdparty/bluecove.jar"
require "jar/3rdparty/bluecove-gpl.jar"
#require "mongoid"

import "lejos.pc.comm.NXTInfo"
import "lejos.pc.comm.NXTCommFactory"
import "lejos.pc.comm.NXTCommBluecove"
import "lejos.pc.comm.NXTComm"
import "java.io.InputStream"
import "java.io.BufferedInputStream"


#Mongoid.load!("mongoid.yml")

def process_message(message)
  puts "Message: #{message}"
  #parsed_message = message.split(" ")
  #waypoint = Waypoint.new(x: parsed_message[0], y: parsed_message[1], feature: parsed_message[2])
  #waypoint.save
end

def start
  nxtInfo = NXTInfo.new
  nxtInfo.deviceAddress = "00165312BBE5"
  com = NXTCommBluecove.new
  com.open(nxtInfo)
  input_stream = BufferedInputStream.new(com.get_input_stream)

  #redis = Redis.new(:port => 6380)

  message = ""

  begin
    b = input_stream.read
    c = b.chr   
    unless c == ","
    	message += b.chr	
    else
    	#process
    	process_message(message)
    	message = ""
    end  
  end while (b != -1)
  input_stream.close
end

start



