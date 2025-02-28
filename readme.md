Terraform learnings with LocalStack - an environment that runs a local version of AWS on your local machine.
The setup is found in the `compose.yml file`

"tflocal" is a a wrapper script that helps you run Terraform against localstack. 
This is because "terraform" commands look for a real AWS configuration setting installed in the system.
So instead of running "terraform <whatever>" commands in local environment, run "tflocal <whatever>" commands.

Run the following to install:
```
pip install terraform-local
```