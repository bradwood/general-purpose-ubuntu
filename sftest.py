from simple_salesforce import Salesforce

with open('salesforce_credentials.txt') as f:
    username, password, token = [x.strip("\n") for x in f.readlines()]
sf = Salesforce(username=username, password=password, security_token=token)
