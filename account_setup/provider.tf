data "google_billing_account" "acct" {
	display_name = "My Billing Account 1"
	open = true
}

resource "random_password" "password" {
	length = 16
	numeric = false
	special = false
	lower = true
	upper = false
}

resource "google_project" "terraform-project" {
	name = "terraform-project"
	project_id = random_password.password.result
	billing_account = data.google_billing_account.acct.id
}