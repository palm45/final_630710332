import 'package:final_630710332/models/environment.dart';
import 'package:final_630710332/responsitories/environment_responsitories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Environment>? _environments;
  var _isLoading = false;
  String? _errorMessage;
  Environment? environmentList;

  @override
  void initState() {
    super.initState();
    getEnvironment();
  }

  getEnvironment() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    await Future.delayed(Duration(seconds: 2));

    try {
      var environments = await EnvironmentRespository().getEnvironment();
      debugPrint('เกิดข้อผิดพลาด');

      setState(() {
        _environments = environments;
      });
    }catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget body;

    buildLoadingOverlay() => Container(
        color: Colors.black.withOpacity(0.2),
        child: Center(child: CircularProgressIndicator()));

    buildError() => Center(
        child: Padding(
            padding: const EdgeInsets.all(40.0),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(_errorMessage ?? '', textAlign: TextAlign.center),
              SizedBox(height: 32.0),
              ElevatedButton(onPressed: getEnvironment, child: Text('Retry'))
            ])));

    buildList() => ListView.builder(
      itemBuilder: (ctx, i) {
        environmentList = _environments![i];
      }
    );

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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child:
                              Text(
                                'Bangkok',
                                style: TextStyle(
                                  fontSize: 50,
                                )
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Thailand',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              )
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                '2023-10-26 9:00',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blueGrey
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('assets/images/116.png',),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Partly cloundy'
                              ),
                            )
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