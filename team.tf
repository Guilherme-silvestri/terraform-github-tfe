resource "tfe_team_access" "HTFE_SOPORTE_PROD-DESA01" {
  team_id      = "${tfe_team.HTFE_SOPORTE_PROD.id}"
  workspace_id = "${tfe_workspace.DESA-01.id}"
    permissions {
      state_versions = "read"
      variables = "write"
      runs = "apply"
      sentinel_mocks = "read"
      workspace_locking = true
  }
}

resource "tfe_team_access" "HTFE_SOPORTE_PROD-DESA02" {
  team_id      = "${tfe_team.HTFE_SOPORTE_PROD.id}"
  workspace_id = "${tfe_workspace.DESA-02.id}"
  permissions {
      state_versions = "read"
      variables = "write"
      runs = "apply"
      sentinel_mocks = "read"
      workspace_locking = true
  }
}

resource "tfe_team_access" "HTFE_SOPORTE_PROD-DESA03" {
  team_id      = "${tfe_team.HTFE_SOPORTE_PROD.id}"
  workspace_id = "${tfe_workspace.DESA-03.id}"
    permissions {
      state_versions = "read"
      variables = "write"
      runs = "apply"
      sentinel_mocks = "read"
      workspace_locking = true
  }
}

resource "tfe_team_access" "HTFE_DEVELOPER_APP1_PROD-DESA01" {
  team_id      = "${tfe_team.HTFE_DEVELOPER_APP1_PROD.id}"
  workspace_id = "${tfe_workspace.DESA-01.id}"
    permissions {
      state_versions = "none"
      variables = "read"
      runs = "plan"
      sentinel_mocks = "none"
      workspace_locking = false
  }
}

resource "tfe_team_access" "HTFE_DEVELOPER_APP1_PROD-DESA02" {
  team_id      = "${tfe_team.HTFE_DEVELOPER_APP1_PROD.id}"
  workspace_id = "${tfe_workspace.DESA-02.id}"
    permissions {
      state_versions = "none"
      variables = "read"
      runs = "plan"
      sentinel_mocks = "none"
      workspace_locking = false
  }
}

resource "tfe_team_access" "HTFE_DEVELOPER_APP1_PROD-DESA03" {
  team_id      = "${tfe_team.HTFE_DEVELOPER_APP1_PROD.id}"
  workspace_id = "${tfe_workspace.DESA-03.id}"
    permissions {
      state_versions = "none"
      variables = "read"
      runs = "plan"
      sentinel_mocks = "none"
      workspace_locking = false
  }
}

resource "tfe_team_access" "HTFE_LT_APP1_PROD-DESA01" {
  team_id      = "${tfe_team.HTFE_LT_APP1_PROD.id}"
  workspace_id = "${tfe_workspace.DESA-01.id}"
    permissions {
      state_versions = "none"
      variables = "read"
      runs = "apply"
      sentinel_mocks = "none"
      workspace_locking = false
  }
}

resource "tfe_team_access" "HTFE_LT_APP1_PROD-DESA02" {
  team_id      = "${tfe_team.HTFE_LT_APP1_PROD.id}"
  workspace_id = "${tfe_workspace.DESA-02.id}"
    permissions {
      state_versions = "none"
      variables = "read"
      runs = "apply"
      sentinel_mocks = "none"
      workspace_locking = false
  }
}

resource "tfe_team_access" "HTFE_LT_APP1_PROD-DESA03" {
  team_id      = "${tfe_team.HTFE_LT_APP1_PROD.id}"
  workspace_id = "${tfe_workspace.DESA-03.id}"
    permissions {
      state_versions = "none"
      variables = "read"
      runs = "apply"
      sentinel_mocks = "none"
      workspace_locking = false
  }
}

