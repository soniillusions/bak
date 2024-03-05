require 'net/http'

ruby_install_dir = 'c:\Ruby32-x64'
cacert_file = "#{ruby_install_dir}\\cacert.pem"

Net::HTTP.start("curl.haxx.se") do |http|
  resp = http.get("/ca/cacert.pem")
  if resp.code == "301"
    open(cacert_file, "wb") { |file| file.write(resp.body) }
    puts "\n\nA bundle of certificate authorities has been installed to"
    puts "#{cacert_file}\n"
    puts "* Please set SSL_CERT_FILE in your current command prompt session with:"
    puts "     set SSL_CERT_FILE=#{cacert_file}"
    puts "* To make this a permanent setting, add it to Environment Variables"
    puts "  under Control Panel -> Advanced -> Environment Variables"
  else
    abort "\n\n>>>> A cacert.pem bundle could not be downloaded."
  end
end

https://github.com/rbenv/rbenv-installer/blob/main/bin/rbenv-doctor

curl -fsSL https://github.com/rbenv/rbenv-installer/blob/main/bin/rbenv-doctor | bash