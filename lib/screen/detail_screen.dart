import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title, id, thumb;

  const DetailScreen({
    super.key,
    required this.title,
    required this.id,
    required this.thumb,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        foregroundColor: Colors.amber,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: id,
                child: Container(
                  width: 250,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 6,
                          offset: const Offset(5, 5),
                          color: Colors.black.withOpacity(0.15),
                        )
                      ]),
                  child: Image.network(
                    thumb,
                    headers: const {'Referer': 'https://comic.naver.com'},
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
