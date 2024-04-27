#main.tf with Iteration
resource "local_file" "feature_toggel_names" {
  for_each = var.feature_toggles
  filename = "${path.module}/feature-${each.key}-enabled.txt"
  content  = "Feature ${each.key} is enabled: ${each.value}"
}

