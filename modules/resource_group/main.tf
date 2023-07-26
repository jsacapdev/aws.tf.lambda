resource "aws_resourcegroups_group" "rg" {
  name = var.resource_group_name

  tags = {
    env = "dev"
  }

  resource_query {
    query = file("${path.module}/query.json")
  }
}
