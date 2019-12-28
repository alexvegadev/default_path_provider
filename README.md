# default_path_provider

[default_path_provider](http://www.github.com/abhidiwakar/default_path_provider) is a flutter plugin that can provide you the path of android's default directories like Downloads,  Pictures, DCIM, etc.

```diff
- Note: This plugin can work only in Android as of now!
```


## Usage
- Add [default_path_provider](https://pub.dartlang.org/packages/default_path_provider#-installing-tab-) as a dependency in your pubspec.yaml file.
- Handle Read/Write permission in your flutter app. You can use flutter plugins like [permission_handler](https://pub.dev/packages/permission_handler).

```dart
import 'package:default_path_provider/default_path_provider.dart';

String dirPath = await DefaultPathProvider.getDownloadDirectoryPath;
```

## Available Methods
- getDownloadDirectoryPath
- getPicturesDirectoryPath
- getDCIMDirectoryPath
- getNotificationsDirectoryPath
- getMoviesDirectoryPath
- getAlarmsDirectoryPath
- getMusicDirectoryPath
- getDocumentsDirectoryPath
- getRingtonesDirectoryPath
- getPodcastDirectoryPath

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update the tests as appropriate.

## License
[MIT](https://github.com/abhidiwakar/default_path_provider/blob/master/LICENSE)