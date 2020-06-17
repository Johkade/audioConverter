import boto3
from botocore.client import Config

ACCESS_KEY_ID = 'AKIAZE7D3IPREEP6YD5P'
ACCESS_SECRET_KEY = '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'
BUCKET_NAME = 'ahearo-audio'

path = './converted/'
foldername = 'public/'
filename = 'mp3.mp3'


data = open(path+filename , 'rb') #file read in binary mode ('rb')

s3 = boto3.resource(
    's3',
    aws_access_key_id=ACCESS_KEY_ID,
    aws_secret_access_key=ACCESS_SECRET_KEY,
    config=Config(signature_version='s3v4')
)
s3.Bucket(BUCKET_NAME).put_object(Key=foldername+filename, Body=data)

print ("Done")
