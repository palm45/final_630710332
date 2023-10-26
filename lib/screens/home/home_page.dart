import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    buildLoadingOverlay() => Container(
        color: Colors.black.withOpacity(0.2),
        child: Center(child: CircularProgressIndicator()));


    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(213, 219, 226, 1)
                  ),
                  width: 480,
                  height: MediaQuery.of(context).size.height*1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Colors.grey,
                                  )
                              ),
                              width: 160,
                              height: 60,
                              child: Center(
                                child: Text(
                                  'Bangkok'
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Colors.grey,
                                  )
                              ),
                              width: 160,
                              height: 60,
                              child: Center(
                                child: Text(
                                    'Nakhon Pathom'
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Colors.grey,
                                  )
                              ),
                              width: 160,
                              height: 60,
                              child: Center(
                                child: Text(
                                    'Paris'
                                ),
                              ),
                            ),
                          ),
                        ]
                      ),
                      Center(
                        child: Column(
                          children: [

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }

}