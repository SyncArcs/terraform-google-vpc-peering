provider "google" {
  project = "testing-gcp-syn"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}

data "google_compute_network" "my-network" {
  name = "default"
}
data "google_compute_network" "my-network1" {
  name = "app-test-vpc"
}

#####==============================================================================
##### vpc-peering module call.
#####==============================================================================
module "peering" {
  source        = "../"
  vpc_1_name    = "test"
  vpc_2_name    = "test1"
  local_network = data.google_compute_network.my-network.self_link
  peer_network  = data.google_compute_network.my-network1.self_link
}
