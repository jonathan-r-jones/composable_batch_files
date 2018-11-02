:_

@echo off



:_

set filename_stands_for=* AWS-related tasks.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Nov-1-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:vers

set fp=* Version

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --version

exit/b



:_

:conf

set fp=* Configure

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws configure

exit/b



:_

:add_account

set fp=* Add account.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws configure --profile account2

exit/b



:_

:voa

set fp=* View other account.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.

aws --profile account2 s3 ls

exit/b



:_

:sc

set fp=* Look up sample code.

rem lu: Nov-2-2018

echo.
echo %fp%

call sf aws_cli

exit/b



:_

:cent

set fp=* List EC@ AMI CentOS images.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --output table ec2 describe-images --filters "Name=description, Values=*CentOS*" "Name=owner-alias,Values=amazon"

exit/b



:_

:win

:wind

set fp=* List EC@ AMI Windows images.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --output table ec2 describe-images --filters "Name=description, Values=*Wind*" "Name=owner-alias,Values=amazon"

exit/b



:_

:dry

set fp=* Dry run.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 run-instances --dry-run

exit/b



:_

:ahelp

set fp=* AWS help.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --help

exit/b



:_

:wh

set fp=* Website help.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 website help

exit/b



:_+ Buckets



::_

:s3_mb

set fp=* Make a bucket.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 mb s3://test4444test4444

exit/b



::_

:s3_rb

set fp=* Remove a bucket.

rem Note: The force parameter seems to placed exactly after the rb command in order to work.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 rb --force s3://test4444test4444

exit/b



::_

:s3_ls

set fp=* List all s3 buckets.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 ls

exit/b



::_

:s3_h

set fp=* Help for S3

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 help

exit/b



:_

:s3_ctp

set fp=* Copy stuff to bucket.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 cp --recursive test1/ s3://test4444test4444

exit/b



:_

:s3_lbc

set fp=* List bucket contents.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 ls s3://test4444test4444

exit/b



:_

:cu

set fp=* Create user

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam create-user --user-name mike

exit/b



:_

:gu

set fp=* Get user information.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam get-user --user-name mike

exit/b



:_

:gu2

set fp=* Get user information.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam get-user --user-name terraform_user

exit/b



:_

:lak

set fp=* List access keys.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam list-access-keys --user-name terraform_user

exit/b



:_

:lam

set fp=* List access keys for Mike.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam list-access-keys --user-name mike

exit/b



:_

:cak

set fp=* Create access key for Mike.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam create-access-key --user-name mike

exit/b



:_

:crgr

set fp=* Create group.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam create-group --group-name admins

exit/b



:_

:lgp

set fp=* List group policies.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam list-policies

exit/b



:_

:agp

set fp=* Attach policy.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess ^
  --group-name admins

exit/b



:_

:autg

set fp=* Add user to group.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam add-user-to-group --group-name admins --user-name mike

exit/b



:_

:mwb

set fp=* Make web bucket.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 mb s3://mysite548123.com

exit/b



:_

:rwb

set fp=* Remove web bucket.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 rb --force s3://mysite548123.com

exit/b



:_

:asp

set fp=* Adjust site permissions.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3api put-bucket-acl --bucket mysite548123.com --acl public-read

exit/b



:_

:sync

set fp=* Sync bucket.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 sync . s3://mysite548123.com --acl public-read

exit/b



:_

:error

set fp=* Define error website.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 website s3://mysite548123.com/ --index-document index.html --error-document error.html

exit/b



:_

:confirm

set fp=* Confirm website.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3api get-bucket-website --bucket mysite548123.com

exit/b



:_+ Full web parts process according to AWS CLI instructor.



::_

:csg

set fp=* Create security group.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 create-security-group --group-name EC2SecurityGroup ^
  --description "Security Group for EC2 instances to allow ports 22, 88 and 443"

exit/b



::_

:auth

set fp=* Authorize secrurity group ingress.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp ^
  --port 22 --cidr 172.54.125.8/32

exit/b



::_

:auth2

set fp=* Authorize secrurity group ingress.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp ^
  --port 80 --cidr 172.54.125.8/32

exit/b



::_

:auth3

set fp=* Authorize secrurity group ingress - 3rd port.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp ^
  --port 443 --cidr 172.54.125.8/32

exit/b



::_

:dsc

set fp=* Describe security group

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 describe-security-groups --group-names EC2SecurityGroup

exit/b



::_

:deim

set fp=* Describe images.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --output table ec2 describe-images --filters "Name=description,Values=*Amazon Linux 2*" ^
  "Name=owner-alias,Values=amazon"

exit/b



::_

:deim2

set fp=* Describe images with PostgreSQL.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --output table ec2 describe-images --filters "Name=description,Values=*Postgre*" ^
  "Name=owner-alias,Values=amazon"

exit/b



::_

:desu

set fp=* Describe subnets.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 describe-subnets

exit/b



::_

:ruin

set fp=* Run instance.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 run-instances --image-id ami-00b94673edfccb7ca --count 1 ^
  --instance-type t2.micro --key-name TerraformTest2 ^
  --security-group-ids sg-0e67f09ea592e68ff ^
  --subnet-id subnet-8e0b7181 ^
  --user-data file://my_script.sh 
  --tag-specifications ^
  'ResourceType=instance,Tags=[{Key=webserver,Value=production}]'

rem qq-1
exit/b
aws ec2 run-instances --image-id ami-00b94673edfccb7ca --count 1 ^
  --instance-type t2.micro --key-name newcluster ^
  --security-group-ids sg-06366129d8a9b8a59*** ^
  --subnet-id subnet-52d6117c ^
  --user-data file://my_script.sh ^
  --tag-specifications ^
  'ResourceType=instance,Tags=[{Key=webserver,Value=production}]'

exit/b



::_

:create_db

set fp=* Create database

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws rds create-db-instance --db-instance-identifier sg-cli-test ^
  --allocated-storage 20 ^
  --db-instance-class db.m1.small ^
  --engine mysql ^
  --master-username myawsuser ^
  --master-user-password mypassword
rem qq-1

exit/b



:_ (!rfsp) (mov-6)