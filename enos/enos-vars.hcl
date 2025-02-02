# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

# Variables for the fetch_artifactory module
variable "artifactory_username" {
  type        = string
  description = "The username to use when connecting to artifactory"
  default     = null
}

variable "artifactory_token" {
  type        = string
  description = "The token to use when connecting to artifactory"
  default     = null
  sensitive   = true
}

variable "product_version" {
  description = "The version of Nomad we are testing"
  type        = string
  default     = null
}

variable "upgrade_version" {
  description = "The version of Nomad we want to upgrade the cluster to"
  type        = string
  default     = null
}

variable "binary_local_path" {
  description = "The path to donwload and unzip the binary"
  type        = string
}

# Variables for the provision_cluster module
variable "nomad_local_binary" {
  description = "The path to a local binary to provision"
}

variable "nomad_license" {
  type        = string
  description = "If nomad_license is set, deploy a license"
  default     = ""
}

variable "consul_license" {
  type        = string
  description = "If consul_license is set, deploy a license"
  default     = ""
}

variable "nomad_region" {
  description = "The AWS region to deploy to."
  default     = "us-east-1"
}

variable "server_count" {
  description = "The number of servers to provision."
  default     = "3"
}

variable "aws_region" {
  description = "The AWS region to deploy to."
  default     = "us-east-1"
}
