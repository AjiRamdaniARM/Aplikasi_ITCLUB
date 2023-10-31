import 'package:flutter/material.dart';

class widgetHelper {

  ButtonStyle btnCategoryStyle(bool pilihWarna){
 return ButtonStyle (
    foregroundColor:pilihWarna ?  MaterialStateProperty.all<Color>(Colors.white) :  MaterialStateProperty.all<Color>(Colors.black),
    backgroundColor:pilihWarna ?  MaterialStateProperty.all<Color>(Colors.black) :  MaterialStateProperty.all<Color>(Colors.white),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: const BorderSide(color: Colors.black)
      )
    )
  );
  }
  
}

