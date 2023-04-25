/**
 * Copyright 2019 Google LLC
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

output "ip_address" {
  description = "The internal IP assigned to the regional forwarding rule."
  value       = var.lb_type != "HTTP" ? google_compute_forwarding_rule.default.ip_address : google_compute_forwarding_rule.http.ip_address
}

output "forwarding_rule" {
  description = "The forwarding rule self_link."
  value       = var.lb_type != "HTTP" ? google_compute_forwarding_rule.default.self_link : google_compute_forwarding_rule.http.self_link
}

output "forwarding_rule_id" {
  description = "The forwarding rule id."
  value       = var.lb_type != "HTTP" ? google_compute_forwarding_rule.default.id : google_compute_forwarding_rule.http.id
}

output "url_map_http" {
  description = "The URL map self_link."
  value       = var.lb_type == "HTTP" ? google_compute_region_url_map.http.self_link : null
}

