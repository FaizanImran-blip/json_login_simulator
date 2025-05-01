import 'dart:io';
import 'dart:convert';
import 'dart:async';

class API {
  int a;
  String r;
  String p;
  List<String> b;

  API(this.a, this.r, this.p) : b = ["faizan1122"];

  void enter() {
    stdout.write("Enter your name: ");
    r = stdin.readLineSync()!;
    stdout.write("Enter your age: ");
    a = int.parse(stdin.readLineSync()!);
    dis(a, r);
    while (true) {
      stdout.write("Enter your password: ");
      p = stdin.readLineSync()!;
      try {
        if (!b.contains(p)) {
          throw ("You are entering an invalid password.");
        } else {
          print("You are logged in successfully.");
          server(a, r, p);
          sent(a, r, p);
          break;
        }
      } catch (e) {
        print("Dear: $e");
      }
    }
  }

  void server(int a, String r, String p) {
    String f = jsonEncode({"age": a, "name": r, "password": p});
    json(f);
  }

  void json(String d) {
    Map<String, dynamic> u = jsonDecode(d);
    print("Do you want to see your details? Press Enter:");
    stdin.readLineSync();
    u.forEach((key, value) {
      print("$key : $value");
    });
  }

  void sent(int a, String b, String n) {
    Map<String, dynamic> u = {"name": b, "age": a, "password": n};
    String l = jsonEncode(u);
    print(l);
    Timer t = Timer.periodic(Duration(seconds: 1), (Timer t) {
      print("DATA IS SENDING ---TO SERVER.");
      if (t.tick == 1) {
        t.cancel();
      }
    });
  }

  void dis(int a, String r) {
    String k = b[0];
    File f = File("path.rd");
    f.writeAsStringSync(
        "This is your password:: $k\nThis is your name:: $r\nThis is your age:: $a",
        mode: FileMode.write);
  }

  void read() {
    File r = File("path.rd");
    String l = r.readAsStringSync();
    print("$l");
  }
}

class E extends API {
  E(int a, String r, String p) : super(a, r, p);

  void pass() {
    print("Enter your user name:: ");
    String name = stdin.readLineSync()!;
    print("Enter your age:: ");
    int ag = int.parse(stdin.readLineSync()!);
    if (name == r && ag == a) {
      dis(a, r);
    } else {
      print("Person identity ERROR--");
    }
  }

  bool ex() {
    return true;
  }
}

void main() {
  print("Welcome to server site::");
  API e = API(0, "", "");
  E s = E(0, "", "");
  bool t = false;
  while (!t) {
    int ch;
    print("Enter your choice:: ");
    print("1) Login\n2) Forget password\n3) Call API Server\n4) Send to API Server\n5) Exit");
    ch = int.parse(stdin.readLineSync()!);
    switch (ch) {
      case 1:
        e.enter();
        break;
      case 2:
        s.pass();
        break;
      case 3:
        e.server(e.a, e.r, e.p);
        break;
      case 4:
        e.sent(e.a, e.r, e.p);
        break;
      case 5:
        print("EXITING...");
        t = s.ex();
        break;
      default:
        print("Invalid choice, try again.");
    }
  }
}
