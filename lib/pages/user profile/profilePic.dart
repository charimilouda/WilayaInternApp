import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
File? file;

  @override
  Widget build(BuildContext context) {
    final fileName =file!=null ?  (file!.path) :'No file selected';
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
      //overflow : Overflow.visible,
        fit: StackFit.expand,
        
        children: [
          CircleAvatar(backgroundImage: AssetImage("assets/1323233.png")
          ),
          Positioned(
            bottom: 0,
            right: -1,
            
            child: SizedBox(
              height: 45,
              width: 45,
              child:
               FlatButton(
                //padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                side: BorderSide(color: Colors.white)),
                color: Color(0xFFF5F6F9),
                onPressed:selectFile,
              child: Image.asset(
                "assets/cameraicon.png"
                )/*Icon(Icons.camera_alt,color: Colors.grey,)*/)
              ),
              
          ),
        ],
      ),
      
    );
  }

  Future selectFile() async{
    final result =await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null )return ;
    final path =result.files.single.path!;
    setState(()=>file=File(path));
  }

  Future<File> saveFilePermanently(PlatformFile file)async{
    final appStorage =await getApplicationDocumentsDirectory();
    final newFile = File ('${appStorage.path}/${file.name}');
    return File(file.path!).copy(newFile.path);
    }

  void _OpenFile(PlatformFile file){
    
      OpenFile.open(file.path!);
    }
}