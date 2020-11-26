

if ENV['ENVIRONMENT'] == 'test'
  DBconnect.setup("chitter_test")
else
  DBconnect.setup("chitter")
end