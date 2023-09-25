import 'package:flutter/material.dart';

class MedicineName extends StatefulWidget {
  const MedicineName({super.key});

  @override
  State<MedicineName> createState() => _MedicineNameState();
}

class _MedicineNameState extends State<MedicineName> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 120,
              width: 120,
              child: Image.asset('images/Medicines.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("MEDICINE NAME",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'R.font.poppins',
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF2E2E2E),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Description including ",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'R.font.poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2E2E2E),
                      )),
                  Text("composition, volume, does,",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'R.font.poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2E2E2E),
                      )),
                  Text("color, nos. per strip etc",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'R.font.poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2E2E2E),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text("general use",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'R.font.poppins',
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF2E2E2E),
                      ))
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10.0, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: (){

                    },
                    child: Text("price",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'R.font.poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF07891C),
                        )),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      
                    },
                    child: Text("warning if needed",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'R.font.poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFA43232),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}
