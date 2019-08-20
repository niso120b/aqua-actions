workflow "New workflow" {
  on = "push"
  resolves = ["Aqua MicroScanner Action for Docker Scanning"]
}

action "Aqua MicroScanner Action for Docker Scanning" {
  uses = "./microscanner"
  secrets = ["GITHUB_TOKEN", "MICROSCANNER_TOKEN"]
  args = "--build-arg token=${MICROSCANNER_TOKEN}"
  env = {
    IMAGE = "nginx"
  }
}
