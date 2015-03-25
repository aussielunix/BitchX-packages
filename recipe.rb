class BitchX < FPM::Cookery::Recipe

  homepage      'http://www.bitchx.com/'

  name          'BitchX'
  arch          'amd64'
  version       '1.3.0'
  revision      '1'
  vendor        'aussielunix'

  description   "BitchX is a free software text-based IRC (Internet Relay Chat) client for UNIX-like systems, originally based on ircII and heavily influenced by EPIC."
  section       ''

  source        'https://github.com/BitchX/BitchX1.3', :with => :git, :sha => '6c7e32a97d3ac411f43741f08fca350b529ee7e4'

  build_depends [ 'libssl-dev', 'libncurses5-dev' ]

  def build
    configure(
      {
        :with_ssl     => true,
        :with_plugins => true,
        :enable_ipv6  => true
      }
    )

    make
  end

  def install
    make :install
  end
end

