terraform {
  required_providers {
    example = {
      source = "mcr70/example"
    }
  }
}


provider "example" {}

resource "example" "test" {
  a_value = "Hello, world!"
}
