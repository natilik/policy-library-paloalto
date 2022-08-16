module "tfplan-functions" {
  source = "./tfplan-functions/tfplan-functions.sentinel"
}

module "tfconfig-functions" {
  source = "./tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfstate-functions" {
  source = "./tfstate-functions/tfstate-functions.sentinel"
}

policy "restrict-destination-address-rules" {
  enforcement_level = "soft-mandatory"
}

policy "restrict-source-address-rules" {
  enforcement_level = "soft-mandatory"
}

policy "restrict-l2-security-zones" {
  enforcement_level = "hard-mandatory"
}

policy "enforce-app-objects-description" {
  enforcement_level = "hard-mandatory"
}

policy "restrict-vlan" {
  enforcement_level = "hard-mandatory"
}

policy "restrict-interface-link-state" {
  enforcement_level = "soft-mandatory"
}

// policy "restrict-static-routes" {
//   enforcement_level = "hard-mandatory"
// }

// policy "restrict-nat-rules" {
//   enforcement_level = "hard-mandatory"
// }

// policy "restrict-interface-mtu" {
//   enforcement_level = "hard-mandatory"
// }
