import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  filter: _LogFilter(),
  printer: _LogPrinter(
    className: 'LOGGER',
  ),
  output: _LogOutput(
    logOutputs: [
      ConsoleOutput(),
    ],
  ),
);

class _LogOutput extends LogOutput {
  _LogOutput({required this.logOutputs});

  final List<LogOutput> logOutputs;

  @override
  void output(OutputEvent event) {
    for (final logOutput in logOutputs) {
      logOutput.output(event);
    }
  }
}

class _LogPrinter extends PrettyPrinter {
  _LogPrinter({required this.className});

  final String className;

  static Map<Level, String> customEmojis = {
    ...PrettyPrinter.defaultLevelEmojis,
    Level.trace: '🧱',
  };

  @override
  List<String> log(LogEvent event) {
    final emoji = customEmojis[event.level];
    final date = DateFormat('HH:mm:ss.SSS').format(DateTime.now());
    final output = '$emoji $className $date - ${event.message}';
    final result = <String>[];
    output.split('\n').forEach(result.add);
    return result;
  }
}

class _LogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => true;
}
