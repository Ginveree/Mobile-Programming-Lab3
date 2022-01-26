import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'loginpage.dart';
import 'model/user.dart';

class TabPage3 extends StatefulWidget {
  final User user;
  const TabPage3({Key? key, required this.user}) : super(key: key);

  @override
  State<TabPage3> createState() => _TabPage3State();
}

class _TabPage3State extends State<TabPage3> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
            height: 50,
            color: Colors.white,
            child: const Text(
              'PROFILE SETTINGS',
              style: TextStyle(
                  fontWeight: FontWeight.bold, height: 1.5, fontSize: 35),
            )),
        Container(
          height: 15,
          color: Colors.white,
        ),
        Container(
          height: 15,
          color: Colors.white,
          child: Image.asset(
            'assets/images/profilePicture.png',
          ),
        ),
        Container(
          height: 50,
          color: Colors.blue[600],
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const LoginPage()));
            },
            child: const Text('Login'),
          ),
        ),
        Container(
          height: 10,
          color: Colors.white,
        ),
        Container(
          height: 50,
          color: Colors.blue[600],
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const UpdateName()));
            },
            child: const Text('Update Name'),
          ),
        ),
        Container(
          height: 10,
          color: Colors.white,
        ),
        Container(
          height: 50,
          color: Colors.blue[500],
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const UpdatePassword()));
            },
            child: const Text('Update Password'),
          ),
        ),
        Container(
          height: 10,
          color: Colors.white,
        ),
        Container(
          height: 50,
          color: Colors.blue[400],
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const UpdateNumber()));
            },
            child: const Text('Update Phone Number'),
          ),
        ),
        Container(
          height: 10,
          color: Colors.white,
        ),
        Container(
          height: 50,
          color: Colors.blue[300],
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const Credit()));
            },
            child: const Text('Buy Credit'),
          ),
        ),
      ],
    ));
  }
}

class UpdateName extends StatelessWidget {
  const UpdateName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Please update your name on the blanks below:',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Confirm'),
                  onPressed: () {},
                )),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Back'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )),
          ],
        ));
  }
}

class UpdatePassword extends StatelessWidget {
  const UpdatePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Please update your password on the blanks below:',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Old Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'New Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Re-enter New Password',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Confirm'),
                  onPressed: () {},
                )),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Back'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )),
          ],
        ));
  }
}

class UpdateNumber extends StatelessWidget {
  const UpdateNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Please update your phone number below:',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Confirm'),
                  onPressed: () {},
                )),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Back'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )),
          ],
        ));
  }
}

class Credit extends StatelessWidget {
  const Credit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.blue[500],
              child: ElevatedButton(
                onPressed: () => {_buyCredit()},
                child: const Text('Buy Credit'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.blue[500],
              child: ElevatedButton(
                onPressed: () => {_transferCredit()},
                child: const Text('Transfer Credit'),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Back'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )),
          ],
        ));
  }
}

void _buyCredit() {
  TextEditingController enterAmountEditingController = TextEditingController();
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
          title: const Text(
            "Buy Credit",
            style: TextStyle(),
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                controller: enterAmountEditingController,
                keyboardType: const TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                    hintText: "Weight in Kg",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                child: const Text('Buy'),
                onPressed: () => {},
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Credit()));
                },
                child: const Text('Back'),
              ),
            ],
          ));
    },
  );
}

void _transferCredit() {
  TextEditingController transferAmountEditingController =
      TextEditingController();
  TextEditingController transferToEditingController = TextEditingController();
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
          title: const Text(
            "Buy Credit",
            style: TextStyle(),
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                controller: transferAmountEditingController,
                keyboardType: const TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                    hintText: "Amount",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              TextField(
                controller: transferToEditingController,
                keyboardType: const TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                    hintText: "Receiver",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                child: const Text('Transfer'),
                onPressed: () => {},
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Credit()));
                },
                child: const Text('Back'),
              ),
            ],
          ));
    },
  );
}
