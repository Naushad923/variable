# Terraform Variables Practice
This repository contains daily practice examples demonstrating different ways to define and pass variables in **Terraform** when managing Azure Infrastructure (such as `azurerm_resource_group`).
---
## 📁 Repository Structure
Variable/ └── 13_08_2026/ ├── CLI/ # Variable passed via interactive prompt or CLI flag ├── default/ # Variable defined with default value in main.tf ├── terradorm_tfvars/ # Variable loaded automatically from terraform.tfvars └── var/ # Variable passed via terraform plan -var command



---
## 💡 Practice Examples Explained
### 1. **Default Value (`13_08_2026/default/`)**
Defines a variable with a default value directly inside the `main.tf` block.
```hcl
variable "xyz" {
  type    = string
  default = "naushad-rg"
}
Execution:

bash


terraform plan
2. terraform.tfvars File (13_08_2026/terradorm_tfvars/)
Defines an interactive or empty variable declaration in main.tf, and assigns values inside terraform.tfvars.

main.tf:
hcl


variable "xyz" {}
terraform.tfvars:
hcl


xyz = "naushad-rg"
Execution:

bash


terraform plan
(Terraform automatically reads terraform.tfvars in the working directory)

3. Command Line Flag -var (13_08_2026/var/)
Passes variable values directly on the command line during execution.

bash


terraform plan -var "xyz=naushad-rg"
4. CLI Interactive Prompt (13_08_2026/CLI/)
When a variable is declared without a default value or .tfvars file, Terraform prompts the user interactively in the terminal.

bash


terraform plan
# Output: Enter a value for xyz:
⚡ Variable Order of Precedence in Terraform
When variable values are supplied in multiple places, Terraform applies them in the following order (highest precedence wins):

-var and -var-file options on the command line.
*.auto.tfvars or *.auto.tfvars.json files, processed in alphabetical order.
terraform.tfvars or terraform.tfvars.json file.
TF_VAR_name environment variables.
default value specified in the variable declaration block.
