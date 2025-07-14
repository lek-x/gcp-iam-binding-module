

resource "google_project_iam_binding" "project" {
  for_each = { for binding in var.policy_binding :
  "${binding.role}-${sha1(jsonencode(binding.members))}" => binding }
  project = var.project
  role    = each.value.role

  members = each.value.members
}
