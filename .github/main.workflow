workflow "Simple Workflow" {
  on = "push"
  resolves = ["DingTalk Notification"]
}

action "DingTalk Notification" {
  uses = "cooperwu/action-dingtalk@master"
  secrets = ["DINGTALK_WEBHOOK"]
}
