require 'rubygems'
require 'xmlsimple'
  config = XmlSimple.xml_in('Psychology_New.aiml', { 'KeyAttr' => 'name' })

p config.keys()

p config["category"][0].keys()

p config["category"][0].length

p config["category"].length

p config

#			removal_list =["<angry/>", "<sad/>", "<funny/>", "<serious/>", "<sec>", "</sec>"]
#			
#			for i in 1..removal_list.length
#				respn[removal_list[i-1]] = ''
#			end
