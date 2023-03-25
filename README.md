> Commands

```bash
# For pass variable with default
terraform -var="aws_profile=learn-terraform"

# Pass variables file
terraform plan -var-file="prod.tfvars"
```

```bash
# Control resource created
count = local.instance_number <= 0 ? 0 : local.instance_number

```
