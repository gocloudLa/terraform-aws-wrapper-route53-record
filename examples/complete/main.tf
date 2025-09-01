module "wrapper_route53" {
  source = "../../"

  metadata = local.metadata

  route53_parameters = {
    "${local.zone_public}" = {
      private_zone = false
      records = [
        {
          name    = ""
          type    = "A"
          ttl     = "30"
          records = ["3.18.46.96"]
        },
        {
          name = ""
          type = "MX"
          ttl  = "300"
          records = [
            "1 ASPMX.L.GOOGLE.COM",
            "5 ALT1.ASPMX.L.GOOGLE.COM",
            "5 ALT2.ASPMX.L.GOOGLE.COM",
            "10 ALT3.ASPMX.L.GOOGLE.COM",
            "10 ALT4.ASPMX.L.GOOGLE.COM"
          ]
        },
        {
          name = ""
          type = "TXT"
          ttl  = "300"
          records = [
            "google-site-verification=UyaxCMKHPxJf8AS88PdKtRXzWcPTYw6q7LjbMEgElT8",
            "MS=BE52C91ABBF965C8E2115DD25FA27EC9062CF5D6",
          ]
        },
        {
          name    = "34447809"
          type    = "CNAME"
          ttl     = "300"
          records = ["sendgrid.net"]
        },
      ]
    }
  }
}
