data "cloudflare_zero_trust_gateway_policies" "zero_trust_gateway_policies_lookup" {
  for_each = var.zero_trust_gateway_policies_lookup

  account_id = each.value.account_id
  max_items  = each.value.max_items
}

