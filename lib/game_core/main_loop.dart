bool _running = true;
 
void startLoop() {
  final double _fps = 50;
  final double _seconds = 1000;
  final double _updateTime = _seconds / _fps;
  double _updates = 0;

Stopwatch _loopWatch = Stopwatch();
  _loopWatch.start();
  Stopwatch _timerWatch = Stopwatch();
  _timerWatch.start();
 
  while(_running) {
    if(_loopWatch.elapsedMilliseconds > _updateTime) {
      _updates++;
      _loopWatch.reset();
    }
 
    if(_timerWatch.elapsedMilliseconds > _seconds) {
      print("${DateTime.now()} FPS: $_updates");
      _updates = 0;
      _timerWatch.reset();
    }
  }
 
}
 
void stopLoop() {
  _running = false;
}
 
