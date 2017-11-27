# aws-automation
## Details

This repository sets up:
* A publicly-accessible EC2 instance

## Setup

1. Install the following locally:
    * [Terraform](https://www.terraform.io/) >= 0.10.0
    * [Terraform Inventory](https://github.com/adammck/terraform-inventory)
    * Python 2
    * [pip](https://pip.pypa.io/en/stable/installing/)
1. Set up AWS credentials in [`~/.aws/credentials`](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html#cli-config-files).
    * The easiest way to do so is by [setting up the AWS CLI](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-set-up.html).
1. Ensure you have an SSH public key at `~/.ssh/id_rsa.pub`.
    * [How to generate](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

