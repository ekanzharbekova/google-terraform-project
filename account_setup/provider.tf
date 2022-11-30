data "google_billing_account" "acct" {
	display_name = "My Billing Account 1"
	open = true
}

resource "random_password" "password" {
<<<<<<< HEAD
	length = 14
=======
	length = 16
>>>>>>> 4f2dd3752c6d06b45eaf068afc6797299315f8b4
	numeric = false
	special = false
	lower = true
	upper = false
}

resource "google_project" "terraform-project" {
	name = "terraform-project"
	project_id = random_password.password.result
	billing_account = data.google_billing_account.acct.id
<<<<<<< HEAD
}

resource "null_resource" "set-project" {
	 triggers = {
    always_run = "${timestamp()}"
  }
	
	provisioner "local-exec" {
	command = "gcloud config set project ${google_project.terraform-project.project_id}"
	}
}

resource "null_resource" "unset-project" {
	provisioner "local-exec" {
	when = destroy
	command = "gcloud config unset project"
	}
}
=======
}
>>>>>>> 4f2dd3752c6d06b45eaf068afc6797299315f8b4
