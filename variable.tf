variable "ami" {
  default = "ami-0fcf52bcf5db7b003"
}
variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "teraform_key"
}
variable "user" {
  default = "ubuntu"
}
variable "key" {
  default = "teraform_key.pem"
}

variable "inlineparams" {
  default =  ["sudo apt update -y",
    "sudo apt install default-jdk -y",
    "set -ex",
    "sudo apt-get update -y",
    "sleep 1",
    "echo COMPLETED"
    ]
}

variable "sgname" {
  default = "test-sg"
}

variable "sgdescription" {
  default = "Security group"
}

variable "access_key" {}
variable "secret_key" {}