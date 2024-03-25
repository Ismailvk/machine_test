import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/constant/colors.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.grey)),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      'https://t4.ftcdn.net/jpg/03/83/25/83/240_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ),
                  ),
                ),
                const Text(
                    'Cargomatic \n\nCountrary to popular belief, is simply \ndummy text of the printing and type \nsetting industry. Lorem Ipsum has been\n the industry')
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.comment_bank_outlined,
                    color: Colors.amber,
                    size: 57,
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 5,
                    color: AppColors.secondaryColor,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Jerin Thomas \n CEO & founder of arabic'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
