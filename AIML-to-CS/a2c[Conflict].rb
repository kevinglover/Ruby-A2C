require 'rubygems'
require 'xmlsimple'
  config = XmlSimple.xml_in('w.aiml', { 'KeyAttr' => 'name' })

p config.keys()

p config["category"][0].keys()

p config["category"][0].length

p config.length


def hasRandom(config_n)
	begin
		ranCheck = config_n["random"][0]["li"]
	rescue
		ranCheck =false
	else
		return ranCheck
	end
end

cs_format = ''

for x in 1..config["category"][0].length

nth = x-1

pattern = config["category"][nth]["pattern"][0].to_s.capitalize 

template = config["category"][nth]["template"][0]

random_indicator = hasRandom(template)

if (random_indicator)
	
	temp = ''
	
	for i in 1..hasRandom(template).length
	
		temp +='['
		temp += config["category"][nth]["template"][0]["random"][0]["li"][i-1]
		temp +=']'
	
		template= temp.to_s
	
	end
	
	#template = hasRandom(template).to_s
else
	template = template.to_s

end

cs_format += "u: ("+pattern + ") " + template + "\n"

end

puts cs_format