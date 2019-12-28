package com.anstrontechnologies.default_path_provider;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Environment;

import androidx.annotation.NonNull;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** DefaultPathProviderPlugin */
public class DefaultPathProviderPlugin implements FlutterPlugin, MethodCallHandler {
  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    final MethodChannel channel = new MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "default_path_provider");
    channel.setMethodCallHandler(new DefaultPathProviderPlugin());
  }

  // This static function is optional and equivalent to onAttachedToEngine. It supports the old
  // pre-Flutter-1.12 Android projects. You are encouraged to continue supporting
  // plugin registration via this function while apps migrate to use the new Android APIs
  // post-flutter-1.12 via https://flutter.dev/go/android-project-migration.
  //
  // It is encouraged to share logic between onAttachedToEngine and registerWith to keep
  // them functionally equivalent. Only one of onAttachedToEngine or registerWith will be called
  // depending on the user's project. onAttachedToEngine or registerWith must both be defined
  // in the same class.
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "default_path_provider");
    channel.setMethodCallHandler(new DefaultPathProviderPlugin());
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    switch (call.method) {
      case "getDownloadDirectoryPath":
        try {
          String path = getDownloadDirectoryPath();
          result.success(path);
        } catch (Exception e) {
          result.error("Exception", "Error: " + e.getMessage(), e);
        }
        break;
      case "getAlarmsDirectoryPath":
        try {
          String path = getAlarmsDirectoryPath();
          result.success(path);
        } catch (Exception e) {
          result.error("Exception", "Error: " + e.getMessage(), e);
        }
        break;
      case "getDCIMDirectoryPath":
        try {
          String path = getDCIMDirectoryPath();
          result.success(path);
        } catch (Exception e) {
          result.error("Exception", "Error: " + e.getMessage(), e);
        }
        break;
      case "getDocumentsDirectoryPath":
        try {
          String path = getDocumentsDirectoryPath();
          result.success(path);
        } catch (Exception e) {
          result.error("Exception", "Error: " + e.getMessage(), e);
        }
        break;
      case "getMoviesDirectoryPath":
        try {
          String path = getMoviesDirectoryPath();
          result.success(path);
        } catch (Exception e) {
          result.error("Exception", "Error: " + e.getMessage(), e);
        }
        break;
      case "getMusicDirectoryPath":
        try {
          String path = getMusicDirectoryPath();
          result.success(path);
        } catch (Exception e) {
          result.error("Exception", "Error: " + e.getMessage(), e);
        }
        break;
      case "getNotificationsDirectoryPath":
        try {
          String path = getNotificationsDirectoryPath();
          result.success(path);
        } catch (Exception e) {
          result.error("Exception", "Error: " + e.getMessage(), e);
        }
        break;
      case "getPicturesDirectoryPath":
        try {
          String path = getPicturesDirectoryPath();
          result.success(path);
        } catch (Exception e) {
          result.error("Exception", "Error: " + e.getMessage(), e);
        }
        break;
      case "getPodcastDirectoryPath":
        try {
          String path = getPodcastDirectoryPath();
          result.success(path);
        } catch (Exception e) {
          result.error("Exception", "Error: " + e.getMessage(), e);
        }
        break;
      case "getRingtonesDirectoryPath":
        try {
          String path = getRingtonesDirectoryPath();
          result.success(path);
        } catch (Exception e) {
          result.error("Exception", "Error: " + e.getMessage(), e);
        }
        break;
      default:
        result.notImplemented();
        break;
    }
  }

  @TargetApi(Build.VERSION_CODES.FROYO)
  private String getDownloadDirectoryPath() {
    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).toString();
  }

  @TargetApi(Build.VERSION_CODES.FROYO)
  private String getPicturesDirectoryPath() {
    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).toString();
  }

  @TargetApi(Build.VERSION_CODES.FROYO)
  private String getAlarmsDirectoryPath() {
    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_ALARMS).toString();
  }

  @TargetApi(Build.VERSION_CODES.FROYO)
  private String getDCIMDirectoryPath() {
    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).toString();
  }

  @TargetApi(Build.VERSION_CODES.KITKAT)
  private String getDocumentsDirectoryPath() {
    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS).toString();
  }

  @TargetApi(Build.VERSION_CODES.FROYO)
  private String getMoviesDirectoryPath() {
    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES).toString();
  }

  @TargetApi(Build.VERSION_CODES.FROYO)
  private String getMusicDirectoryPath() {
    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MUSIC).toString();
  }

  @TargetApi(Build.VERSION_CODES.FROYO)
  private String getNotificationsDirectoryPath() {
    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_NOTIFICATIONS).toString();
  }

  @TargetApi(Build.VERSION_CODES.FROYO)
  private String getPodcastDirectoryPath() {
    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PODCASTS).toString();
  }

  @TargetApi(Build.VERSION_CODES.FROYO)
  private String getRingtonesDirectoryPath() {
    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_RINGTONES).toString();
  }


  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
  }
}
