echo [all] >> inventory.txt
aws ec2 describe-instances --query 'Reservations[*].Instances[*].PublicIpAddress' --filter 'Name=tag:Name,Values=TestVm' --output text >> inventory.txt
