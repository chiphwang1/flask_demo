provider "kubernetes" {
    config_path = "/tmp/kubeconfig"
}


resource "time_sleep" "wait_1min_demo" {
  depends_on = [
  local_file.kubeconfig
  ]
  create_duration = "60s"
}


resource "null_resource" "create_ns" {
  
  depends_on = [time_sleep.wait_1min_demo]
  provisioner "local-exec" {
    command = "kubectl --kubeconfig /tmp/kubeconfig create ns demo3" 

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
  value       = "Endpoint is ${data.local_file.ip_addr.content}:5000"
  description = "Endpoint for website"
}
