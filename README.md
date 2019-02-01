# Hugo Github Action

GitHub Action for ping website via XML-RPC.

## Secrets

NOTHING

## Environment Variables

- `PING_TITLE` : Your website, blog title
- `PING_URL` : URL want to ping

## Example

**main.workflow**

```hcl
workflow "Ping RPC" {
  on = "push"
  resolves = ["hugo-deploy-gh-pages", "ping-rpc"]
}

action "hugo-deploy-gh-pages" {
  uses = "khanhicetea/gh-actions-hugo-deploy-gh-pages@master"
  secrets = ["GIT_DEPLOY_KEY"]
}

action "ping-rpc" {
  uses = "khanhicetea/gh-actions-rpc-ping@master"
  env = {
    PING_TITLE  = "KhanhIceTea Blog"
    PING_URL = "https://khanhicetea.com"
  }
}
```

## Example site

- https://github.com/khanhicetea/.com

## LICENSE

Copyright (c) 2019

Licensed under the MIT License.