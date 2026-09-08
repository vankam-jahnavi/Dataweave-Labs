%dw 2.0
output application/json
import * from dw::core::Strings
var glist = payload.TableList groupBy ((item, index) -> (substringBefore(item.Name, "_")))
---
{
    sourceList : glist pluck ((value, key, index) -> {
        sourceName : (key),
        tableList : value map ((item, index) -> (substringAfter(item.Name, "_")))
    })
}

/*
{
  "sourceList": [
    {
      "sourceName": "plm",
      "tableList": [
        "custozxmer_mxzaster",
        "globaxl_imxs_oxzb"
      ]
    },
    {
      "sourceName": "mdm",
      "tableList": [
        "ksa_trtm_key_accoaunt",
        "ksa_trtm_key_accounsat1"
      ]
    },
    {
      "sourceName": "aidsa",
      "tableList": [
        "dcwds1_devices",
        "ksasa_trsatm_account"
      ]
    }
  ]
}
*/