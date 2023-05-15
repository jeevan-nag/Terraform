//

resource "local_file" "name" {
  filename = "./root/introduction.txt"
  content = "Welcome to Terraform Training Center"
}

resource "local_file" "dog" {
  filename = var.filename
  content = var.content 
}




