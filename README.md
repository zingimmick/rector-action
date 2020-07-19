# GithubAction for Rector

## Usage

You can use it as a Github Action like this:

_.github/workflows/rector.yml_
```
on: [push, pull_request]
name: rector
jobs:
  rector:
    name: Rector
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Rector
      uses: zingimmick/rector-action@0.0.2
```

to use for lint:

_.github/workflows/rector.yml_
```diff
on: [push, pull_request]
name: rector
jobs:
  rector:
    name: Rector
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Rector
      uses: zingimmick/rector-action@0.0.2
+      with:
+        args: --dry-run
```

to use a custom config for example, --dry-run and --clear-cache option:

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
      uses: zingimmick/rector-action@0.0.2
+      with:
+        args: --config=rector.yaml --dry-run --clear-cache
```

**You can copy/paste the .github folder (under examples/) to your project and that's all!**
