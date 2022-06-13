## Copyright (c) 2021, Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaajznex5attydtrmrgudwayqu7kn4krasw2ct4h4pwz7nwbfxoyd4q"
  }
variable "compartment_ocid" {
  default =  "ocid1.compartment.oc1..aaaaaaaatsicihq6k7nqthosj3ed3vw6mimftezmxxlf2cngre726enzxsla"
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



variable "app_name" {
  default = "test"
}


variable "release" {
  description = "Reference Architecture Release (OCI Architecture Center)"
  default     = "1.0.3"
}










/*
variable "registry_display_name" {
  default = "node-express-getting-starter"
}
*/



/*
variable "deploy_artifact_display_name" {
  default = "node-express-getting-starter"
}
*/


#variable "ocir_region" {
# default = "iad"}













