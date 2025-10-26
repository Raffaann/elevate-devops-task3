# Elevate Labs - DevOps Task 4

This project uses Terraform to provision a local Nginx Docker container.

## Files
* `main.tf`: The Terraform code to define the Docker image and container.
* `execution_logs.txt`: Contains the output from `init`, `plan`, `apply`, and `destroy` commands.
* `screenshot-nginx.png`: (Optional) A screenshot showing the running container in the browser.

## How to Run
1.  Ensure Docker and Terraform are installed.
2.  Run `terraform init` to download the Docker provider.
3.  Run `terraform plan` to see the expected changes.
4.  Run `terraform apply` to create the container.
5.  Access the Nginx server at `http://localhost:8080`.
6.  Run `terraform destroy` to clean up the resources.
