import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:momsbooklog/components/textrowwidget.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  TextEditingController _titleController;
  TextEditingController _wordController;

  String dropdownValue = 'One';

  @override
  void initState() {
    _titleController = TextEditingController();
    _wordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register Book'),
        ),
        body: ListView(
          children: [
            imageBook(),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 30,
                alignment: Alignment.centerLeft,
                child: TextRowWidget(
                  content: '책 제목',
                  bold: true,
                  size: 20,
                  font: 'Cafe24',
                )),
            TextField(
              decoration: InputDecoration(hintText: '책 제목을 넣어주세요.'),
              controller: _titleController,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.symmetric(horizontal: 40.0),
                    border: OutlineInputBorder(),
                    labelText: '단어',
                  )),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  child: Container(
                    child: Center(
                        child: TextRowWidget(
                      content: '사전\n검색',
                      size: 15,
                      color: Colors.white,
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink,
                    ),
                    width: 70,
                    height: 55,
                  ),
                  onTap: () {
                    //TODO 사전 검색 api 연동
                    print('사전검색');
                  },
                ),
              ],
            ),
            Container(
              width: 50,
              child: DropdownButton<String>(
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                value: dropdownValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
          ],
        ));
  }

  Widget imageBook() {
    return Center(
      child: Stack(
        children: [
          Container(
            //color: Colors.grey,
            width: 200,
            child: Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: _imageFile == null
                    ? AssetImage('images/samplebook.jpeg')
                    : FileImage(File(_imageFile.path)),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 30,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context, builder: (builder) => bottomSheet());
              },
              child: Icon(
                Icons.camera_alt,
                size: 40,
                color: Colors.pink,
              ),
            ),
          )
        ],
      ),
    );
  }

  bottomSheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Text(
            'Choose Book Photo',
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                label: Text('Camera'),
                icon: Icon(
                  Icons.camera,
                  size: 50,
                ),
              ),
              FlatButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                  },
                  icon: Icon(Icons.photo_library),
                  label: Text('Gallery'))
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile;
    });
  }
}
