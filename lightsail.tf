resource "aws_lightsail_instance" "gitlab_test" {
  name              = "custom_gitlab"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
 #key_pair_name     = "some_key_name"
  tags = {
    env = "dev"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This server is created using terraform</h1>' | sudo tee /var/www/html/index.html"
  }
}
