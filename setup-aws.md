# Making a tensorflow machine

- Create an AWS account if necessary.  (Sign
  up [here](https://aws.amazon.com/).
  [Detailed instructions](https://github.com/coventry/tfintro/blob/master/notes.org#create-aws-account))

- Create a key pair
  as [described last week](https://github.com/coventry/tfintro/blob/master/notes.org#log-into-aws-and-create-a-key).

- Go
to [this page](https://aws.amazon.com/marketplace/fulfillment?productId=d0199cf7-a04a-4204-be4d-dc3e2af678af&ref_=dtl_psb_continue&region=us-east-1),
and click on "Launch with 1-click."  (This will only cost 65c, as long as you
complete the next step within the hour.  65c/hour after that, so don't dally.)

- Go to your [Management Console](https://console.aws.amazon.com/ec2/), right
click on the row for the instance you just created, then "Instance State" and
"Terminate." [Official instance-termination instructions](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#terminating-instances-console).

# Fixing Instance Limit Problems

When you try to launch, you may get the following message:

> You have requested more instances (1) than your current instance limit of 0
> allows for the specified instance type. Please
> visit [http://aws.amazon.com...](http://aws.amazon.com/contact-us/ec2-request)
> to request an adjustment to this limit.

If that happens, go to
the [limit-increase request page](https://console.aws.amazon.com/support/home?region=us-east-1#/case/create?issueType=service-limit-increase&limitType=service-code-ec2-instances&serviceLimitIncreaseType=ec2-instances&type=service_limit_increase),
and

- choose "US East (Northern Virginia)" for the region,

- set "New Limit Value" to 1,

- put
  the
  [URL for this meetup](https://www.meetup.com/Cambridge-Artificial-Intelligence-Meetup/events/235750473/) in
  the "Use Case Description,"

- click "Submit" at the bottom of the page.
