variable "filename" {
    default = "pets.txt"
}

variable"file-content" {
    type = string
    default = "We hate pets!"
}

variable "prefix" {
    default = ["Mr", "Mrs", "Sr"]
    type = list
}

variable "separator" {
    default = "."
}

variable "length" {
    default = "2"
    type = number
    description = "lenght of the pet name"
}

variable "password_change" {
    default = "true"
    type = bool
}

variable "estudiante" {
    type = object({
        name = string
        age = number
        food = list(string)
        favorite_pet = string
    })

    default = {
        name = "Jorge"
        age = 21
        food = ["blueberries", "avocado", "orange"]
        favorite_pet = "dog"
    }
}
