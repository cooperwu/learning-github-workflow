workflow "New workflow" {
  on = "push"
  resolves = ["cooperwu/action-dingtalk"]
}

action "GitHub Action for Slack" {
  uses = "Ilshidur/action-slack@6286a077a2b77159fcc4f425a9e714173d374616"
  secrets = ["SLACK_WEBHOOK"]
}

action "cooperwu/action-dingtalk" {
  uses = "cooperwu/action-dingtalk@master"
  needs = ["GitHub Action for Slack"]
  secrets = ["DINGTALK_WEBHOOK"]
}
