output "local_network_peering" {
  description = "Network peering resource."
  value       = module.peering.local_network_peering
}

output "peer_network_peering" {
  description = "Peer network peering resource."
  value       = module.peering.peer_network_peering
}

output "complete" {
  description = "Output to be used as a module dependency."
  value       = module.peering.complete
}

output "state" {
  description = "State for the peering, either ACTIVE or INACTIVE. The peering is ACTIVE when there's a matching configuration in the peer network."
  value       = module.peering.state
}

output "state_details" {
  description = "Details about the current state of the peering."
  value       = module.peering.state_details
}