# 1. Configure the Terraform settings
terraform {
  required_providers {
    # This block tells Terraform we need the Docker provider
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2" # Using a recent version
    }
  }
}

# 2. Configure the Docker provider
# This tells Terraform how to connect to Docker (it will use your Docker Desktop)
provider "docker" {}

# 3. Define the Docker image resource
# This tells Terraform to pull the "nginx:latest" image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false # Set to false so 'destroy' removes the image
}

# 4. Define the Docker container resource
# This tells Terraform to create the container 
resource "docker_container" "nginx_container" {
  # This depends on the image resource above
  image = docker_image.nginx.image_id
  name  = "task3-container" # A custom name for your container

  # This maps port 80 inside the container to port 8080 on your laptop
  ports {
    internal = 80
    external = 8080
  }
}