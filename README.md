# ![logo][]

![flutter-giff][]

## Performance

![performance][]

## Flutter commnads

```
flutter channel beta
```

```
flutter upgrade
```

```
flutter config --enable-web
```

```
flutter create web
```

```
flutter pub get
```

```
pub cache repair
```

```
flutter run -d chrome
```

Failed to establish connection with the application instance in Chrome.
This can happen if the websocket connection used by the web tooling is unable to correctly establish a connection, for example due to a firewall.

```
flutter run -d chrome --release
```

A unit test tests a single function, method, or class.
A widget test (in other UI frameworks referred to as component test) tests a single widget.
An integration test tests a complete app or a large part of an app.

```
flutter test
```

```
flutter clean
```

```
flutter build web --release
```

## Flutter errors

Error: Not found: 'dart:html' (channet beta)

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

```
onTap: () => html.window.open('url', 'name')
```

Temporary solution: remove flutter test from github actions main.yml

## GitHub Actions

Create a firebase TOKEN an store in secrets with the name FIREBASE_TOKEN to call it later from Actions

```
firebase login:ci
```

## FIREBASE

```
firebase init
```

```
firebase deploy
```

![firebase][]

## e2517

To sign with GPG to verify commits

```
git commit -S -m "your message"
```

[logo]: https://github.com/E2517/images/blob/main/images/flutter-web/flutterwebsite.png
[firebase]: https://github.com/E2517/images/blob/main/images/flutter-web/firebase.png
[flutter-giff]: https://github.com/E2517/images/blob/main/images/flutter-web/flutterweb.gif
[performance]: https://github.com/E2517/images/blob/main/images/flutter-web/terminal.png
