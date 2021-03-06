:_ (!jaws)

@echo off



:_

set filep=* Jonathan plus AWS = Jaws. A CWS CLI demo companion file. This file is a wrapper around the AWS CLI.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1: The function you wish to execute.

echo.
echo %parameter_1%

exit/b



:_ **** Beginning of Demo Code ****



:_

:hello

echo.
echo Hello world from the Jaws batch file. Think of "hello" as the name of a function you ^
^ and "exit/b" as just the end of the function.

exit/b



:_

:version

rem     Typing "jaws --version" is the equivalent as typing "aws version".
rem     So why bother using jaws then? Because jaws allows you to create a repeatable, testable, 
rem     version-controllable and perfectible script. Jaws is a wrapper around AWS. Things you 
rem     put in jaws will generally be more sophisticated than this simple example. You'll see.

@echo on
aws --version
@echo off

exit/b



:_

:cfg

set fp=* Configure. On our customer's system, there is a gotcha for the Default region name. ^
Must be us-gov-west-1 which struggled to learn. Here we will use us-gov-east-1.

echo.
echo %fp%

echo.
aws configure

exit/b



:_

:get_user

set fp=* Get user cli_demo_user.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws iam get-user --user-name cli_demo_user

exit/b



:_

:lak

set fp=* List access keys.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws iam list-access-keys --user-name cli_demo_user

exit/b



:_

:create_group

set fp=* Create a group for CLI users.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws iam create-group --group-name cli_users_group

exit/b



:_

:lipo

set fp=* List policies.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws iam list-policies

exit/b



:_

:agp_ec2

set fp=* Attach group policy for EC2.

rem lu: Dec-28-2018

echo.
echo %fp%

aws iam attach-group-policy --policy-arn arn:aws-us-gov:iam::aws:policy/AmazonEC2FullAccess ^
  --group-name cli_users_group

exit/b



:_

:agp_rds

set fp=* Attach group policy for RDS.

rem lu: Dec-28-2018

echo.
echo %fp%

aws iam attach-group-policy --policy-arn arn:aws-us-gov:iam::aws:policy/AmazonRDSFullAccess ^
  --group-name cli_users_group

exit/b



:_

:autg

set fp=* Add user to group.

rem lu: Dec-28-2018

echo.
echo %fp%

aws iam add-user-to-group --group-name cli_users_group --user-name cli_demo_user

exit/b



:_

:create_sg

:create_security_group

set fp=* Create security group.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws ec2 create-security-group --group-name CLIDemoSecurityGroup ^
  --description "Security Group for EC2 instances to allow access on port 22."

exit/b



:_+ Descibe Functions



::_

:d_sg

:describe_sg

set fp=* Describe our demo security group.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 describe-security-groups --group-names CLIDemoSecurityGroup

exit/b



::_

:d_sgs

set fp=* Describe security groups.

rem lu: Dec-11-2018

echo.
echo %fp%

echo.
aws ec2 describe-security-groups

exit/b



:_

:auth_port_22

set fp=* Authorize security group ingress for port 22, SSH traffic. Warning: wide open version.

rem lu: Feb-26-2019

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name CLIDemoSecurityGroup --protocol tcp ^
  --port 22 --cidr 0.0.0.0/0

exit/b



:_

:d_im

set fp=* Describe images.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws ec2 describe-images --filters "Name=description, Values=*Amazon Linux 2*" ^
  "Name=owner-alias,Values=amazon"

exit/b



:_

:b

:desu

:d_su

:subnets

set fp=* Describe subnets. When you choose an AWS subnet, you are choosing the availability ^
zone.

rem lu: Nov-19-2018

rem Presentation topic.

echo.
echo %fp%

echo.
aws ec2 describe-subnets

exit/b



:_

:gaws_mar-19-2019_1126_Ubuntu

set fp=* Create an Linux instance for demo.

rem lu: Feb-26-2019

echo.
echo %fp%

call td tfkeys

set cbf_file=kibble_balance_key_pair

call m specific_file_presence %cbf_file%.pem

if %errorlevel% == 1 (
  exit/b
)

echo.
aws ec2 run-instances ^
  --count 1 ^
  --image-id ami-39a64048 ^
  --instance-type t3.medium ^
  --key-name %cbf_file% ^
  --security-group-ids sg-0047d128fc8b50d49 ^
  --subnet-id subnet-8c04e4e5 ^
  --tag-specifications ^
    ResourceType=instance,Tags=[{Key=Application,Value=app},{Key=BillingCode,Value=Bill},{Key=Environment,Value=dv},{Key=Name,Value=%1},{Key=Portfolio,Value=ROE},{Key=ResourcePOC,Value=tom@test.com}]

exit/b



:_

:connect

:ub

set fp=* Connect to Ubuntu server.

rem lu: Mar-18-2019

echo.
echo %fp%

call n git_user_bin

set git_user_bin=%cbf_path%

call td tfkeys

rem Change this line to your ip address.
set public_dns=ec2-18-253-65-121.us-gov-east-1.compute.amazonaws.com

echo.

"%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" ubuntu@%public_dns%

exit/b



:_

:connect_existing

:ub

set fp=* Connect to Ubuntu server.

rem lu: Feb-26-2019

echo.
echo %fp%

call n git_user_bin

set git_user_bin=%cbf_path%

call td tfkeys

rem Change this line to your ip address.
set public_dns=ec2-18-253-68-33.us-gov-east-1.compute.amazonaws.com

echo.

"%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" ubuntu@%public_dns%

exit/b



:_+ 3 Script functions needed to create a connectable PostgresDB.



::_

:delete_PostgresDemoSecurityGroup

set fp=* Delete security group.

rem lu: Nov-5-2018

echo.
echo %fp%

aws ec2 delete-security-group --group-name PostgresDemoSecurityGroup

exit/b



::_

:create__PostgresDemoSecurityGroup

set fp=* Create security group for db.

rem lu: Dec-20-2018

echo.
echo %fp%

echo.
aws ec2 create-security-group --group-name PostgresDemoSecurityGroup ^
  --description "Security Group for Postgres use." ^
  --vpc-id vpc-af32d0c6

exit/b



::_

:d_sg_PostgresDemoSecurityGroup

set fp=* Describe our demo security group.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 describe-security-groups --group-names PostgresDemoSecurityGroup

exit/b



::_

:auth_5432

set fp=* Authorize security group ingress for Postgres connection traffic on port 5432.

rem lu: Feb-26-2019

echo.
echo %fp%

aws ec2 authorize-security-group-ingress ^
  --group-id sg-0e5279f665d6240df ^
  --port 5432 --cidr 0.0.0.0/0 ^
  --protocol tcp

exit/b



::_

:postgres_db_fr_cli_on_gaws_asus_at_Mar_19_2019

set fp=* Create database with multiple tags using Postgres Security Group.

rem lu: Feb-26-2019

echo.
echo %fp%

set database_name=%1

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myusername ^
  --master-user-password mypassword ^
  --tags ^
    "Key"="Application","Value"="CART" ^
    "Key"="BillingCoder","Value"="xyz123" ^
    "Key"="Environment","Value"="dv" ^
    "Key"="POC","Value"="test@gmail.com" ^
    "Key"="Portfolio","Value"="ABC" ^
    "Key"="Version","Value"="1.0" ^
  --vpc-security-group-ids sg-0e5279f665d6240df

exit/b



:_+ Tags



::_

:rename_server_tag

set fp=* Change a single tag on a resource.

rem lu: Feb-25-2019

echo.
echo %fp%

set cbf_instance_id=i-041bdefac740a8f18

call %0 tag_generic Name Brand_New_Server_Name

exit/b



::_

:tag_generic

set fp=* Tag generic "%2" - "%3".

rem lu: Feb-25-2019

echo.
echo %fp%

aws ec2 create-tags --resources %cbf_instance_id% --tags Key=%2,Value=%3

exit/b



::_

:postgres_db_fr_cli_on_gaws_asus_at_Feb_28_2019_0159

set fp=* Create database with multiple tags using Postgres Security Group.

rem lu: Feb-26-2019

echo.
echo %fp%

set database_name=%1

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myusername ^
  --master-user-password mypassword ^
  --tags ^
    "Key"="Application","Value"="CART" ^
    "Key"="BillingCoder","Value"="xyz123" ^
    "Key"="Environment","Value"="dv" ^
    "Key"="POC","Value"="test@gmail.com" ^
    "Key"="Portfolio","Value"="ABC" ^
    "Key"="Version","Value"="1.0" ^
  --vpc-security-group-ids sg-0aca11e029594bae7

exit/b



:_

:the_end

:is_hungry

set fp=* Jaws is hungry. Get out of the water!

rem Think of this as a function.

rem lu: Dec-18-2018

echo.
echo %fp%

call sf hungry_shark

exit/b



:_

:check_pem_existence

set fp=* Check the current folder for the presence of an *.pem file(s).

rem lu: Nov-6-2018

echo.
echo %fp%

if not exist *.pem (
  echo.
  echo * Error: No pem file exist in the current folder.
  exit/b 1
)

exit/b 0



:_

:retag

set fp=* Retag a resource.

rem lu: Dec-12-2018

echo.
echo %fp%

aws ec2 create-tags --resources i-0bce1b3771799a4ed --tags Key=Name,Value=Jenkins_Dec_11_2018

rem This also works.
rem aws ec2 create-tags --resources i-0bce1b3771799a4ed --tags Key=Name,Value=Production

exit/b



:_

:cren

set fp=* Create environment.

rem lu: Dec-27-2018

echo.
echo %fp%

echo.

call %0 create_user_mike

call %0 create_iam_group

call %0 attach_policy_ec2

call %0 attach_policy_s3

call %0 add_user_to_group

rem See the BEFORE picture. What are the current security groups? How many are there?
call %0 dsg
 
call %0 create_security_group

call set_firewall_rules

rem See the AFTER picture. What are the current security groups? How many are there?

call %0 dsg

xit/b



::_

:set_firewall_rules

set fp=* Set firewall rules.

call %0 auth1

call %0 auth2

call %0 auth3

call %0 auth4

exit/b



:_

:ppt

set fp=* Jaws Powerpoint.

rem lu: Dec-18-2018

echo.
echo %fp%

call j jaws_ppt

exit/b



:_

:cak

set fp=* Create access key.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws iam create-access-key --user-name cli_demo_user

exit/b



:_+ Clean up old stuff so as to be ready for the next demo.



::_

:dak

:delete_access_key

set fp=* Delete access key.

rem lu: Dec-28-2018

echo.
echo %fp%

aws iam delete-access-key --access-key-id AKIALFJIWNYYPFBKQNAQ --user-name cli_demo_user

exit/b



::_

:rug

set fp=* Remove user from group.

rem lu: Dec-28-2018

echo.
echo %fp%

aws iam remove-user-from-group --user-name cli_demo_user --group-name cli_users_group

exit/b



::_

:du

:de_us

:delete_user

set fp=* Delete user.

rem lu: Dec-28-2018

echo.
echo %fp%

aws iam delete-user --user-name cli_demo_user

exit/b



:_

:dsc_vpcs

set fp=* Describe VPCs.

rem lu: Dec-20-2018

echo.
echo %fp%

echo.
aws ec2 describe-vpcs

exit/b



:_

:delete_security_group

set fp=* Delete security group.

rem lu: Nov-5-2018

echo.
echo %fp%

rem First you need to delete the instance from the console.

aws ec2 delete-security-group --group-name CLIDemoSecurityGroup

exit/b



:_

:d_ins

set fp=* Describe instances.

rem lu: Dec-13-2018

echo.
echo %fp%

echo.
aws ec2 describe-instances --color off

exit/b



:_

:gaws_feb-27-2019_0209_Ubuntu

set fp=* Create an Linux instance for demo.

rem lu: Feb-26-2019

echo.
echo %fp%

call td tfkeys

set cbf_file=kibble_balance_key_pair

call m specific_file_presence %cbf_file%.pem

if %errorlevel% == 1 (
  exit/b
)

echo.
aws ec2 run-instances ^
  --count 1 ^
  --image-id ami-39a64048 ^
  --instance-type t3.medium ^
  --key-name %cbf_file% ^
  --security-group-ids sg-0f1b0240a8da72049 ^
  --subnet-id subnet-8c04e4e5 ^
  --tag-specifications ^
    ResourceType=instance,Tags=[{Key=Application,Value=app},{Key=BillingCode,Value=Bill},{Key=Environment,Value=dv},{Key=Name,Value=%1},{Key=Portfolio,Value=ROE},{Key=ResourcePOC,Value=tom@test.com}]

exit/b



:_ (!rfsp) (mov-6)
