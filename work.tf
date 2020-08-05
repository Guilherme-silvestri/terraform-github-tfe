provider "tfe" {
  hostname = "terraform.netbr.com.br"
  token    = "SxmzFMe0SlzpFQ.atlasv1.NMF4RNvWvch08LAMML0yyMrBtdxqtqbIvFByDzYXh2HKvnFEWhIGbr2LHT9YRjJCdzU"
}

resource "tfe_workspace" "BCPWorkspace" {
  name         = "BCP_Workspce"
  organization = "BCP"
}
