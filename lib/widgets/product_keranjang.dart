import 'package:flutter/material.dart';

class ProductKeranjang extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Image.asset(
                "assets/img/product-3.png",
                width: 100,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(child: Text("Harman Kardon Onyx 4")),
            SizedBox(
              width: 30,
            ),
            Text("Rp. 1,306,000"),
          ],
        ),
        Row(
          children: [
            Spacer(),
            Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.delete_outlined,
                    ),
                    Text("Hapus"),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(0, 25),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("1"),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(0, 25),
                      ),
                      onPressed: () {},
                      child: Icon(
                        Icons.remove,
                        size: 15,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
