require 'json'
json = File.read('../files/input.json')
obj = JSON.parse(json)

hash = {"President"=>"Alan Isaac", "CEO"=>"David Richardson", "India"=>["Sachin Tendulkar", "Virender Sehwag", "Gautam Gambhir"], "Srilanka"=>["Lasith Malinga", "Angelo Mathews", "Kumar Sangakkara"], "England"=>["Alastair Cook", "Jonathan Trott", "Kevin Pietersen"]}

p obj
p hash.to_json