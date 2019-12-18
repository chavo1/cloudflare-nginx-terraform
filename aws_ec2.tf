provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "ec2" {
  ami           = "ami-04169656fea786776"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.chavo.id

  connection {
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
    host        = self.public_ip // tf12 
  }
  provisioner "file" {
    source      = "asset"
    destination = "/tmp"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/asset/setup-web.sh",
      "sudo /tmp/asset/setup-web.sh",
    ]
  }
}