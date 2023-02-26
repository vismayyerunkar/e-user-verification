import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String countryValue = "";
  String? stateValue = "";

  final TextEditingController _adhaarNo = TextEditingController();
  final TextEditingController _phoneNo = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _middlename = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  final TextEditingController _date = TextEditingController();
  final TextEditingController _addline1 = TextEditingController();
  final TextEditingController _addline2 = TextEditingController();
  final TextEditingController _pincode = TextEditingController();

  Future<void> postData(
    String _adhaarNo,
    String _phoneNo,
    String _name,
    String _middlename,
    String _lastname,
    String _date,
    String _addline1,
    String _addline2,
    // String stateValue,
    String _pincode,
  ) async {
    print("executed");
    if (_adhaarNo == "") return;
    String ip = "192.168.142.184";
    var url = Uri.parse('http://192.168.0.105:5000/api/auth/register');

    var res = await http.post(url, body: {
      'adhaarNumber': _adhaarNo,
      'phoneNumber': _phoneNo,
      'firstname': _name,
      'middlename': _middlename,
      'lastname': _lastname,
      'dob': _date,
      'add1': _addline1,
      'add2': _addline2,
      //'state': stateValue,
      'pincode': _pincode
    });
    
    if (res.statusCode == 200) {
      print('Data sent successfully!');
    } else {
      print('Error sending data.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'Enter your existing Adhaar Info',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                    alignment: Alignment.center,
                    child: Form(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _adhaarNo,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(12),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          // hintText: 'Name',
                          labelText: "Adhaar Number",
                          //labelStyle: ,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 23, 76, 119),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 23, 76, 119),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                    alignment: Alignment.center,
                    child: Form(
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: _phoneNo,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          // hintText: 'Name',
                          labelText: "Mobile Number",
                          //labelStyle: ,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 23, 76, 119),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 23, 76, 119),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        width: MediaQuery.of(context).size.width * 0.5,
                        // height: MediaQuery.of(context).size.height,
                        alignment: Alignment.center,
                        child: Form(
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            controller: _name,
                            decoration: InputDecoration(
                              // hintText: 'Name',
                              labelText: "Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 23, 76, 119),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 23, 76, 119),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        width: MediaQuery.of(context).size.width * 0.5,
                        // height: MediaQuery.of(context).size.height,
                        alignment: Alignment.center,
                        child: Form(
                          child: TextFormField(
                            controller: _middlename,
                            decoration: InputDecoration(
                              // hintText: 'Name',
                              labelText: "Middle Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 23, 76, 119),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 23, 76, 119),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        width: MediaQuery.of(context).size.width * 0.5,
                        // height: MediaQuery.of(context).size.height,
                        alignment: Alignment.center,
                        child: Form(
                          child: TextFormField(
                            controller: _lastname,
                            decoration: InputDecoration(
                              // hintText: 'Name',
                              labelText: "Last Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 23, 76, 119),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 23, 76, 119),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        width: MediaQuery.of(context).size.width * 0.5,
                        // height: MediaQuery.of(context).size.height,
                        alignment: Alignment.center,
                        child: Form(
                          child: TextField(
                            controller: _date,
                            decoration: InputDecoration(
                              // hintText: 'Name',
                              labelText: "D-O-B",
                              suffixIcon:
                                  const Icon(Icons.calendar_today_rounded),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 23, 76, 119),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 23, 76, 119),
                                ),
                              ),
                            ),
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1901),
                                  lastDate: DateTime.now());
                              if (pickedDate != null) {
                                setState(() {
                                  // _date.text = DateFormat('yyyy-MM-dd').format
                                  _date.text = DateFormat('dd-MM-yyyy')
                                      .format(pickedDate);
                                });
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                    alignment: Alignment.center,
                    child: Form(
                      child: TextFormField(
                        controller: _addline1,
                        decoration: InputDecoration(
                          // hintText: 'Name',
                          labelText: "Address line 1",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 23, 76, 119),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 23, 76, 119),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                    alignment: Alignment.center,
                    child: Form(
                      child: TextFormField(
                        controller: _addline2,
                        decoration: InputDecoration(
                          // hintText: 'Name',
                          labelText: "Address line 2",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 23, 76, 119),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 23, 76, 119),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    //width: MediaQuery.of(context).size.width * 0.5,
                    // height: MediaQuery.of(context).size.height,
                    alignment: Alignment.center,
                    child: CSCPicker(
                      disableCountry: true,
                      defaultCountry: CscCountry.India,
                      onCountryChanged: (countryValue) {},
                      onStateChanged: (state) {
                        setState(() {
                          stateValue = state;
                        });
                      },
                      onCityChanged: (city) {},
                      showCities: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    //width: MediaQuery.of(context).size.width * 0.5,
                    // height: MediaQuery.of(context).size.height,
                    alignment: Alignment.center,
                    child: Form(
                      child: TextFormField(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(6),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        controller: _pincode,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          // hintText: 'Name',
                          labelText: "Pincode",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 23, 76, 119),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 23, 76, 119),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      postData(
                          _adhaarNo.text,
                          _phoneNo.text,
                          _name.text,
                          _middlename.text,
                          _lastname.text,
                          _date.text,
                          _addline1.text,
                          _addline2.text,
                          //stateValue,
                          _pincode.text);
                      print(stateValue);
                      Navigator.pushNamed(context, '/picUpload');
                    },
                    child: Text('Next'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
