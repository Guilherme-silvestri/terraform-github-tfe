provider "tfe" {
        token = "${var.token}"
        hostname = "${var.hostname}"
}

resource "tfe_workspace" "DESA-01" {
  name         = "DESA-01"
  organization = "${var.organization}"
  auto_apply = true
}

resource "tfe_workspace" "DESA-02" {
  name         = "DESA-02"
  organization = "${var.organization}"
  auto_apply = true
}

resource "tfe_workspace" "DESA-03" {
  name         = "DESA-03"
  organization = "${var.organization}"
  auto_apply = true
}

resource "tfe_team" "HTFE_SOPORTE_PROD" {
  name         = "HTFE_SOPORTE_PROD"
  organization = "${var.organization}"
}

resource "tfe_team" "HTFE_SECURITY_PROD" {
  name         = "HTFE_SECURITY_PROD"
  organization = "${var.organization}"
}

resource "tfe_team" "HTFE_DEVELOPER_APP1_PROD" {
  name         = "HTFE_DEVELOPER_APP1_PROD"
  organization = "${var.organization}"
}

resource "tfe_team" "HTFE_LT_APP1_PROD" {
  name         = "HTFE_LT_APP1_PROD"
  organization = "${var.organization}"
}

resource "tfe_team" "HTFE_SECURITY_PROD" {
  name         = "HTFE_SECURITY_PROD"
  organization = "${var.organization}"
}

