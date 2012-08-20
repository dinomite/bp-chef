name "base"
description "Base role"

run_list(
  "recipe[sudo]",
  "recipe[runit]"
)

default_attributes({
  "authorization" => {
    "sudo" => {
      "passwordless" => true,
      "users" => ["vagrant"]
    }
  }
})
