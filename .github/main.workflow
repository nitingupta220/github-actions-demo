workflow "Build and Deploy" {
  on = "push"
  resolves = ["Deploy"]
}

action "Install" {
  uses = "actions/npm@master"
  args = "install"
}

action "Deploy" {
  needs = "Install"
  uses = "actions/npm@master"
  args = "run deploy"
}