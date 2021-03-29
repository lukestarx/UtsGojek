import 'package:flutter/material.dart';
import 'package:gojek1/config/size_config.dart';
import 'package:gojek1/screens/promo_gojek.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PanelController controller =new PanelController();
  double _panelHeightClosed;
  double _panelHeightOpen;
  List<Promo> listP = [];
  List<Category> listC = [];

  get flex => null;
  @override
  Widget build(BuildContext context) {
    SizeConfig().int(context);
    _panelHeightClosed = SizeConfig.screenheight / 1.11;
    _panelHeightOpen = SizeConfig.screenheight / 2;
    return Stack(
     alignment: Alignment.topCenter,
      children: [
        SlidingUpPanel(
          maxHeight: _panelHeightOpen,
          minHeight: _panelHeightClosed,
          parallaxEnabled: true,
          parallaxOffset: .5,
          controller: controller,
          defaultPanelState: PanelState.CLOSED,
          body: _body(),
          panelBuilder: (sc){
            return _panel(sc);
          },
          borderRadius: BorderRadius.only(
            topLeft : Radius.circular(28,0),
            topRight: Radius.circular(28,0)
          ),
        )
      ],
    );
  
  widget _panel(ScrollController sc){
    return ListView(
      controller : sc,
      children : [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            container(
              width: 30,
              height: 5,
              decoration: BoxDecoration(
                color : Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(12,0)),
              
              )
            )
          ]
        )
        SizedBox(height: 18,0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
            flex: 1,
            child : Container(
              height: SizeConfig.screenheight / 12,
              padding: EdgeInsets.only(left:20, top: 10, bottom:10),
                child : TextFormField(
                  enabled: false,
                  cursorColor: Colors.orange[200],
                  keyBoardType: TextInputType.text,
                  decoration : InputDecoration(
                    fillColor: Colors.blue,
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(Icons.search,color: Colors.black, Size : 30,),
                    hintText :"where you want to go ?",
                    border : OutlineInputBorder(
                      BorderRadius : BorderRadius.circular(30,0),
                      BorderSide : BorderSide(color : Colors.black)
                    )
                  ),
                ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Image.asset("assets/images/user1.png",
              color: Colors.green,
              width: 40, height: 40,),
            )
          ],
        )
      ],
    );
  }

  }
}