data "template_file" "user_data" {
  template = "${file("apache.sh")}"
}

resource "aws_launch_template" "Project-WebApp" {
  # other configuration options

  user_data = data.template_file.user_data.rendered
}
