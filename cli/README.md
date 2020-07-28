# Python

## Process

Run:
* Parse hcl
* Validate TF and Provider Versions
* Get download URLs
* Create /tmp and download files
* Zip the folder
* Delete /tmp folder
* Done

## 
https://click.palletsprojects.com/en/7.x/quickstart/

https://github.com/virtuald/pyhcl

```sh
# pip3 install virtualenv --user   
brew upgrade python3
python3 -m venv ./venv
. venv/bin/activate

# Test
python tfe.py

# Package
pyinstaller --onefile tfe.py

# Run
./dist/tfe

```


## Remote VSCode 

10.0.4.197

ssh-add "/Users/tstraub/Projects/straubt1.github.com/tfe-standalone/installs/dev/keys/tfe_rsa.pem" 

&& sshuttle -r ec2-user@ec2-13-56-18-130.us-west-1.compute.amazonaws.com 10.0.0.0/16
