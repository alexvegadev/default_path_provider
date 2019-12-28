import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:default_path_provider/default_path_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _downloadPath = "Loading...";
  String _dCIMPath = "Loading...";
  String _notificationPath = "Loading...";
  String _moviePath = "Loading...";
  String _alarmsPath = "Loading...";
  String _documentsPath = "Loading...";
  String _musicPath = "Loading...";
  String _picturesPath = "Loading...";
  String _podcastPath = "Loading...";
  String _ringtonePath = "Loading...";

  @override
  void initState() {
    super.initState();
    _getAllPaths();
  }

  _getAllPaths() async {
    try {
      _downloadPath = await DefaultPathProvider.getDownloadDirectoryPath;
      _dCIMPath = await DefaultPathProvider.getDCIMDirectoryPath;
      _notificationPath =
          await DefaultPathProvider.getNotificationsDirectoryPath;
      _moviePath = await DefaultPathProvider.getMoviesDirectoryPath;
      _alarmsPath = await DefaultPathProvider.getAlarmsDirectoryPath;
      _documentsPath = await DefaultPathProvider.getDocumentsDirectoryPath;
      _musicPath = await DefaultPathProvider.getMusicDirectoryPath;
      _picturesPath = await DefaultPathProvider.getPicturesDirectoryPath;
      _podcastPath = await DefaultPathProvider.getPodcastDirectoryPath;
      _ringtonePath = await DefaultPathProvider.getRingtonesDirectoryPath;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Default Path'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(_downloadPath),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(_dCIMPath),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(_notificationPath),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(_moviePath),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(_alarmsPath),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(_documentsPath),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(_musicPath),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(_picturesPath),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(_podcastPath),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(_ringtonePath),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
