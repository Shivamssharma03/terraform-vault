provider "aws" {
    region = "us-east-1"
  
}

provider "vault" {
  address = var.vault_address
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = var.vault_role_id
      secret_id = var.vault_secret_id
    }
  }
}




data"vault_kv_secret_v2" "example" {
  mount          = "kv"
  name           = "kv"
 
}

resource "aws_instance" "my_instance" {
  ami           = var.ami
  instance_type = data.vault_kv_secret_v2.example.data["instance_type"]

  tags = {
    Name = shivi
  }
}

