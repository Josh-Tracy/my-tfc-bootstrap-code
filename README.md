# my-tfc-bootstrap-code
Helps me get a TFC org up and running fast with populated data

## Here is how I use this

1. Modify the variables.tf maps and the main.tf inputs in each of the `/examples` directories.
2. Terraform apply the `teams` example first, then `varsets`, and then `workspaces`.
3. Each workspace should connect to this repositories `/data/sample-state` directory.
4. Do some runs on each workspace to create multiple state files in each worksapce.