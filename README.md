# GithubAction for Rector

## Usage

You can use it as a Github Action like this:

_.github/workflows/lint.yml_
```
on: [push, pull_request]
name: lint
jobs:
  rector:
    name: Rector
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Rector
      uses: zingimmick/rector-action@0.0.3
```

_to use a custom config for example, --dry-run and --clear-cache option:_
```diff
on: [push, pull_request]
name: lint
jobs:
  rector:
    name: Rector
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Rector
      uses: zingimmick/rector-action@0.0.3
+      with:
+        args: --config=rector.yaml --dry-run --clear-cache
```

**You can copy/paste the .github folder (under examples/) to your project and that's all!**
