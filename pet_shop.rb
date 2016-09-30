def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number)
  return pet_shop[:admin][:pets_sold] += number
end

def stock_count(pet_shop)
  return pet_shop[:pets].size
end

def pets_by_breed(pet_shop, breed)
  by_breed = []
  for pet in pet_shop[:pets]
    by_breed.push(pet) if pet[:breed] == breed
  end
  return by_breed
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == name
  end
  return nil
end
