provider "tfe" {
  hostname = "${var.hostname}"
  token    = "${var.token}"
}

resource "tfe_workspace" "BCPWorkspace" {
  name         = "BCP_Workspce"
  organization = "BCP"
}
