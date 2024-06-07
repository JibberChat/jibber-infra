# mq.tf
# Defines the Amazon MQ configuration for RabbitMQ.

resource "aws_mq_broker" "jibberchat_rabbitmq" {
  broker_name        = format("jibberchat-mq-%s", var.environment)
  engine_type        = "RabbitMQ"
  engine_version     = 1000
  host_instance_type = "jddk"

  user {
    username = "jdjd"
    password = "jdjdk"
  }

  tags = {
    "Name"        = "JibberChat RabbitMQ"
    "Environment" = var.environment
  }
}
