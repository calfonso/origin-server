To get the admin console working you need to do the following
1. SSH into your DevEnv and forward the Mongo Port, this tricks the
broker code into thinking Mongo is running locally

        ssh -L 27017:localhost:27017 verifier

  This prevents you from having to mess with the broker configuration

2. Setting up broker for `model_refactor`
  1. Using fork_ami
    * Launch devenv with `--image_name fork_ami_refctr1_395`. Check EC2
for the most recent version.

  1. Manually
    * Launch devenv and sync `model_refactor` branches from `li` and
`origin-server` repos
    * On the broker, you need to add an openshift user

      ```
      mongo openshift_broker_dev --eval "db.addUser('openshift','mooo');" 
      ```

3. You will also need to add districts/nodes. Follow the directions
[here].

# Questions
* Is it possible for a node to belong to more than one district?
* Is there a limit to the number of apps per node?
* Figure out what OpenShift::ApplicationContainerProxy is all about
  * Can we use it instead of `Node`

[here]: https://engineering.redhat.com/trac/Libra/wiki/Districts
