# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  comparator = []
  return_key = ""
  while name_hash.length > 1
    name_hash.each do |key, value|
      name_hash.length.times do |x|
        comparator << (value <=> name_hash[x])
      end
      if comparator.any?(-1)
        name_hash.delete(key)
        comparator = []
      end
    end
  end
  
  return_key == "" ? nil : return_key
end