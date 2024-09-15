# remote state
remote_state_key    = "PROD/infrastructure.tfstate"
remote_state_bucket = "ecs-fragate-remote-state.ted"
ecs_domain_name     = "tsung-bear.com"
ecs_cluster_name    = "Production-ECS-Cluster"

internet_cidr_blocks = ["0.0.0.0/0"]
