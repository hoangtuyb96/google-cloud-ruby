# Release History

### 1.0.0 / 2020-05-06

This is a major update with significant new features, improved documentation, and a fair number of breaking changes.

Among the highlights:

* Separate client libraries are now provided for specific service versions.
* A new configuration mechanism makes it easier to control parameters such as endpoint address, network timeouts, and retry.
* A consistent method interface using keyword arguments for all fields, and supporting request proto objects.
* More consistent spelling of module names.

See the MIGRATING file in the documentation for more detailed information, and instructions for migrating from earlier versions.

### 0.7.0 / 2020-04-10

#### Features

* Move data type classes from Texttospeech to TextToSpeech.
  * Note: Texttospeech was left as an alias, so older code should still work.

### 0.6.1 / 2020-04-01

#### Documentation

* Remove broken troubleshooting link from auth guide.

### 0.6.0 / 2020-03-11

#### Features

* Support separate project setting for quota/billing

### 0.5.2 / 2020-01-23

#### Documentation

* Update copyright year

### 0.5.1 / 2019-11-06

#### Bug Fixes

* Update minimum runtime dependencies

### 0.5.0 / 2019-10-29

This release requires Ruby 2.4 or later.

#### Documentation

* Clarify which Google Cloud Platform products support auto-discovered credentials

### 0.4.1 / 2019-08-23

#### Documentation

* Update documentation

### 0.4.0 / 2019-07-08

* Update code example in READMEs.
* Support overriding service host and port.

### 0.3.1 / 2019-06-11

* Add VERSION constant

### 0.3.0 / 2019-04-29

* Add V1beta1 client.
* Add AUTHENTICATION.md guide.

### 0.2.0 / 2019-02-01

* Add AudioConfig#effects_profile_id.
* Updated code examples.

### 0.1.3 / 2018-09-20

* Update documentation.
  * Change documentation URL to googleapis GitHub org.

### 0.1.2 / 2018-09-10

* Update documentation.

### 0.1.1 / 2018-08-21

* Update documentation.

### 0.1.0 / 2018-07-09

* Initial release