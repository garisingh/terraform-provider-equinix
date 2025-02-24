---
subcategory: "Metal"
---

# equinix_metal_metro (Data Source)

Provides an Equinix Metal metro datasource.

## Example Usage

```hcl
# Fetch a metro by code and show its ID

data "equinix_metal_metro" "sv" {
  code = "sv"
}

output "id" {
  value = data.equinix_metal_metro.sv.id
}
```

```hcl
# Verify that metro "sv" has capacity for provisioning 2 c3.small.x86 
  devices and 1 c3.medium.x86 device

data "equinix_metal_metro" "test" {
  code = "dc13"

  capacity {
    plan = "c3.small.x86"
    quantity = 2
  }

  capacity {
    plan = "c3.medium.x86"
    quantity = 1
  }
}
```

## Argument Reference

The following arguments are supported:

* `code` - (Required) The facility code to search for facilities.
* `capacity` - (Optional) One or more device plans for which the facility must have capacity.
  * `plan` - (Required) Device plan that must be available in selected location.
  * `quantity` - (Optional) Minimun number of devices that must be available in selected location.
  Default is `1`.

## Attributes Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The ID of the metro.
* `name` - The name of the metro.
* `country` - The country of the metro.
