module "route53_records" {
  source = "./modules/route53_records"

  for_each = var.route53_parameters

  create       = true
  private_zone = try(each.value.private_zone, var.route53_defaults.private_zone, data.aws_route53_zone.route53[each.key].private_zone)
  records      = try(each.value.records, var.route53_defaults.records, [])
  zone_id      = try(each.value.zone_id, var.route53_defaults.zone_id, data.aws_route53_zone.route53[each.key].id)
  #records_jsonencoded = try(each.value.records_jsonencoded, var.route53_defaults.records_jsonencoded, null)
  #zone_name = try(each.value.zone_name, var.route53_defaults.zone_name, data.aws_route53_zone.route53[each.key].name)
}

data "aws_route53_zone" "route53" {
  for_each     = var.route53_parameters
  name         = each.key
  private_zone = each.value.private_zone
}