# RPC PING Github Action

GitHub Action for ping website via XML-RPC.

## Secrets

NOTHING

## Environment Variables

- `PING_TITLE` : Your website, blog title
- `PING_URL` : URL want to ping
- `RPC_ENDPOINT` : RPC Endpoint, default is `http://rpc.pingomatic.com/`

## Example

**main.workflow**

```hcl
workflow "Deploy to GitHub Pages" {
  on = "push"
  resolves = ["rpc-ping"]
}

action "hugo-deploy-gh-pages" {
  uses = "khanhicetea/gh-actions-hugo-deploy-gh-pages@master"
  secrets = [
    "GIT_DEPLOY_KEY",
  ]
}

action "rpc-ping" {
  uses = "khanhicetea/gh-actions-rpc-ping@master"
  env = {
    PING_TITLE = "KhanhIceTea B(rain)-log"
    PING_URL = "https://khanhicetea.com"
  }
  needs = ["hugo-deploy-gh-pages"]
}
```

## Example site

- https://github.com/khanhicetea/.com

## LICENSE

Copyright (c) 2019

Licensed under the MIT License.