
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final String skillname;
  final String skillproficient;
  final String skillnametwo;
  final String skillproficienttwo;

  const Skills({
    super.key,
    required this.skillname,
    required this.skillproficient,
    required this.skillnametwo,
    required this.skillproficienttwo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // First skill container
        Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 55,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(8),
              //   border: Border.all(
              //     color: Colors.grey,
              //     width: 1,
              //   ),
              // ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Icon(Icons.stars, size: 30),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            skillname,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            skillproficient,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 20), // Spacing between containers
        // Second skill container
        Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 55,
             
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Icon(Icons.stars, size: 30),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            skillnametwo,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            skillproficienttwo,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
