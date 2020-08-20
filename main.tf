provider "tfe" {
        token = "BHtxcop03D18cQ.atlasv1.JPvfyijDRhTNnxpGRE12SFRtNSTCFw0zwxBbytewhcGZ8nei1rngA1duf2pfkNWyHTo"
        hostname = "terraform.neteas.local"
}

resource "tfe_workspace" "DESA-01" {
  name         = "DESA-01"
  organization = "neteas"
  auto_apply = true
}

resource "tfe_workspace" "DESA-02" {
  name         = "DESA-02"
  organization = "neteas"
  auto_apply = true
}

resource "tfe_workspace" "DESA-03" {
  name         = "DESA-03"
  organization = "neteas"
  auto_apply = true
}

resource "tfe_team" "HTFE_SOPORTE_PROD" {
  name         = "HTFE_SOPORTE_PROD"
  organization = "neteas"
}

resource "tfe_team" "HTFE_SECURITY_PROD" {
  name         = "HTFE_SECURITY_PROD"
  organization = "neteas"
}

resource "tfe_team" "HTFE_DEVELOPER_APP1_PROD" {
  name         = "HTFE_DEVELOPER_APP1_PROD"
  organization = "neteas"
}

resource "tfe_team" "HTFE_LT_APP1_PROD" {
  name         = "HTFE_LT_APP1_PROD"
  organization = "neteas"
}


