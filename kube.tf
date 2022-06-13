provider "kubernetes" {
  kubernetes {
    config_path = "/tmp/kubeconfig"
  }
}



resource "time_sleep" "wait_for_kube" {
  depends_on = [
  local_file.kubeconfig
  ]
  create_duration = "60s"
}

resource "kubernetes_namespace" "demo3" {
  depends_on = [
  local_file.kubeconfig
  ]
  metadata {
    name = "demo-namespace"
  }
}



resource "null_resource" "example1" {
   depends_on = [time_sleep.wait_1min]
  provisioner "local-exec" {
    command = "/bin/bash ./generated/kube.sh > /tmp/ip_addr" 
    
  }
}

data "local_file" "ip_addr" {
    depends_on = [null_resource.example1]
    filename = "/tmp/ip_addr"
}

output "ip_endpoint" {
  value       = "Endpoint is ${data.local_file.ip_addr.content} "
  description = "Endpoint for website"
}
