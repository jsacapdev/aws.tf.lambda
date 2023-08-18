resource "aws_resourcegroups_group" "rg" {
  name = var.resource_group_name

  resource_query {
    query = file("${path.module}/query.json")
  }
}
