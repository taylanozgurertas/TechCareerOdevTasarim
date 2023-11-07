import 'package:flutter/material.dart';
import 'package:odevtasarim/constants/paddings.dart';
import 'package:odevtasarim/pages/detail_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final Image image = Image.asset("assets/image.png");
  final Icon backArrow = const Icon(Icons.arrow_back_ios_new_rounded);
  final Icon searchArrow = const Icon(Icons.search_rounded);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appBarTitle, style: const TextStyle(fontFamily: "Geologica"),),
        leading: backArrow,
        actions: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.yellowAccent.shade400,
              ),
              child: Padding(
                padding: ProjectPadding.generalPadding,
                child: Row(
                  children: [
                    searchArrow,
                    const SizedBox(width: 20,),

              ],
            ),
          )),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Positioned.fill(child: Image.asset("asset/k_ana_arkaplan.png", fit: BoxFit.cover,)),
                Positioned(
                  top: 250,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Text(
                      AppLocalizations.of(context)!.trainWithBest,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Colors.white, fontFamily: "Geologica", fontWeight: FontWeight.bold) ?? const TextStyle(color: Colors.white, fontSize: 64)
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: const EdgeInsets.only(top: 200),
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: ProjectPadding.generalPadding,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("MMA", style: TextStyle(fontFamily: "Geologica", fontSize: 18),),
                            Icon(Icons.scoreboard_rounded),
                            Icon(Icons.sports_mma_rounded),
                          ],
                          ),
                          const SizedBox(height: 70,),
                          Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellowAccent.shade400,
                                shadowColor: Colors.black,
                                elevation: 10,
                              ),
                                onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage(),));

                              },
                                child: Padding(
                                  padding: ProjectPadding.generalPadding,
                                    child: Text(AppLocalizations.of(context)!.createPlan, style: const TextStyle(fontFamily: "Geologica", fontSize: 28, color: Colors.black),),
                            )),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),




        ],
      )
    );
  }
}
