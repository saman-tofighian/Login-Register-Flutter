import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 540.0, // تنظیم عرض فرم
          height: 551.0, // تنظیم ارتفاع فرم
          padding: const EdgeInsets.all(50.0),
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey), // اضافه کردن حاشیه با رنگ خاکستری
            borderRadius:
                BorderRadius.circular(8.0), // تنظیم شعاع گردی برای حاشیه
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    bottom: 30.0), // اضافه کردن فاصله به پایین
                child: const Align(
                  alignment: Alignment.centerRight, // قرار دادن متن به سمت راست
                  child: Text(
                    'ثبت نام',
                    style: TextStyle(
                      fontSize: 24.0, // تنظیم سایز متن
                      fontWeight: FontWeight.bold, // تنظیم وزن متن
                    ),
                  ),
                ),
              ),
              TextFormField(
                autofocus: true,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  labelText: 'نام و نام خانوادگی',
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'ایمیل',
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'رمز عبور',
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20.0),
              CheckboxListTile(
                title: const Text(
                  'تمام قوانین و شرایط را می‌پذیرم',
                  textAlign: TextAlign.right,
                ),
                value: acceptTerms,
                onChanged: (bool? value) {
                  setState(() {
                    acceptTerms = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding: EdgeInsets.zero,
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: 352.0,
                height: 56,
                child: ElevatedButton(
                  onPressed: acceptTerms
                      ? () {
                          // Add registration logic here
                        }
                      : null, // غیرفعال کردن دکمه در صورت عدم تایید قوانین و شرایط
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // تغییر رنگ پس‌زمینه به سیاه
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    fixedSize: Size(352.0, 50.0),
                    shape: RoundedRectangleBorder(
                      // تنظیم شعاع گردی برای لبه های دکمه
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  child: const Text(
                    'ثبت نام',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: const Text(
                  'آیا قبلاً ثبت نام کرده‌اید؟ ورود',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 540.0, // تنظیم عرض فرم
          height: 551.0, // تنظیم ارتفاع فرم
          padding: const EdgeInsets.all(50.0),
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey), // اضافه کردن حاشیه با رنگ خاکستری
            borderRadius:
                BorderRadius.circular(8.0), // تنظیم شعاع گردی برای حاشیه
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    bottom: 30.0), // اضافه کردن فاصله به پایین
                child: const Align(
                  alignment: Alignment.centerRight, // قرار دادن متن به سمت راست
                  child: Text(
                    'ورود',
                    style: TextStyle(
                      fontSize: 24.0, // تنظیم سایز متن
                      fontWeight: FontWeight.bold, // تنظیم وزن متن
                    ),
                  ),
                ),
              ),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                  labelText: 'ایمیل',
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'رمز عبور',
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: 352.0,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // Add login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // تغییر رنگ پس‌زمینه به سیاه
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    fixedSize: const Size(352.0, 50.0),
                    shape: RoundedRectangleBorder(
                      // تنظیم شعاع گردی برای لبه های دکمه
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  child: const Text(
                    'ورود',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
