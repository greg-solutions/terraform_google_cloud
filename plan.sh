#!/usr/bin/env bash
terraform get
terraform plan -refresh=true -var-file=variables.tfvars -var-file=secrets.tfvars -out=plan.bin
