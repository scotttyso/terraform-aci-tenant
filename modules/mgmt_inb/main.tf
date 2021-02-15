/*
API Information:
 - Class: "mgmtRsInBStNode"
 - Distinguished Name: "uni/tn-mgmt/mgmtp-default/inb-default/rsinBStNode-[topology/pod-{Pod_ID}/node-{Node_ID}]"
GUI Location:
 - Tenants > mgmt > Node Management Addresses > Static Node Management Addresses
*/
resource "aci_rest" "inband_mgmt" {
	depends_on  = [each.value["epg"]]
	path		= "/api/node/mo/uni/tn-mgmt.json"
	class_name	= "mgmtRsInBStNode"
	payload		= <<EOF
{
    "mgmtRsInBStNode": {
        "attributes": {
            "dn": "uni/tn-mgmt/mgmtp-default/inb-default/rsinBStNode-[topology/pod-${each.value["pod_id"]}/node-${each.value["node_id"]}]",
            "addr": "${each.value["address"]}",
            "gw": "${each.value["gateway"]}",
            "tDn": "topology/pod-${each.value["pod_id"]}/node-${each.value["node_id"]}",
            "v6Addr": "::",
            "v6Gw": "::"
        }
    }
}
	EOF
}