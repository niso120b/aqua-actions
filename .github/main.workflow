workflow "Build and Publish" {
  on = "push"
  resolves = "Release"
}

action "aqua microscanner" {
  uses = "niso120b/aqua-actions/microscanner@master"
  secrets = ["MICROSCANNER_TOKEN"]
  args = "--build-arg token=${MICROSCANNER_TOKEN}"
  env = {
    IMAGE = "nginx"
  }
}