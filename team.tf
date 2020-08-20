resource "tfe_team_access" "HTFE_SOPORTE_PROD-DESA01" {
  access       = "admin"
  team_id      = "${tfe_team.HTFE_SOPORTE_PROD.id}"
  workspace_id = "${tfe_workspace.DESA-01.id}"
}

resource "tfe_team_access" "HTFE_SOPORTE_PROD-DESA02" {
  access       = "admin"
  team_id      = "${tfe_team.HTFE_SOPORTE_PROD.id}"
  workspace_id = "${tfe_workspace.DESA-02.id}"
}

resource "tfe_team_access" "HTFE_SOPORTE_PROD-DESA03" {
  access       = "admin"
  team_id      = "${tfe_team.HTFE_SOPORTE_PROD.id}"
  workspace_id = "${tfe_workspace.DESA-03.id}"
}


