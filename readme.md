"tflocal" is a a wrapper script that helps you run Terraform against localstack. 
This is because "terraform" commands look for a real AWS configuration setting installed in the system.
So instead of running "terraform <whatever>" commands in local environment, run "tflocal <whatever>" commands.

Run the following to install:
```
pip install terraform-local
```