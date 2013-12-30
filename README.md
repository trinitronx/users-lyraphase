# users-lyraphase cookbook
Sets up lyraphase defined users using the standard chef users cookbook

# Requirements
https://github.com/opscode-cookbooks/users

# Usage
Just include `users-gloo::jenkins` in your node's `run_list`:

```json
{
      "name":"my_node",
        "run_list": [
            "recipe[users-lyraphase::ops]"
              ]
}
`````

# Attributes
None yet

# Recipes

# Author

Author:: James Cuzella (<james.cuzella@lyraphase.com>)
