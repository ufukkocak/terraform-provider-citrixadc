resource "citrixadc_ipset" "tf_ipset" {
  name = "tf_test_ipset"
}
resource "citrixadc_vpnvserver" "tf_vpnvserver" {
  name           = "tf.citrix.example.com"
  servicetype    = "SSL"
  ipv46          = "3.3.3.3"
  port           = 443
  ipset          = citrixadc_ipset.tf_ipset.name
  dtls           = "OFF"
  downstateflush = "DISABLED"
  listenpolicy   = "NONE"
  tcpprofilename = "nstcp_default_XA_XD_profile"
  # value                    = "SSL feature disabled"
  # ip                       = "0.0.0.0"
  # range                    = "1"
  # type                     = "CONTENT"
  # curstate                 = "DOWN"
  # status                   = 1
  # cachetype                = "SERVER"
  # precedence               = "RULE"
  # authentication           = "ON"
  # doublehop                = "DISABLED"
  # icaonly                  = "OFF"
  # icaproxysessionmigration = "OFF"
  # loginonce                = "OFF"
  # devicecert               = "OFF"
  # maxaaausers              = "0"
  # curaaausers              = "0"
  # curtotalusers            = "0"
  # weight                   = "0"
  # clttimeout               = "180"
  # somethod                 = "NONE"
  # sothreshold              = "0"
  # sopersistence            = "DISABLED"
  # sopersistencetimeout     = "0"
  # acttype                  = "0"
  # intranetip               = "0.0.0.0"
  # netmask                  = "0.0.0.0"
  # numaddr                  = "0"
  # map                      = "ON"
  # disableprimaryondown     = "DISABLED"
  # httpprofilename          = "nshttp_default_strict_validation"
  # appflowlog               = "ENABLED"
  # icmpvsrresponse          = "PASSIVE"
  # rhistate                 = "PASSIVE"
  # cginfrahomepageredirect  = "ENABLED"
  # secondary                = false
  # groupextraction          = false
  # deploymenttype           = "NONE"
  # logoutonsmartcardremoval = "OFF"
  # state                    = "ENABLED"
  # l2conn                   = "OFF"
  # nodefaultbindings        = "NO"
}
