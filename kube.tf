provider "kubernetes" {
    config_path = "/tmp/kubeconfig"
}


resource "time_sleep" "wait_1min" {
  depends_on = [
  local_file.kubeconfig
  ]
  create_duration = "60s"
}


resource "kubernetes_namespace" "demo3" {
  depends_on = [
  time_sleep.wait_1min
  ]
  metadata {
    name = "demo-namespace"
  }
}



resource "time_sleep" "wait_3min" {
  depends_on = [
  helm_release.flask_demo
  ]
  create_duration = "180s"
}




resource "null_resource" "example1" {
   depends_on = [time_sleep.wait_3min]
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
