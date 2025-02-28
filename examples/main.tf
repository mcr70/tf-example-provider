terraform {
  required_providers {
    example = {
      source = "mcr70/example"
    }
  }
}


provider "example" {}

resource "example" "test" {
  a_value = "Hello, World!"
}

resource "example" "test2" {
  a_value = "Hello, World again!"
}
