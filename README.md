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
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| common\_tags | n/a | `map` | n/a | yes |
| description | Description of build project | `string` | n/a | yes |
| force\_artifact\_destroy | n/a | `string` | n/a | yes |
| name | The name of the registry, repository and build | `string` | n/a | yes |
| otherawsaccount | n/a | `string` | n/a | yes |
| projectroot | The root project name | `string` | n/a | yes |
| sourcecode | n/a | `map` | <pre>{<br>  "buildspec": "",<br>  "location": "",<br>  "type": "CODECOMMIT"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| artifact\_bucket | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

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

Copyright © 2019-2021 James Woolfenden

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
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-codebuild-container&url=https://github.com/jameswoolfenden/terraform-aws-codebuild
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-codebuild-container&url=https://github.com/jameswoolfenden/terraform-aws-codebuild
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-codebuild-container
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-codebuild-container
[share_email]: mailto:?subject=terraform-aws-codebuild-container&body=https://github.com/jameswoolfenden/terraform-aws-codebuild-container
