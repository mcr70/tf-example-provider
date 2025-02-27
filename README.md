# Install

## Pre-requisities

```bash
brew install go
```

# Compile and install
```bash
# Build this locally into this folder, and test that it works
# It is expected to see following message

go build -o terraform-provider-example
./terraform-provider-example
This binary is a plugin. These are not meant to be executed directly.
Please execute the program that consumes these plugins, which will
load any plugins automatically

# Once working, install this into default go installation directory
# which is by default $HOME/go/bin/

go install .
```

## Testing

Create following into $HOME/.terraformrc. Pay attention to paths
```bash
provider_installation {
  
  dev_overrides {
    "mcr70/example" = "/Users/mcr70/go/bin/"
  }

  # For all other providers, install them directly from their origin provider
  # registries as normal. If you omit this, Terraform will _only_ use
  # the dev_overrides block, and so no other providers will be available.
  direct {
  }
}
```

Once created, plan the example Terraform project
```bash
cd examples
terraform plan
```

