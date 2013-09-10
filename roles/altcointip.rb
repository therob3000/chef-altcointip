name "altcointip"
description "Role to set up altcointip, Reddit altcoin tip bot"

default_attributes(
  "mysql" => {
    "bind_address" => "127.0.0.1",
    "tunable" => {
      "wait_timeout" => "3600"
    }
  },
  "altcointip" => {
    "cron" => {
      "stats" => {
        "enabled" => false
      },
      "backup_db" => {
        "enabled" => false
      },
      "backup_wallets" => {
        "enabled" => false
      }
    },
    "coins" => {
      "bitcoin" => {
        "enabled" => true
      }
    }
  }
)

run_list(
  "recipe[altcointip::default]",
<<<<<<< HEAD
  "recipe[altcointip::coins]",
  "recipe[altcointip::phpmyadmin]"
=======
  "recipe[altcointip::coins]"
>>>>>>> 7e66345ffb936ce1602106d35165866dc66722fd
)
