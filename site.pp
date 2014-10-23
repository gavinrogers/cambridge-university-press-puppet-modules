# Obviously need to use $trusted[certname] instead:
$trustedcertname = $fqdn

if $trustedcertname =~ /^([a-z]*)[0-9]{2}-([a-z]*)\.([a-z]*)\.([a-z]*)\.([a-z]*)\.([a-z]{3})$/ {
  $our_role = $1
  $our_component = $2
  $our_environment = $3
  $our_project = $4
  $our_domain = $5
  $our_tld = $6
}


# This is where the magic of 
hiera_include('classes')
hiera_declare_types([])
