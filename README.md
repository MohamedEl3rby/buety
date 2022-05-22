# bueaty

A new Flutter application.
## Command For Release
#   keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
- OutPut
-------------
Password=>>>> maxman
-------------
What is your first and last name?
  [Unknown]:  max
What is the name of your organizational unit?
  [Unknown]:  max
What is the name of your organization?
  [Unknown]:  max
What is the name of your City or Locality?
  [Unknown]:  max
What is the name of your State or Province?
  [Unknown]:  max
What is the two-letter country code for this unit?
  [Unknown]:  max
Is CN=max, OU=max, O=max, L=max, ST=max, C=max correct?
  [no]:  y

Generating 2,048 bit RSA key pair and self-signed certificate (SHA256withRSA) with a validity of 10,000 days
        for: CN=max, OU=max, O=max, L=max, ST=max, C=max
Enter key password for <upload>
        (RETURN if same as keystore password):
Re-enter new password:
[Storing upload-keystore.jks]

Warning:
The JKS keystore uses a proprietary format. It is recommended to migrate to PKCS12 which is an industry standard format using "keytool -importkeystore -
srckeystore upload-keystore.jks -destkeystore upload-keystore.jks -deststoretype pkcs12".

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
