<!--- DO NOT EDIT THIS FILE - IT'S AUTOMATICALLY GENERATED VIA DEVTOOLS --->

## 0.3.0 2022-07-12


### Added

- Add CSV as default acronym (via #43) (@waiting-for-dev)

### Changed

- Extra dashes are now omitted when converting to camelcase (via #40) (@postmodern)

[Compare v0.2.1...v0.3.0](https://github.com/dry-rb/dry-inflector/compare/v0.2.1...v0.3.0)

## 0.2.1 2021-06-30


### Added

- Add default acronyms: API and CSRF (#35) (@jodosha)

### Fixed

- Fix singularizing -us suffix (issue #33 via #38) (@cllns)


[Compare v0.2.0...v0.2.1](https://github.com/dry-rb/dry-inflector/compare/v0.2.0...v0.2.1)

## 0.2.0 2019-10-13


### Added

- [Abinoam P. Marques Jr. & Andrii Savchenko] Introduced `Dry::Inflector#camelize_upper` and `Dry::Inflector#camelize_lower`. `Dry::Inflector#camelize` is now an alias for `Dry::Inflector#camelize_upper`. ```ruby inflector.camelize_upper("data_mapper") # => "DataMapper"' inflector.camelize_lower("data_mapper") # => "dataMapper"' ```

### Fixed

- [ecnal] Fixed singularization rules for words like "alias" or "status"


[Compare v0.1.2...v0.2.0](https://github.com/dry-rb/dry-inflector/compare/v0.1.2...v0.2.0)

## 0.1.2 2018-04-25


### Added

- [Gustavo Caso & Nikita Shilnikov] Added support for acronyms


[Compare v0.1.1...v0.1.2](https://github.com/dry-rb/dry-inflector/compare/v0.1.1...v0.1.2)

## 0.1.1 2017-11-18


### Fixed

- [Luca Guidi & Abinoam P. Marques Jr.] Ensure `Dry::Inflector#ordinalize` to work for all the numbers from 0 to 100


[Compare v0.1.0...v0.1.1](https://github.com/dry-rb/dry-inflector/compare/v0.1.0...v0.1.1)

## 0.1.0 2017-11-17


### Added

- [Luca Guidi] Introduced `Dry::Inflector#pluralize`
- [Luca Guidi] Introduced `Dry::Inflector#singularize`
- [Luca Guidi] Introduced `Dry::Inflector#camelize`
- [Luca Guidi] Introduced `Dry::Inflector#classify`
- [Luca Guidi] Introduced `Dry::Inflector#tableize`
- [Luca Guidi] Introduced `Dry::Inflector#dasherize`
- [Luca Guidi] Introduced `Dry::Inflector#underscore`
- [Luca Guidi] Introduced `Dry::Inflector#demodulize`
- [Luca Guidi] Introduced `Dry::Inflector#humanize`
- [Luca Guidi] Introduced `Dry::Inflector#ordinalize`
- [Abinoam P. Marques Jr.] Introduced `Dry::Inflector#foreign_key`
- [Abinoam P. Marques Jr.] Introduced `Dry::Inflector#constantize`