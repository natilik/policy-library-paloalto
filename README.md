# policy-library-paloalto

These Sentinel Policies are specific to Palo Alto firewalls. These do not cover Panorama at this current time.

The tests are basic but ensure that best policies are adhered to upon creating constructs within the firewall. Tests included are:

1. Restrict Source Address Rules - Ensure that source addresses do not contain the word "any" or "0.0.0.0/0"
2. Restrict Destination Address Rules - Ensure that destination addresses do not contain the word "any" or "0.0.0.0/0"
3. Restrict Layer 2 Security Zones - Ensure that Security Zones are not Layer 2
4. Restrict Interface Link State - Ensure that when deploying new interfaces the `link_state ` is not automatically set to "up"
5. Restrict VLAN - Ensure that reserved or VLANs that are not to be used are not deployed.

These tests all require the `import "tfplan-fuctions"` to be added.

More tests will be added, such as static route restriction and NAT rules, as an example. The files for these have been uploaded:

1. restrict-static-routes
2. restrict-nat-rules
3. restict-interface-mtu

But these are not complete. Within the sentinel.hcl file, these tests have been commented out.

The `enforcement_level` is not required and the Terraform Registry ignores this information, but it is there for completeness.
