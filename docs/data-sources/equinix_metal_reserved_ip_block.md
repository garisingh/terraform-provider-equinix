---
subcategory: "Metal"
---

# equinix_metal_reserved_ip_block (Data Source)

Use this data source to find IP address blocks in Equinix Metal. You can use IP address or a block
ID for lookup.

~> VRF features are not generally available. The interfaces related to VRF resources may change ahead of general availability.

## Example Usage

Look up an IP address for a domain name, then use the IP to look up the containing IP block and
run a device with IP address from the block:

```hcl
data "dns_a_record_set" "www" {
  host = "www.example.com"
}

data "equinix_metal_reserved_ip_block" "www" {
  project_id = local.my_project_id
  address = data.dns_a_record_set.www.addrs[0]
}

resource "equinix_metal_device" "www" {
  project_id = local.my_project_id
  [...]
  ip_address {
    type = "public_ipv4"
    reservation_ids = [data.equinix_metal_reserved_ip_block.www.id]
  }
}
```

## Argument Reference

The following arguments are supported:

* `id` - (Optional) UUID of the IP address block to look up.
* `project_id` - (Optional) UUID of the project where the searched block should be.
* `ip_address` - (Optional) Block containing this IP address will be returned.

-> **NOTE:** You should pass either `id`, or both `project_id` and `ip_address`.

## Attributes Reference

This datasource exposes the same attributes as the
[equinix_metal_reserved_ip_block](../resources/equinix_metal_reserved_ip_block.md) resource, with the following differences:

* `type` - One of `global_ipv4`, `public_ipv4`, `private_ipv4`, `public_ipv6`,or `vrf`
