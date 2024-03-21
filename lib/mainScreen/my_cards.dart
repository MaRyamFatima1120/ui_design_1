import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class MyCards extends StatelessWidget {
  final Color mycolor;
  const MyCards({super.key, required this.mycolor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: mycolor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Manager",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: const Color(0xff434e6c),
                          fontSize: 16,
                        ),
                  ),
                  const Icon(Icons.more_horiz, color: Colors.white, size: 25),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Large",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                  ),
                  Text(
                    "92",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: const Color(0xffcfff00),
                          fontSize: 16,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "files",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                  ),
                  Text(
                    "items",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: const Color(0xff434e6c),
                          fontSize: 12,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearProgressIndicator(
                value: 0.5,
                backgroundColor: const Color(0xff434e6c),
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0xffcfff00)),
                borderRadius: BorderRadius.circular(2.0),
                minHeight: 5,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "72.40GB / 128GB",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:SizedBox(
                height: 40,
                child: SliderButton(
                  action: () {
                    return Future.value(true);
                  },
                  label: Text(
                    "> > >",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  backgroundColor: const Color(0xff434e6c),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: double.infinity,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text("Clean",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: const Color(0xff434e6c)))),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
