S3DirectUpload.config do |c|
  c.access_key_id = "AKIAI2J75VJLDQRV5EHQ"       # your access key id
  c.secret_access_key = "gKImPQoHSx39fvaWGe2I9QB912/Oj0+wHtKH7dHv"   # your secret access key
  c.bucket = "vinylfabrikken-dev"              # your bucket name
  c.region = "s3-eu-west-1"             # region prefix of your bucket url (optional), eg. "s3-eu-west-1"
  c.url = nil                # S3 API endpoint (optional), eg. "https://#{c.bucket}.s3.amazonaws.com/"
end