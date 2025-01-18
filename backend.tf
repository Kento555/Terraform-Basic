terraform {
  backend "s3" {
    bucket = "sctp-ce9-tfstate"               # This is an existing bucket to store terraform tfstate file
    key    = "ws-ce9-module2-lesson2.tfstate" # Replace the value of key to <your suggested name>.tfstate 
    region = "us-east-1"
  }
}