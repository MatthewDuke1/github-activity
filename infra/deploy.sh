#!/usr/bin/env bash
# Manual deploy of the-duke.org from docs/. GitHub Actions does the same on every push to master.
# Usage: bash infra/deploy.sh            (sync docs/ only)
#        bash infra/deploy.sh --stack    (also create/update the CloudFormation stack first)
set -euo pipefail
cd "$(dirname "$0")/.."
STACK=the-duke-site
REGION=us-east-1

if [ "${1:-}" = "--stack" ]; then
  aws cloudformation deploy --stack-name "$STACK" --region "$REGION" --template-file infra/site.yaml \
    --capabilities CAPABILITY_IAM --no-fail-on-empty-changeset
fi

out() { aws cloudformation describe-stacks --stack-name "$STACK" --region "$REGION" --query "Stacks[0].Outputs[?OutputKey=='$1'].OutputValue" --output text; }
BUCKET=$(out BucketName)
DIST=$(out DistributionId)

aws s3 sync docs "s3://$BUCKET" --delete --exclude CNAME --cache-control "public, max-age=300" --region "$REGION"
aws cloudfront create-invalidation --distribution-id "$DIST" --paths "/*" --query "Invalidation.Id" --output text
echo "Live: $(out Url)"
