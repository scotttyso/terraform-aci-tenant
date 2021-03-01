#------------------------------------------
# Create a Span Destination Group
#------------------------------------------

/*
API Information:
 - Class: "cdpIfPol"
 - Distinguished Name: "uni/infra/cdpIfP-{Policy Name}"
GUI Location:
 - Fabric > Access Policies > Policies > Interface > CDP Interface : {Policy Name}
*/
resource "aci_span_destination_group" "span_destionation" {
  tenant_dn  = aci_tenant.example.id
  annotation = "example"
  name       = "example"
  name_alias = "example"
}
