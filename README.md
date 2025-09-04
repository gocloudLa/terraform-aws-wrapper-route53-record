# Standard Platform - Terraform Module 🚀🚀
<p align="right"><a href="https://partners.amazonaws.com/partners/0018a00001hHve4AAC/GoCloud"><img src="https://img.shields.io/badge/AWS%20Partner-Advanced-orange?style=for-the-badge&logo=amazonaws&logoColor=white" alt="AWS Partner"/></a><a href="LICENSE"><img src="https://img.shields.io/badge/License-Apache%202.0-green?style=for-the-badge&logo=apache&logoColor=white" alt="LICENSE"/></a></p>

Welcome to the Standard Platform — a suite of reusable and production-ready Terraform modules purpose-built for AWS environments.
Each module encapsulates best practices, security configurations, and sensible defaults to simplify and standardize infrastructure provisioning across projects.

## 📦 Module: Terraform Route53 DNS Module
<p align="right"><a href="https://github.com/gocloudLa/terraform-aws-wrapper-route53-record/releases/latest"><img src="https://img.shields.io/github/v/release/gocloudLa/terraform-aws-wrapper-route53-record.svg?style=for-the-badge" alt="Latest Release"/></a><a href=""><img src="https://img.shields.io/github/last-commit/gocloudLa/terraform-aws-wrapper-route53-record.svg?style=for-the-badge" alt="Last Commit"/></a><a href="https://registry.terraform.io/modules/gocloudLa/wrapper-route53-record/aws"><img src="https://img.shields.io/badge/Terraform-Registry-7B42BC?style=for-the-badge&logo=terraform&logoColor=white" alt="Terraform Registry"/></a></p>
The Terraform wrapper for Route53 simplifies the configuration of the DNS service in the AWS cloud. This wrapper functions as a predefined template, facilitating the creation and management of Route53 by handling all the technical details.

### ✨ Features



### 🔗 External Modules
| Name | Version |
|------|------:|
| <a href="https://github.com/terraform-aws-modules/terraform-aws-route53" target="_blank">terraform-aws-modules/route53/aws</a> | 5.0.0 |



## 🚀 Quick Start
```hcl
route53_parameters = {
  "${local.zone_public}" = {
    private_zone = false
    records = [
      {
        name    = ""
        type    = "MX"
        ttl     = "300"
        records = [
          "1 ASPMX.L.GOOGLE.COM",
          "5 ALT1.ASPMX.L.GOOGLE.COM",
          "5 ALT2.ASPMX.L.GOOGLE.COM",
          "10 ALT3.ASPMX.L.GOOGLE.COM",
          "10 ALT4.ASPMX.L.GOOGLE.COM"
        ]
      }
    ]
  }
}
```


## 🔧 Additional Features Usage



## 📑 Inputs
| Name                | Description                                                  | Type     | Default                                                | Required |
| ------------------- | ------------------------------------------------------------ | -------- | ------------------------------------------------------ | -------- |
| private_zone        | Whether Route53 zone is private or public                    | `bool`   | `data.aws_route53_zone.route53[each.key].private_zone` | no       |
| records             | List of objects of DNS records                               | `list`   | `[]`                                                   | no       |
| zone_id             | ID of DNS zone                                               | `string` | `data.aws_route53_zone.route53[each.key].id`           | no       |
| zone_name           | Name of DNS zone (currently commented out in code)           | `string` | `data.aws_route53_zone.route53[each.key].name`         | no       |
| records_jsonencoded | List of map of DNS records (currently commented out in code) | `string` | `null`                                                 | no       |








---

## 🤝 Contributing
We welcome contributions! Please see our contributing guidelines for more details.

## 🆘 Support
- 📧 **Email**: info@gocloud.la

## 🧑‍💻 About
We are focused on Cloud Engineering, DevOps, and Infrastructure as Code.
We specialize in helping companies design, implement, and operate secure and scalable cloud-native platforms.
- 🌎 [www.gocloud.la](https://www.gocloud.la)
- ☁️ AWS Advanced Partner (Terraform, DevOps, GenAI)
- 📫 Contact: info@gocloud.la

## 📄 License
This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details. 