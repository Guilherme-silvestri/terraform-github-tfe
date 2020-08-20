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
  organization_access {
      manage_policies = true

  }
}

resource "tfe_team" "HTFE_DEVELOPER_APP1_PROD" {
  name         = "HTFE_DEVELOPER_APP1_PROD"
  organization = "${var.organization}"


}

resource "tfe_team" "HTFE_LT_APP1_PROD" {
  name         = "HTFE_LT_APP1_PROD"
  organization = "${var.organization}"
}


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

