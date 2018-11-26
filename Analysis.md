# Analysis 

While this application is just meant as a sample, 
Due to time and infrastructure constraints there are a few best practices that this application overlooks. This file mentions about the things that can be improved while deployment in production. 

1. Secrets such as password can be managed by a vault or AWS secret manager, or they can be accessed via GitLab variables. 

1. Docker base images from docker hub should not be trusted. We should use Vulnerability Static Analysis for Containers such as [Clair](https://github.com/coreos/clair)

1. Run docker containers as normal users with minimum permissions required to run application.

1. Use of more descriptive labels which depict enviornment, version and stack.

1. Instead of NODEPORT, we can use a loadbalancer on cloud. We can also use ingress controller to improve perormance.

1. Using HELM charts. 

1. Having blue green deployment over service upgrades to minimize any downtime and easy rollback.

1. Implementing a centralised logging and monitoring stack via ELK stack or we can use graylog with kaka. For monitoring we can use prometheus and grafana.

1. We can use volumes to persist data from mysql, we can also use managed services or database such as RDS whereever applicable. 

1. Implement version control for inrastructure. 

1. Creating application/domain specific Namespace instead of using the default namespace.