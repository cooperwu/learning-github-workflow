workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Slack"]
}

action "GitHub Action for Slack" {
  uses = "Ilshidur/action-slack@6286a077a2b77159fcc4f425a9e714173d374616"
  secrets = ["SLACK_WEBHOOK"]
}
