# your code goes here
def begins_with_r(array)
  array.all? { |word| word.start_with?('r') ? true : false } # all words in array (all?) starts with 'r' then give true, otherwise false
end
  
 def contain_a(array)
  new_array = array.delete_if {|word| !word.include?('a')}
 end 

def first_wa(array)
new_array = []
array.each do |words|
  if words.is_a? Symbol
    new_array << words.to_s
  else new_array << words
  end 
end 
return new_array.find{|x| x.start_with?('wa')}
end

def remove_non_strings(array)
  array.delete_if{|x| !x.is_a? String}
end 
  
  
def count_elements(array)
  array.group_by(&:itself)
  .map {|key,value| key.merge(count: value.length)}
end 

def merge_data(keys,data)
  keys[0].values.map.with_index {|v, i| data[i].merge(v)}
end 

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

def find_cool(array)
array.select { |i| i.any? {|k,v| v == "cool"}}
end



  
  