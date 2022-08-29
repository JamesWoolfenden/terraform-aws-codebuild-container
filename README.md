# terraform-aws-codebuild-container

[![Build Status](https://api.github.com/JamesWoolfenden/terraform-aws-codebuild-container/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-codebuild-container)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-codebuild-container.svg)](https://github.com/JamesWoolfenden/terraform-aws-codebuild-container/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-codebuild-container.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-codebuild-container/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-codebuild-container/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-codebuild-container&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-codebuild-container/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-codebuild-container&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module to provision a container pipeline.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Makes a codecommit repo, a codebuild build and ECR, to builds a container using codebuild and and stores them in ECR.

## to do

Once provisioned, you'll need to add this code to the newly created repo to get it to build the container.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_codebuild"></a> [codebuild](#module\_codebuild) | jameswoolfenden/codebuild/aws | v0.3.1 |
| <a name="module_codecommit"></a> [codecommit](#module\_codecommit) | jameswoolfenden/codecommit/aws | 0.3.10 |
| <a name="module_ecr"></a> [ecr](#module\_ecr) | jameswoolfenden/ecr/aws | 0.2.60 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.additionalneeds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role_policy_attachment.lex](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.allowlocals](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_role.codebuild](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | n/a | `map(any)` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of build project | `string` | n/a | yes |
| <a name="input_force_artifact_destroy"></a> [force\_artifact\_destroy](#input\_force\_artifact\_destroy) | n/a | `string` | n/a | yes |
| <a name="input_kms_key"></a> [kms\_key](#input\_kms\_key) | KMS key id | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the registry, repository and build | `string` | n/a | yes |
| <a name="input_otherawsaccount"></a> [otherawsaccount](#input\_otherawsaccount) | n/a | `string` | n/a | yes |
| <a name="input_projectroot"></a> [projectroot](#input\_projectroot) | The root project name | `string` | n/a | yes |
| <a name="input_sourcecode"></a> [sourcecode](#input\_sourcecode) | n/a | `map(any)` | <pre>{<br>  "buildspec": "",<br>  "location": "",<br>  "type": "CODECOMMIT"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_artifact_bucket"></a> [artifact\_bucket](#output\_artifact\_bucket) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Policy Requirement

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-codecommit](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Storing ones code

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-codebuild-container/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-codebuild-container/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2022 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
