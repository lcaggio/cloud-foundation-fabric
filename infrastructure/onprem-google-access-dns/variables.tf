/**
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "bgp_asn" {
  description = "BGP ASNs."
  type        = map(number)
  default = {
    gcp    = 64513
    onprem = 64514
  }
}

variable "bgp_interface_ranges" {
  description = "BGP interface IP CIDR ranges."
  type        = map(string)
  default = {
    gcp = "169.254.1.0/30"
  }
}

variable "dns_forwarder_address" {
  description = "Address of the DNS server used to forward queries from on-premises."
  type        = string
  default     = "10.0.0.2"
}

variable "ip_ranges" {
  description = "IP CIDR ranges."
  type        = map(string)
  default = {
    gcp    = "10.0.0.0/24"
    onprem = "10.0.16.0/24"
    onprem_project = "10.0.32.0/24"
  }
}

variable "project_id_onprem" {
  description = "Project id for onprem resources."
  type        = string
}

variable "project_id_landing" {
  description = "Project id for landing zones resources."
  type        = string
}

variable "region" {
  description = "VPC region."
  type        = string
  default     = "europe-west1"
}

variable "forwarder_address" {
  description = "GCP DNS inbound policy forwarder address."
  type        = string
  default     = "10.0.0.2"
}

variable "ssh_source_ranges" {
  description = "IP CIDR ranges that will be allowed to connect via SSH to the onprem instance."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
