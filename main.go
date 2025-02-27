package main

import (
	"context"
	"log"
	"terraform-provider-example/internal/provider"

	"github.com/hashicorp/terraform-plugin-framework/providerserver"
)

func main() {
	err := providerserver.Serve(context.Background(), provider.NewProvider, providerserver.ServeOpts{
		Address: "registry.terraform.io/mcr70/example",
	})
	if err != nil {
		log.Fatal(err)
	}
}
