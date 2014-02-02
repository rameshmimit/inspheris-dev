class bootstrap {
  class { "solr": }

  class { '::mysql::server':
    root_password    => 'redhat',
    override_options => { 'mysqld' => { 'max_connections' => '1024' } },

    databases => {
      'trunk_mainclub' => {
        ensure  => 'present',
        charset => 'utf8',
      },
      'trunk_subclub' => {
        ensure  => 'present',
        charset => 'utf8',
      },
    },
    grants => {
      'inspheris@localhost/trunk_mainclub.*' => {
         ensure     => 'present',
         options    => ['GRANT'],
         privileges => ['SELECT', 'INSERT', 'UPDATE', 'DELETE'],
         table      => 'trunk_mainclub.*',
         user       => 'inspheris@localhost',
      },
    }
  }
  class { 'apache': }
}
include bootstrap
