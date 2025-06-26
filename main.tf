resource "random_pet" "nested_01" {
  keepers = {
    # Generate a new pet name each time
    time = timestamp()
  } 
}

output "nested_01_pet" {
  value = random_pet.nested_01.id
}
