# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  comparator = []
  return_key = ""
  hash_value_array = []
  hash_key_array = []
  
  name_hash.each do |key, value|
    hash_key_array << key
    hash_value_array << value
  end
  
  while name_hash.length > 1
    name_hash.each do |key, value|
      name_hash.length.times do |x|
        comparator << (value <=> hash_value_array[x])
      end
      if comparator.any?(-1)
        name_hash.delete(key)
        comparator = []
      end
    end
  end
  
  return_key == "" ? nil : return_key
end