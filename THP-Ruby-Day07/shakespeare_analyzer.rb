# frozen_string_literal: true

def jean_michel_data(str, dictionary)
  hash = {}
  dictionary.each do |n|
    str.scan(/#{n}/i).count.positive? ? hash[n] = str.scan(/#{n}/i).count : nil
  end
  hash
end

def get_file_as_string(filename)
  data = ''
  f = File.open(filename, "r")
  f.each_line do |line|
    data += line
  end
  data
end

shakespeare = get_file_as_string("shakespeare.txt")

swear_words = get_file_as_string("swearWords.txt")

p jean_michel_data(shakespeare, swear_words.split("\r\n"))