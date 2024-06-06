import 'dart:isolate';

class DoSomeCal {
  Future<String> someCal(int val) async {
    int sum = 0;
    for (int i = 0; i < val; i++) {
      await Future.delayed(const Duration(seconds: 2));
      sum += i;
    }
    print("this is my res from someCal function---$sum");
    return sum.toString();
  }

  Future<void> someCalBySpawn(SendPort sendPort) async {
    int sum = 0;
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      sum += i;
    }
    print("this is my res from someCal function of Spawn---$sum");
    sendPort.send(sum);
  }
}
