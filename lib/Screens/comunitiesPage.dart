import 'package:app_animals/Screens/animalAddPage.dart';
import 'package:app_animals/models/comunities.dart';
import 'package:flutter/material.dart';
import '../defaultValues/comunities_data.dart';
import '../widgets/ComunitiesItem.dart';


class ComunitiesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: COMUNITIES_DATA
            .map((comunitiesData) => ComunitieItem(
                comunitiesData.id,
                comunitiesData.nome,
                comunitiesData.responsaveis,
                comunitiesData.descricao,
                comunitiesData.areaAbrange,
                comunitiesData.contas,
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => ComunitieAddPage()),
          // );
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(66, 196, 157, 1),
      ),
    );
  }
}
