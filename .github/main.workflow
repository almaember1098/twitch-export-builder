workflow "Build Application" {
  on = "push"
  resolves = ["build"]
}

action "build" {
  uses = "sosedoff/actions/golang-build@master"
  
  args = "windows/amd64 windows/386 linux/amd64 darwin/amd64"
}