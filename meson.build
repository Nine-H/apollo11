project('apollo11', ['vala', 'c'], version: '0.1.0')

gnome = import('gnome')
i18n = import('i18n')

conf = configuration_data()
conf.set_quoted('GETTEXT_PACKAGE', meson.project_name())
configure_file(output: 'config.h', configuration: conf)
config_h_dir = include_directories('.')

c_args = [
  '-include', 'config.h'
]

executable(
    'apollo11',
    'src/hello_houston.vala',
    'src/header.vala',
    'src/window.vala',
    'src/apollo11.vala',
    c_args: c_args,
    dependencies: [
        dependency('gtk+-3.0'),
        dependency('granite')
    ]
)
