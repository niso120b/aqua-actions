# Github Action for the Aqua MicroScanner

The GitHub Action for [Aqua MicroScanner](https://github.com/aquasecurity/microscanner) wraps the microscanner.
A free-to-use tool that scans container images for package vulnerabilities.

## Overview

Aqua Security's MicroScanner lets you check your container images for vulnerabilities. If your image has any known high-severity issue, MicroScanner can fail the image build, making it easy to include as a step in your CI/CD pipeline.

## Usage

```hcl
action "aqua microscanner" {
  uses = "aquasecurity/aqua-actions/microscanner@master"
  secrets = ["MICROSCANNER_TOKEN"]
  args = "--build-arg token=${MICROSCANNER_TOKEN}"
  env = {
    IMAGE = "<docker image name>"
  }
}
```

### Environment Variables

| Name  | Default | Description  |
| ------------- | ------------- | ------------- |
| TOKEN  | N/A  | Aqua microscanner token ([**for more information**](https://github.com/aquasecurity/microscanner/blob/master/README.md#registering-for-a-token)) |
| IMAGE  | N/A  | Docker image name to scan  |