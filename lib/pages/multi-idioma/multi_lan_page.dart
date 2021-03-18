import 'package:curso_firebase/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MultiLangPage extends StatefulWidget {
  const MultiLangPage({Key key}) : super(key: key);

  @override
  _MultiLangPageState createState() => _MultiLangPageState();
}

class _MultiLangPageState extends State<MultiLangPage> {
  int cont = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internacionalización'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                cont += 1;
              });
            },
          ),
          FloatingActionButton(
            heroTag: '2',
            child: Icon(Icons.remove),
            onPressed: () {
              if (cont > 0) {
                setState(() {
                  cont -= 1;
                });
              }
            },
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(Intl.getCurrentLocale()),
              SizedBox(
                height: 10.0,
              ),
              //Texto simple
              Text(AppLocalizations.current.helloWorld),
              SizedBox(
                height: 10.0,
              ),
              //texto con variable
              Text(AppLocalizations.current.textoVariable('Jose')),
              SizedBox(
                height: 10.0,
              ),
              //texto con multiples variables
              Text(AppLocalizations.current
                  .textoMultiplesVariables('Juan', 'Perez')),
              SizedBox(
                height: 10.0,
              ),
              //texto con plurales
              Text(AppLocalizations.current.textoPlural(cont)),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text(AppLocalizations.current.english),
                    onPressed: () {
                      AppLocalizations.load(
                        Locale('en'),
                      );
                      setState(() {});
                    },
                  ),
                  ElevatedButton(
                    child: Text(AppLocalizations.current.spanish),
                    onPressed: () {
                      AppLocalizations.load(
                        Locale('es'),
                      );
                      setState(() {});
                    },
                  ),
                  ElevatedButton(
                    child: Text(AppLocalizations.current.german),
                    onPressed: () {
                      AppLocalizations.load(
                        Locale('es', 'MX'),
                      );
                      setState(() {});
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
