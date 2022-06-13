provider "helm" {
  kubernetes {
    config_path = "/tmp/kubeconfig"
  }
}

resource "helm_release" "flask_demo" {
  depends_on = [null_resource.create_ns]
  name       = "flask-demo"
  chart      = "./generated/flask-demo/"
  namespace = "demo3"

  }
