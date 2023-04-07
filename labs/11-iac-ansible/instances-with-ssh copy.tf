variable "user_name" {
  type    = string
  default = "student_00_0bc78ce30f87"
}

data "local_file" "public_ssh_key" {
  # filename = "~/.ssh/id_rsa.pub"
  filename="/home/${var.user_name}/.ssh/id_rsa.pub"
}

resource "google_compute_instance" "host-1" {
  project      = "qwiklabs-gcp-03-ff289bf6aabe"
  name         = "terraform"
  machine_type = "n1-standard-1"
  zone         = "us-west1-c"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }

 # metadata_startup_script = "echo hi > /test.txt"
 metadata_startup_script = <<-EOF
    #!/bin/bash
    echo "${data.local_file.public_ssh_key.content}" >> /home/${var.user_name}/.ssh/authorized_keys
    EOF

}