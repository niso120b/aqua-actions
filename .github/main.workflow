workflow "New workflow" {
  on = "push"
  resolves = ["Aqua MicroScanner Action for Docker Scanning"]
}

action "Aqua MicroScanner Action for Docker Scanning" {
  uses = "./microscanner"
  secrets = [
    "MICROSCANNER_TOKEN",
  ]
  args = "build --build-arg token=${MICROSCANNER_TOKEN}"
  env = {
    IMAGE = "nginx:latest"
  }
}
