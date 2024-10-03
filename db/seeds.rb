puts "Cleaning DB..."

Review.destroy_all
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all

puts "Creating owners..." # Because it's the parent!

owner1 = Owner.create!(nickname: "TommyV")
owner2 = Owner.create!(nickname: "Paulking79")

puts "Creating cars..."

Car.create!(brand: "Ferrari", model: "Testarossa", year: 1995, fuel: "Petrol", owner: owner1)
Car.create!(brand: "Mercedes", model: "EQS Suv", year: 2024, fuel: "Electric", owner: owner2)

# car1 = Car.new(brand: "BMW", etc....)
# car1.save

puts "Seed created! #{Owner.all.count} owners created & #{Car.all.count} cars created!"
