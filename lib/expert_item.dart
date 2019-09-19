import 'package:flutter/material.dart';

class ExpertItem extends StatelessWidget{
  final String id;
  final String title;

  ExpertItem(this.id, this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title),
        color: Colors.black87,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
  
}

// return ClipRRect(
      
//         borderRadius: BorderRadius.circular(10),
//         child:GridTile(
//           child: GestureDetector(
//           onTap: (){
//             Navigator.of(context).pushNamed(
//               ProduitDetailScreen.routeName,
//               arguments: product.id,);
//           },
//           child:Image.network(product.imageUrl,
//           fit: BoxFit.cover ,
//           ),
//           ),
  
//           footer: GridTileBar(
//           backgroundColor: Colors.black38,
//           leading: IconButton(
//             icon: Icon(product.isFavorite? Icons.favorite: Icons.favorite_border),
//             color: Theme.of(context).accentColor,
//             onPressed: () {
//               product.toggleFavoriteStatus();
//             },
//           ),
//           title: Text(
//             product.title,
//             textAlign: TextAlign.center,
//           ),
//           trailing: IconButton(
//             icon: Icon(Icons.shopping_cart),
//             onPressed: (){},
//             color: Theme.of(context).accentColor,
//           ),
//           ),
//           ),
//     );