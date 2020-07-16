module terraform-provider-equinix

go 1.14

require (
	ecx-go/v3 v3.0.0
	github.com/aws/aws-sdk-go v1.33.6 // indirect
	github.com/hashicorp/go-getter v1.4.2-0.20200106182914-9813cbd4eb02 // indirect
	github.com/hashicorp/go-plugin v1.3.0 // indirect
	github.com/hashicorp/hcl/v2 v2.6.0 // indirect
	github.com/hashicorp/terraform-config-inspect v0.0.0-20200526195750-d43f12b82861 // indirect
	github.com/hashicorp/terraform-plugin-sdk v1.15.0
	github.com/stretchr/testify v1.6.1
	golang.org/x/crypto v0.0.0-20200709230013-948cd5f35899 // indirect
	ne-go v1.0.0
	oauth2-go v1.0.0
)

replace oauth2-go v1.0.0 => ../oauth2-go

replace ecx-go/v3 v3.0.0 => ../ecx-go

replace ne-go v1.0.0 => ../ne-go
