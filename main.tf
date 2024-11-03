module "service" {
  source = "./module/ecs-service"

  cluster_name = var.cluster_name
  environment  = var.environment
  image        = "${var.registry}/backend-service:${var.environment}"
  name         = "service"

  parameters = [
    "fem-location",
    "fem-version"
  ]
}
