# @summary Configure all the VOs used in internal StoRM deployment tests.
#
# Configure all the test VOs used into our testbeds: dteam, test.vo and test.vo.2
#
# @example
#   include testvos
#
class testvos {

  class{ 'voms::dteam': }

  voms::client { 'test.vo':
    servers => [
      {
        server => 'vgrid02.cnaf.infn.it',
        port   => '15000',
        dn     => '/DC=org/DC=terena/DC=tcs/C=IT/L=Frascati/O=Istituto Nazionale di Fisica Nucleare/OU=CNAF/CN=vgrid02.cnaf.infn.it',
        ca_dn  => '/C=NL/O=GEANT Vereniging/CN=GEANT eScience SSL CA 4',
      },
    ],
  }

  voms::client { 'test.vo.2':
    servers => [
      {
        server => 'vgrid02.cnaf.infn.it',
        port   => '15001',
        dn     => '/DC=org/DC=terena/DC=tcs/C=IT/L=Frascati/O=Istituto Nazionale di Fisica Nucleare/OU=CNAF/CN=vgrid02.cnaf.infn.it',
        ca_dn  => '/C=NL/O=GEANT Vereniging/CN=GEANT eScience SSL CA 4',
      },
    ],
  }
}
