# -*- encoding: utf-8 -*-
# stub: sinatra-assetpack 0.3.3 ruby lib

Gem::Specification.new do |s|
  s.name = "sinatra-assetpack"
  s.version = "0.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Rico Sta. Cruz", "Jean-Philippe Doyle"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDmjCCAoKgAwIBAgIBATANBgkqhkiG9w0BAQUFADBJMRswGQYDVQQDDBJqZWFu\ncGhpbGlwcGUuZG95bGUxFTATBgoJkiaJk/IsZAEZFgVnbWFpbDETMBEGCgmSJomT\n8ixkARkWA2NvbTAeFw0xNDA0MjkyMDM5MjNaFw0xNTA0MjkyMDM5MjNaMEkxGzAZ\nBgNVBAMMEmplYW5waGlsaXBwZS5kb3lsZTEVMBMGCgmSJomT8ixkARkWBWdtYWls\nMRMwEQYKCZImiZPyLGQBGRYDY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB\nCgKCAQEAoy9v4jCylD10QNplfQn2RjDj7e+GOFn1Kv4pZ8opaVqqQjgZPIifHJ00\nPBngH4L27Qn6Q874Bv8klnoFUPKzX3zPun2ot2VQ0facmR83E1g5H9hmZVqtdg+K\nTnauTvKZ64cXfqEJ4dqHxiuYSDqZfHiaOvdbzoL1MJBU1ars7qnRfsvVLAkDja5x\n4DQ+ZJsxFu0xSKDZKdDg1Js1JHfb1oPRXwbiv+clDxSoIWgu5eRMfDY9/mXIfo89\nmeeO0/4Ud42gsROVQS32OJLmczJjRj9xY2tTKnIU76vEZouqiLKn8Ylwpb/n9d4W\nIq8ruVk2Q0XKrSYA2e+kPCt5M1DArQIDAQABo4GMMIGJMAkGA1UdEwQCMAAwCwYD\nVR0PBAQDAgSwMB0GA1UdDgQWBBQRseuuQiwORxjEL3SmrCKF18k7HzAnBgNVHREE\nIDAegRxqZWFucGhpbGlwcGUuZG95bGVAZ21haWwuY29tMCcGA1UdEgQgMB6BHGpl\nYW5waGlsaXBwZS5kb3lsZUBnbWFpbC5jb20wDQYJKoZIhvcNAQEFBQADggEBAB2x\nwa3rDskwP2dQT8vlVvNCiBc7lOw4TJkpd9l5wwep+6umh1GIFt80BZ5VomGo+1Sx\nyUuD+VYOaaOLGDF5qqirIn5VDvjNpYKw6s8XKvKawWu61znAZkiklNz9YTog6mo1\n0/2ggQHWuMoSM8ZNUWg6UKRvSiT+3S0gGyfrybepm9ZFiQVFrFkgLQ+Lt/0vzBJD\nosc8G2grd5N2ieCykW2dfdKftrAoHy9zstg0CTTkFHaoQesLfEE6HdGImfIe2qpJ\nvo0Ni/EOoxL0d1qrp9TiARbe5JDIK4KWKJcyJrsOCnAUNwfqwf0riBGpsnCRwQi7\nc8m4yoP9xz6wjpS7gxQ=\n-----END CERTIFICATE-----\n"]
  s.date = "2014-04-29"
  s.description = "Package your assets for Sinatra."
  s.email = ["rico@sinefunc.com"]
  s.homepage = "http://github.com/rstacruz/sinatra-assetpack"
  s.licenses = ["MIT"]
  s.post_install_message = "##################################################\n#  NOTE FOR UPGRADING FROM PRE-3.0.0 VERSION     #\n##################################################\n\nPlease note that sinatra-assetpack `img` helper method\nno longer sets the image width and height. This default\nbehavior is not desirable with more recent CSS techniques\nregarding high resolutions images for \"retina\" displays\nand \"responsive\" design CSS using, for example, width:100%.\n\n<img src=\"retina.jpg\" width=\"1200\" height=\"600\">\n\nIs now simply this (unless you explicitly set them) :\n\n<img src=\"retina.jpg\">\n\nSee https://github.com/rstacruz/sinatra-assetpack/pull/121\n"
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.4.5"
  s.summary = "Asset packager for Sinatra."

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jsmin>, [">= 0"])
      s.add_runtime_dependency(%q<rack-test>, [">= 0"])
      s.add_runtime_dependency(%q<sinatra>, [">= 0"])
      s.add_runtime_dependency(%q<tilt>, ["< 2.0", ">= 1.3.0"])
      s.add_development_dependency(%q<coffee-script>, [">= 0"])
      s.add_development_dependency(%q<haml>, [">= 0"])
      s.add_development_dependency(%q<less>, [">= 0"])
      s.add_development_dependency(%q<sass>, [">= 0"])
      s.add_development_dependency(%q<stylus>, [">= 0"])
      s.add_development_dependency(%q<uglifier>, [">= 0"])
      s.add_development_dependency(%q<yui-compressor>, [">= 0"])
    else
      s.add_dependency(%q<jsmin>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<tilt>, ["< 2.0", ">= 1.3.0"])
      s.add_dependency(%q<coffee-script>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<less>, [">= 0"])
      s.add_dependency(%q<sass>, [">= 0"])
      s.add_dependency(%q<stylus>, [">= 0"])
      s.add_dependency(%q<uglifier>, [">= 0"])
      s.add_dependency(%q<yui-compressor>, [">= 0"])
    end
  else
    s.add_dependency(%q<jsmin>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<tilt>, ["< 2.0", ">= 1.3.0"])
    s.add_dependency(%q<coffee-script>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<less>, [">= 0"])
    s.add_dependency(%q<sass>, [">= 0"])
    s.add_dependency(%q<stylus>, [">= 0"])
    s.add_dependency(%q<uglifier>, [">= 0"])
    s.add_dependency(%q<yui-compressor>, [">= 0"])
  end
end
