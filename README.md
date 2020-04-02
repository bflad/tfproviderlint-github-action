# tfproviderlint-github-action

For [Terraform Provider](https://www.terraform.io/docs/providers/index.html) developers, add Terraform Provider code linting to your GitHub repository easily with this [GitHub Action](https://github.com/features/actions). Uses [tfproviderlint](https://github.com/bflad/tfproviderlint).

## Usage

```yaml
on: [pull_request, push]

jobs:
  example:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2.0.0
    - uses: bflad/tfproviderlint-github-action@master
      with:
        args: ./...
```

## Development and Testing

To locally test the Docker build:

```console
$ docker build -t tfproviderlint-github-action:latest .
```
