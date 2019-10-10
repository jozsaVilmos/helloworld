aws s3 cp ./Dockerrun.aws.json \
  s3://elasticbeanstalk-eu-west-2-124429370407/good-morning-america/Dockerrun.aws.json

aws elasticbeanstalk create-application-version \
  --application-name "good-morning-america" \
  --version-label good-morning-america \
  --source-bundle S3Bucket="elasticbeanstalk-eu-west-2-124429370407",S3Key="good-morning-america/Dockerrun.aws.json" \
  --auto-create-application

  aws elasticbeanstalk update-environment \
  --application-name "good-morning-america" \
  --environment-name "good-morning-america-dev" \
  --version-label good-morning-america \