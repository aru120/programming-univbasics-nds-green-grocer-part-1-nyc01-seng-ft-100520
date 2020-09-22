require 'pry'


grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
]


def find_item_by_name_in_collection(name, collection)
  
   result = nil
  collection.each do |key|
   
    if key[:item] == name
      result = key
    end
end
   return result
end



def consolidate_cart(cart)
  newHash ={}
cart.each_with_index do |key|
final = find_item_by_name_in_collection(key.values[0],newHash)
  if final == nil
    newHash = key
    newHash.store(:count,1)
   
  else
  newHash[:count] += 1
end
end

  newHash

 
end

#consolidate_cart(grocery_shelf)

  