# elasticache.tf
# Configuration for an Elasticache Redis cluster.

resource "aws_elasticache_cluster" "jibberchat_redis" {
  cluster_id           = format("jibberchat-redis-%s", var.environment)
  engine               = "redis"
  node_type            = "cache.t3.micro" # Adjust size according to the needs
  num_cache_nodes      = 1
  parameter_group_name = "default.redis6.x"
  engine_version       = "6.x"
  port                 = 6379


  tags = {
    "Name"        = "JibberChat Redis Cluster"
    "Environment" = var.environment
  }
}
