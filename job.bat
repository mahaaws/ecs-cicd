cd aspnetapp
docker build -t 869630519277.dkr.ecr.us-east-1.amazonaws.com/spinnaker-repo:%BUILD_NUMBER% -t 869630519277.dkr.ecr.us-east-1.amazonaws.com/spinnaker-repo:latest .

aws ecr get-login --no-include-email --region us-east-1 | cmd

docker push 869630519277.dkr.ecr.us-east-1.amazonaws.com/spinnaker-repo:latest
docker push 869630519277.dkr.ecr.us-east-1.amazonaws.com/spinnaker-repo:%BUILD_NUMBER%
