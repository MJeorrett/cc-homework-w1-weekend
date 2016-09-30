require('pry-byebug')

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

def remove_pet_by_name(pet_shop, name)
  pets = pet_shop[:pets]
  for pet in pets
    if pet[:name] == name
      pets.delete(pet)
      return nil
    end
  end
end

def add_pet_to_stock(pet_shop, pet)
  pet_shop[:pets] += [pet]
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, pet)
  customer[:pets] += [pet]
end

def customer_can_afford_pet(customer, pet)
  return customer[:cash] >= pet[:price]
end

def sell_pet_to_customer(pet_shop, pet, customer)
  return nil if !pet_shop[:pets].include?(pet) || !customer_can_afford_pet(customer, pet)
  pet_price = pet[:price]
  customer[:cash] -= pet_price
  pet_shop[:admin][:total_cash] += pet_price
  pet_shop[:pets] -= [pet]
  pet_shop[:admin][:pets_sold] += 1
  customer[:pets] += [pet]
  return true
end
