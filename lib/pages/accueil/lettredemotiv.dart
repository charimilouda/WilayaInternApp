
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class attachinLDM extends StatefulWidget {
  const attachinLDM({Key? key}) : super(key: key);

  @override
  State<attachinLDM> createState() => _attachinLDMState();
}

class _attachinLDMState extends State<attachinLDM> {
  get kPrimaryColor => null;
 
  @override
  Widget build(BuildContext context) {
  late PlatformFile file ;
    return Column(
      children: [
        
        ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>
                          (
                            RoundedRectangleBorder(borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Color(0xFF015C92)))
                          )
                          ),

                          child: Container(height: 45,
                            child: Center(child: Text("Demande manuscrite ",style: TextStyle(color: Color.fromARGB(255, 122, 118, 118)),textAlign: TextAlign.left,))),
                            onPressed: ()async{
                            FilePickerResult? result =await FilePicker.platform.pickFiles(
                              allowMultiple: false,
                              type: FileType.custom,
                              allowedExtensions: ['docx','pdf',],
                              
                              );
                            if(result == null)
                            {
                             return ;
                            }
                          
                             file =result.files.first;
                            print (file.name);
                            print (file.bytes);
                            print (file.size);
                            print (file.extension);
                            print (file.path);
                            _OpenFile(file);
                            final newFile =await saveFilePermanently(file);
                            
                          },
                          
                        ),
                        //Text(file.name),
                       
                      
      ],
    );
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