# tfproviderlint-github-action

For [Terraform Provider](https://www.terraform.io/docs/providers/index.html) developers, add Terraform Provider code linting to your GitHub repository easily with this [GitHub Action](https://github.com/features/actions). Uses [tfproviderlint](https://github.com/bflad/tfproviderlint).

## Usage

```hcl
workflow "Check Linters" {
    on       = "push"

    resolves = [
        "Terraform Provider Linter"
    ]
}

action "Terraform Provider Linter" {
    uses = "bflad/tfproviderlint-github-action@master"

    args = [
        "./..."
    ]
}
```

If the Terraform Provider uses the `vendor` directory with Go Modules, it is recommended to enable the environment variable:

```hcl
action "Terraform Provider Linter" {
    # ... other configuration ...

    env = {
        GOFLAGS = "-mod=vendor"
    }
}
```

## Development and Testing

To locally test the Docker build:

```console
$ docker build -t tfproviderlint-github-action:latest .
```

To test the GitHub Action functionality, replace the [`uses` argument in the `action` block](https://developer.github.com/actions/managing-workflows/workflow-configuration-options/#actions-attributes).
