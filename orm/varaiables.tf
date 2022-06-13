## Copyright (c) 2022, Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaajznex5attydtrmrgudwayqu7kn4krasw2ct4h4pwz7nwbfxoyd4q"
  }
variable "compartment_ocid" {
  default =  "ocid1.compartment.oc1..aaaaaaaamtrs5i5sm6b4ie2uchhjlu6jxp3oehi5y4b6hp34pqpcffpkdzja"
}
variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaao7mct2dugqn6ymsm2mncrthv2q2zcbh7emcgwmckswmaiboiargq"
}
variable "fingerprint" {
  default = "5a:b6:9a:f1:4b:47:43:53:e5:a2:38:f9:5d:5d:e7:39"
}
variable "private_key_path" {
  default = "~/.oci/chip_private.pem "
}
variable "region" {
  default = "us-ashburn-1"
}

variable "release" {
  description = "Reference Architecture Release (OCI Architecture Center)"
  default     = "1.0.4"
}













/*
variable "registry_display_name" {
  default = "node-express-getting-starter"
}
*/

variable "container_repository_is_public" {
  default = true
}

variable "deploy_artifact_argument_substitution_mode" {
  default = "SUBSTITUTE_PLACEHOLDERS"
}

/*
variable "deploy_artifact_display_name" {
  default = "node-express-getting-starter"
}
*/




