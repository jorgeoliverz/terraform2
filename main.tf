resource "local_file" "pet" {
    filename = var.filename
    content = var.file-content
}

resource "random_pet" "my-pet" {
    prefix = var.prefix[0]
    separator = var.separator
    length = var.length
}

resource "local_file" "variable_pet" {
    filename = "petid.txt"
    content = "${random_pet.my-pet.id}"
}