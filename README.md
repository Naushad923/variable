🏗️ Terraform Variables Practice
Welcome to the Terraform Variables Practice repository! 🚀
This repository contains hands-on practice examples demonstrating the different methods to define, assign, and pass variables in Terraform when provisioning Azure Infrastructure (such as azurerm_resource_group).

📁 Repository Structure
text

variable/
├── CLI/                # 💬 Variable passed via CLI interactive prompt
├── auto_tfvars/        # ⚡ Variable automatically loaded from *.auto.tfvars
├── default/            # 📌 Variable with a default value set in main.tf
├── terraform_tfvars/   # 📄 Variable loaded automatically from terraform.tfvars
├── var/                # 🚩 Variable passed using -var command line flag
└── var_file/           # 📂 Variable passed using -var-file command line flag


💡 Practice Examples Explained


# 1. 📌 Default Value (default/)
Defines a variable with a default value directly inside the main.tf block. If no value is provided during execution, Terraform uses this default value.

hcl
variable "xyz" {
  type    = string
  default = "naushad-rg"
}
Execution:

terraform plan


# 2. 📄 terraform.tfvars File (terraform_tfvars/)
Defines an empty variable declaration in main.tf and assigns the value inside a standard terraform.tfvars file.

main.tf:

hcl
variable "xyz" {
  type = string
}
terraform.tfvars:

hcl
xyz = "naushad-rg"
Execution:


terraform plan
ℹ️ Terraform automatically loads terraform.tfvars in the working directory.


# 3. ⚡ *.auto.tfvars File (auto_tfvars/)
Files ending with .auto.tfvars or .auto.tfvars.json are automatically loaded by Terraform without needing explicit flags.

dev.auto.tfvars:

hcl
xyz = "naushad-rg"
Execution:

terraform plan


# 4. 📂 Custom .tfvars File (var_file/)
Allows passing custom tfvars files (e.g., environment-specific configurations like dev.tfvars, prod.tfvars) using the -var-file argument.

dev.tfvars:

hcl
xyz = "naushad-rg"
Execution:

terraform plan -var-file="dev.tfvars"


# 5. 🚩 Command Line Flag (var/)
Passes variable values directly on the command line during plan or apply execution using the -var flag.

Execution:

terraform plan -var="xyz=naushad-rg"


# 6. 💬 CLI Interactive Prompt (CLI/)
When a variable is declared without a default value or provided .tfvars file, Terraform interactively prompts the user for input in the terminal.

main.tf:

hcl
variable "xyz" {
  type = string
}
Execution:

terraform plan
Output:

text


var.xyz
  Enter a value: naushad-rg
⚡ Variable Order of Precedence in Terraform


When variable values are supplied in multiple places, Terraform resolves conflicts using the following order of precedence (highest precedence wins 🏆):

🥇 -var and -var-file options specified on the command line.
🥈 *.auto.tfvars or *.auto.tfvars.json files (processed in alphabetical order).
🥉 terraform.tfvars or terraform.tfvars.json file.
🏅 TF_VAR_name environment variables.
🎖️ default value specified in the variable declaration block.
🛠️ Prerequisites & Setup
🟦 Terraform CLI (v1.0+)
☁️ Azure CLI logged in using az login
🔐 Azure Subscription configured for Terraform

# Perform dry run
terraform plan
