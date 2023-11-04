This `README.md` will guide users on how to deploy the infrastructure, provide any assumptions made and steps to validate the setup:

# TERRAFORM INFRASTRUCTURE FOR SECURE VPC IN AWS

This Terraform project deploys a secure VPC environment in AWS with an Nginx web server running on an EC2 instance. The infrastructure includes a Load Balancer and routes traffic through a NAT Gateway.

This terraform script creates a secure vpc in aws. It has private and public subnets, NAT gateways for the private subnets.


# DEPLOYMENT INSTRUCTIONS

## Prerequisites

Before deploying the infrastructure, make sure you have the following prerequisites:

- [Terraform](https://www.terraform.io/) installed on your local machine.
- AWS credentials configured with appropriate permissions. You can set these up using the AWS CLI or by configuring the `~/.aws/credentials` file.
- Replace placeholders such as `your-ami-id` and `your-allowed-IP` in the Terraform files with actual values specific to your environment.

### Deployment Steps

1. **Clone the Repository**

   Clone this GitHub repository to your local machine.

   git clone https://github.com/yourusername/your-terraform-project.git
   cd your-terraform-project

2. **Initialize Terraform**

   Initialize the Terraform project to download required providers and modules.

   terraform init

3. **Review and Modify Variables (if needed)**

   Review the Terraform variables in the configuration files, such as `variables.tf`. Modify them to suit your requirements.

4. **Deploy the Infrastructure**

   Deploy the infrastructure by running `terraform apply` and confirm with `yes` when prompted.

   terraform apply

   Terraform will create the VPC, subnets, EC2 instance, Load Balancer, NAT Gateway and related resources.

5. **Access the Nginx Page via the Load Balancer**

   Once the infrastructure is deployed, you can access the Nginx web page via the Load Balancer. The Load Balancer's DNS name is provided as an output. Open a web browser and enter the DNS name:

   http://<load_balancer_dns_name>

6. **Destroy the Infrastructure (Optional)**

   If you need to tear down the infrastructure, you can do so with:

   terraform destroy

   Confirm with `yes` when prompted.

## Assumptions

- It is assumed that you have AWS credentials properly configured with the necessary permissions for creating and managing AWS resources.
- You have chosen to deploy an Nginx web server and the user data script installs and runs Nginx on the EC2 instance. You can modify this script as needed for your application.

## Validation

To validate the setup, follow these steps:

1. Deploy the infrastructure as described above.
2. Access the Nginx web page via the Load Balancer's DNS name.
3. Confirm that you can view the Nginx default page which indicates that traffic is being routed correctly.

## Additional Information

- For more information on customizing the Terraform configuration, please refer to the Terraform documentation.
- Ensure that your Terraform code and AWS configurations are secure and follow best practices for production environments. Review and adjust security group rules and network ACLs to your specific requirements.

ENJOY YOUR AWS SECURE VPC ENVIRONMENT!
