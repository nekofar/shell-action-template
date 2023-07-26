# Shell Action Template

[![GitHub release (latest SemVer including pre-releases)](https://img.shields.io/github/v/release/nekofar/shell-action-template?include_prereleases)](https://github.com/nekofar/shell-action-template/releases)
[![GitHub Workflow Status (branch)](https://img.shields.io/github/actions/workflow/status/nekofar/shell-action-template/prepare.yml)](https://github.com/nekofar/shell-action-template/actions/workflows/prepare.yml)
[![GitHub](https://img.shields.io/github/license/nekofar/shell-action-template)](https://github.com/nekofar/shell-action-template/blob/master/LICENSE)
[![Twitter Follow](https://img.shields.io/badge/follow-%40nekofar-1DA1F2?logo=twitter&style=flat)](https://twitter.com/nekofar)
[![Donate](https://img.shields.io/badge/donate-nekofar.crypto-a2b9bc?logo=ko-fi&logoColor=white)](https://ud.me/nekofar.crypto)

This repository provides a comprehensive template for creating GitHub Actions using Shell Scripts. It encapsulates best
practices in scripting and interaction with the GitHub Actions environment.

## Features

1. **Scalable**: Enable easy scaling and modification of your Action steps using Shell scripts.
2. **Compatibility**: Designed to work seamlessly with the GitHub Actions environment.
3. **Best Practices**: Incorporates shell scripting best practices for enhanced efficiency and reliability.

## Example

```yaml
# Name of the workflow
name: Greeting Workflow

# Events that trigger the workflow
on: [ push, pull_request ]

# Define a single job named 'greeting'
jobs:
  greeting:
    # The type of machine that this job can run on
    runs-on: ubuntu-latest
    # List of steps this job will run
    steps:
      - name: Greet and Record Time  # Name for this step
        id: hello  # Unique identifier for the step to reference its outputs in other steps   
        uses: nekofar/shell-action-template@master  # Specifies the action to run as part of this step
        with: # Inputs for the 'uses' action
          who-to-greet: 'GitHub User'  # The 'who-to-greet' input for 'Hello World Action'

      - name: Get the output time  # Name for this step
        run: echo "The time was ${{ steps.hello.outputs.time }}"  # Display the 'time' output from 'hello' step
```

## Options

The configuration used in the GitHub Action workflow includes several options for customization. Below is a description
of these:

| Option         | Description                                                                                          |
|----------------|------------------------------------------------------------------------------------------------------|
| `who-to-greet` | This input is used to specify who to greet. If not provided, the default value 'World' will be used. |

## Contributing

We value your input and help! If you're interested in contributing, please reference
our [Contributing Guidelines](./CONTRIBUTING.md). Contributions aren't just about code - any bug reports, feedback, or
documentation enhancements are welcomed. Thanks for helping to improve this project!
