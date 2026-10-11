output "zero_trust_gateway_policies_lookup_account_id" {
  description = "Map of account_id values across all zero_trust_gateway_policies_lookup, keyed the same as var.zero_trust_gateway_policies_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_zero_trust_gateway_policies.zero_trust_gateway_policies_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "zero_trust_gateway_policies_lookup_max_items" {
  description = "Map of max_items values across all zero_trust_gateway_policies_lookup, keyed the same as var.zero_trust_gateway_policies_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_zero_trust_gateway_policies.zero_trust_gateway_policies_lookup : k => v.max_items if v.max_items != null }
}
output "zero_trust_gateway_policies_lookup_result" {
  description = "Map of result values across all zero_trust_gateway_policies_lookup, keyed the same as var.zero_trust_gateway_policies_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_zero_trust_gateway_policies.zero_trust_gateway_policies_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}

