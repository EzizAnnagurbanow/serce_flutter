import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MySearchFile extends StatelessWidget {
  const MySearchFile({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle? titleSmall = Theme.of(context).textTheme.titleSmall;
    final TextStyle? titleMedium = Theme.of(context).textTheme.titleMedium;
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(indent: 60,);
      },
      itemCount: 10,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){},
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(5)),
              ),
              ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 30,
                  ),
                  child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'File',
                          style: titleMedium,
                        ),
                      ),
                      ConstrainedBox(
                          constraints: BoxConstraints(minHeight: 15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.download,
                                size: 14,
                                color: mysecondary,
                              ),
                              Text(
                                '24 MB',
                                style: titleSmall,
                              )
                            ],
                          ))
                    ],
                  ))
            ],
          ),
        );
      },
    );
  }
}
