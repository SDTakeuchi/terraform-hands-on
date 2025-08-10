# valueはvm_instanceのnetwork_interface.0.network_ipが動的にアサインされる
# つまり、outputs.ipがプロキシーとしてvm_instanceのIPを返す
output "ip" {
  value = google_compute_instance.vm_instance.network_interface.0.network_ip
}
