# GCP IAM Binding Module

This module bindes GCP members to the roles.

## Requirements
Terraform >= 1.9.8

## Usage

To use this module, include it in your Terraform configuration and provide the required variables.

```terraform
module "gcp_iam_binding" {
  source = "git::https://github.com/lek-x/gcp-iam-binding-module.git"

  project  = "your-gcp-project-id"
  policy_binding       = [
    {
      role = "roles/viewer"
      members = ["user:alice@gmail.com","serviceAccount:my-sa@project.iam.gserviceaccount.com"]
    },
    {
      role = "roles/editor"
      members = ["user:bob@gmail.com"]
    }
    ]
}
```

## License
GNU GPL v3
