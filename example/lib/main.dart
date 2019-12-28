import 'dart:io';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:default_path_provider/default_path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String _imageURL = "https://images.unsplash.com/photo-1497250681960-ef046c08a56e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80";

  int _progress = 0;
  bool _isDownloading = false;


  _checkPermission() async{
    PermissionStatus permission = await PermissionHandler().checkPermissionStatus(PermissionGroup.storage);
    if(permission != PermissionStatus.granted){
      Map<PermissionGroup, PermissionStatus> permissions = await PermissionHandler().requestPermissions([PermissionGroup.storage]);
      if(permissions[PermissionGroup.storage] != PermissionStatus.granted){
        exit(1);
      }
    }
  }

  _startDownload(dir) async{
    Dio dio = Dio();
    try {
      await dio.download(_imageURL, "$dir/myimage.jpeg",
          onReceiveProgress: (rec, total) {
            setState(() {
              _progress = ((rec / total) * 100).toInt();
              if (_progress == 100) {
                if(this.mounted){
                  _isDownloading = false;
                }
              }
            });
          });
    } catch (e) {
      print(e);
      if(this.mounted){
        setState(() {
          _isDownloading = false;
        });
      }
    }
  }

  _saveToDownloads() async {
    if(this.mounted){
      setState(() {
        _isDownloading = true;
      });
    }
    var dir = await DefaultPathProvider.getDownloadDirectoryPath;
    _startDownload(dir);
  }

  _saveToPictures() async {
    if(this.mounted){
      setState(() {
        _isDownloading = true;
      });
    }
    var dir = await DefaultPathProvider.getPicturesDirectoryPath;
    _startDownload(dir);
  }

  _saveToDCIM() async {
    if(this.mounted){
      setState(() {
        _isDownloading = true;
      });
    }
    var dir = await DefaultPathProvider.getDCIMDirectoryPath;
    _startDownload(dir);
  }

  _saveToNotifications() async {
    if(this.mounted){
      setState(() {
        _isDownloading = true;
      });
    }
    var dir = await DefaultPathProvider.getNotificationsDirectoryPath;
    _startDownload(dir);
  }

  _saveToMovies() async {
    if(this.mounted){
      setState(() {
        _isDownloading = true;
      });
    }
    var dir = await DefaultPathProvider.getMoviesDirectoryPath;
    _startDownload(dir);
  }

  _saveToAlarms() async {
    if(this.mounted){
      setState(() {
        _isDownloading = true;
      });
    }
    var dir = await DefaultPathProvider.getAlarmsDirectoryPath;
    _startDownload(dir);
  }

  _saveToMusic() async {
    if(this.mounted){
      setState(() {
        _isDownloading = true;
      });
    }
    var dir = await DefaultPathProvider.getMusicDirectoryPath;
    _startDownload(dir);
  }

  _saveToDocuments() async {
    if(this.mounted){
      setState(() {
        _isDownloading = true;
      });
    }
    var dir = await DefaultPathProvider.getDocumentsDirectoryPath;
    _startDownload(dir);
  }

  _saveToRingtone() async {
    if(this.mounted){
      setState(() {
        _isDownloading = true;
      });
    }
    var dir = await DefaultPathProvider.getRingtonesDirectoryPath;
    _startDownload(dir);
  }

  _saveToPodcast() async {
    if(this.mounted){
      setState(() {
        _isDownloading = true;
      });
    }
    var dir = await DefaultPathProvider.getPodcastDirectoryPath;
    _startDownload(dir);
  }

  @override
  void initState() {
    super.initState();
    _checkPermission();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: _isDownloading ? Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                SizedBox(height: 10.0,),
                Text("Downloading..."),
              ],
            ),
          ),
        ) : Container(
          padding: EdgeInsets.all(10.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ClipRRect(
                      child: Image.network(
                        _imageURL,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    RaisedButton.icon(
                      onPressed: () => _saveToDownloads(),
                      label: Text("Save in Downloads"),
                      icon: Icon(Icons.file_download),
                    ),
                    RaisedButton.icon(
                      icon: Icon(Icons.camera_alt),
                      onPressed: () => _saveToDCIM(),
                      label: Text("Save in DCIM"),
                    ),
                    RaisedButton.icon(
                      icon: Icon(Icons.notifications),
                      onPressed: () => _saveToNotifications(),
                      label: Text("Save in Notification"),
                    ),
                    RaisedButton.icon(
                      icon: Icon(Icons.movie),
                      onPressed: () => _saveToMovies(),
                      label: Text("Save in Movies"),
                    ),
                    RaisedButton.icon(
                      icon: Icon(Icons.image),
                      onPressed: () => _saveToPictures(),
                      label: Text("Save in Pictures"),
                    ),
                    RaisedButton.icon(
                      icon: Icon(Icons.alarm),
                      onPressed: () => _saveToAlarms(),
                      label: Text("Save in Alarm"),
                    ),
                    RaisedButton.icon(
                      icon: Icon(Icons.library_music),
                      onPressed: () => _saveToMusic(),
                      label: Text("Save in Music"),
                    ),
                    RaisedButton.icon(
                      icon: Icon(Icons.assessment),
                      onPressed: () => _saveToDocuments(),
                      label: Text("Save in Document"),
                    ),
                    RaisedButton.icon(
                      icon: Icon(Icons.music_note),
                      onPressed: () => _saveToRingtone(),
                      label: Text("Save in Ringtone"),
                    ),
                    RaisedButton(
                      onPressed: () => _saveToPodcast(),
                      child: Text("Save in Podcast"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
