# IAM Complex Permissions

The default IAM roles sometimes can be inadequate for fine grained controls.  More fine-grained policies can be applied using policy files

## AWS

AWS policies can be applied as JSON files.

[Some samples](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_examples.html)

Here is a sample one that allows access to EC2 resources from a certain region

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "ec2:*",
            "Resource": "*",
            "Effect": "Allow",
            "Condition": {
                "StringEquals": {
                    "ec2:Region": "us-east-2"
                }
            }
        }
    ]
}
```

## Google Cloud

Custom roles can be defined.  [Examples](https://cloud.google.com/iam/docs/creating-custom-roles)

Sample YAML file looks like this

```yml
title: "My Company Admin"
description: "My custom role description."
stage: "ALPHA"
includedPermissions:
    - iam.roles.get
    - iam.roles.list
```

And can be applied like this

```bash
gcloud iam roles create ROLE_ID--organization=ORGANIZATION_ID \
    --file=YAML_FILE_PATH
```

## Generating Policies with ChatGPT :-) 

The policies can be complex, but chatgpt can help you!

Here is the prompt for chatgpt (v4)

```text
create an iam policy for aws like this.
permissions to upload objects into a bucket.  But no permission to read, list or delete objects from the bucket
```

And Created it like this

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "s3:PutObject",
            "Resource": "arn:aws:s3:::YOUR_BUCKET_NAME/*"
        },
        {
            "Effect": "Deny",
            "Action": [
                "s3:GetObject",
                "s3:ListBucket",
                "s3:DeleteObject"
            ],
            "Resource": [
                "arn:aws:s3:::YOUR_BUCKET_NAME",
                "arn:aws:s3:::YOUR_BUCKET_NAME/*"
            ]
        }
    ]
}
```

Pretty cool, eh!?