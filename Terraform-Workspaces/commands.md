
```
terraform workspace new dev
terraform plan
terraform apply --auto-approve
```

```
terraform workspace new staging
terraform plan
terraform apply --auto-approve
```

```
terraform destroy --auto-approve
terraform workspace select dev
terraform destroy --auto-approve
```

