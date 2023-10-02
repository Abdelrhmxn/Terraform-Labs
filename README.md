# Terraform-Labs
## Lab1
1. Configure remote backend and Configure state locking using dynamo db
2. Create vpc
3. Create internet gateway
4. Create two public subnets
5. Create two private subnets
6. Create nat gateway
7. Create public route table
8. Attach public route table to public subnets
9. Create private route table
10. Attach Private route table to private subnets
11. Create security group which allow ssh from 0.0.0.0/0
12. Create security group that allow ssh and port 3000 from vpc cidr only
13. Create ec2(bastion) in public subnet with security group from 12
14. Create ec2(application) private subnet with security group from 13
15. SSH to application using bastian


### 1. Configure remote backend and Configure state locking using dynamo db
#### screenshot from backend.tf 
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/2acc6d63-a46a-44c5-8b65-7987a21ba036" width="" height="" >

#### screenshot from S3
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/f494e98b-fae6-405d-b04a-dd9185a6fbc2" width="" height="" >

#### screenshot from dynamodb
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/0139475f-04fb-4208-a978-3481270cb009" width="" height="" >

### 2. Create vpc
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/66106a25-2c57-4078-ad91-8c500e4a7a3d" width="" height="" >

### 3. Create internet gateway
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/23cf98a8-8415-43a2-985c-2c1ccf9674b8" width="" height="" >

### 4. Create two public subnets
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/6e0abbbb-f6a1-44b7-880d-9b17faf09db1" width="" height="" >

### 5. Create two private subnets
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/46e01090-e5b6-48b2-8825-2e36a59214a4" width="" height="" >

### 6. Create nat gateway
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/6d5a5092-57c1-4d78-85cc-2516fdc00990" width="" height="" >

### 7. Create public route table
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/a2d7a22a-33f1-42e5-9d13-5888077a41a6" width="" height="" >

### 8. Attach public route table to public subnets
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/c4bd48c7-ccbf-4f53-9962-5097a50e4c22" width="" height="" >

### 9. Create private route table
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/0597b610-0815-44b5-86a1-d713d5f75b7f" width="" height="" >

### 10. Attach Private route table to private subnets
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/d7074244-03ef-4843-a5b1-44f98ab5b248" width="" height="" >

### 11. Create security group which allow ssh from 0.0.0.0/0
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/084027b8-6578-4e70-b254-8fdb448c6400" width="" height="" >

### 12. Create security group that allow ssh and port 3000 from vpc cidr only
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/f4e6abb1-18ba-4f14-afcb-a8a44ae054f7" width="" height="" >

### 13. Create ec2(bastion) in public subnet with security group from 12
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/d238c180-f32f-4525-ad5b-04e111809221" width="" height="" >

### 14. Create ec2(application) private subnet with security group from 13
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/9aef7491-ea82-4faf-8c70-f197a2547354" width="" height="" >

### 15. SSH to application using bastian
#### Screenshot from code
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/632c8423-43ca-419e-b585-11aa00f47418" width="" height="" >

#### Screenshot from terminal of [ Private IP of Pricate EC2 & Public IP of Bastian EC2 ]
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/bfde8c29-75c1-4a6f-b2fe-cbaa4781f240" width="" height="" >

#### SSH to Bastian EC2 And use genereted private key to access private EC2
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/807068ec-421a-48ef-bd9c-048f2878d60b" width="" height="" >




## Lab2

### 1. Create Two Workspace dev and prod 
```
terraform workspace new prod
terraform workspace new dev
```
#### Screnshot from terminal
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/6cd81ceb-f261-4cf6-9cf5-c2a905e0fda4" width="" height="" >

### 2. Create two variables definition file (.tfvars) for two environment
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/33a196f6-f3f7-45c1-a318-b4726011c165" width="" height="" >
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/188d62ae-8170-4ee1-b2bf-83ea7326bf95" width="" height="" >

### 3. Seperate network resourses into network module
<div >
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/6e720424-4c60-4ceb-8fba-5871421c90da" width="" height="" >
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/fa695eb7-8b31-4458-acae-34fb095c3348" width="" height="" >
</div>

### 4. Using count with subnets
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/9acdc2ed-e06f-4d64-8ed6-1ba82288be2c" width="" height="" >
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/843ae782-ec3e-461d-ad24-eede484a2390" width="" height="" >

### 5. Run local-exec provisioner to print the public_ip of bastion ec2
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/d6849249-d842-43d7-95c8-f30111a70d00" width="" height="" >
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/638fcdb1-8d03-46f7-808e-2d0cff1c57b3" width="" height="" >
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/ef0a2ca9-0259-43ae-8005-81cd96019e86" width="" height="" >

### 6. Upload infrastructure code on github project
[Github](https://github.com/Abdelrhmxn/IAC-Terraform) - Github Repo for my IAC

### 7. Jenkinsfile for pipline
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/44eb7eb3-1ace-4be6-8992-6022d7822c5a" width="" height="" >

#### Build with param
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/a2357d9b-7a7f-469e-8187-6f2890df2140" width="" height="" >

#### Successful Build
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/3d291a97-e9d0-4fb0-b074-7939a7b690e8" width="" height="" >
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/aa8c7bff-f95d-4f70-b02b-240d445c13c9" width="" height="" >

### 8. Verify your email in ses service
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/6ea6e692-9128-444f-ada7-1d51e3aa33b6" width="" height="" >

### 9. Create Lamda function to send Email
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/d9c6e3d9-8833-4665-a5f6-7e7dd84ae760" width="" height="" >

### 10. Triggered Email from lambda function
<img src="https://github.com/Abdelrhmxn/Terraform-Labs/assets/55556764/b5510ca3-fb8c-4aa2-af44-c5008d786aeb" width="" height="" >



















