import 'dart:isolate';

import 'package:analyzer/file_system/physical_file_system.dart';
import 'package:analyzer_plugin/starter.dart';

import 'package:xam_analyzer/src/analyzer_plugin/analyzer_plugin.dart';

void start(Iterable<String> _, SendPort sendPort) {
  ServerPluginStarter(
    AnalyzerPlugin(resourceProvider: PhysicalResourceProvider.INSTANCE),
  ).start(sendPort);
}
