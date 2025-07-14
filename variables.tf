variable "project" {
  description = "The GCP project ID where the resources will be created."
  type        = string
  default     = "test-ntr-465513"
}

variable "policy_binding" {
  description = "The ID for the policy binding."
  type = list(object({
    role    = string
    members = list(string)
  }))
  default = [
    {
      role = "roles/storage.objectViewer"
      members = [
        "user:alice@gmail.com",
        "serviceAccount:my-sa@project.iam.gserviceaccount.com"
      ]
    },
    {
      role    = "roles/compute.viewer"
      members = ["group:devs@company.com"]
    }
  ]
}
