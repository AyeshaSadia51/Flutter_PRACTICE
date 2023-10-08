import 'package:flutter/material.dart';

// CRUD - Create, Read, Update, Delete

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TODO',
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.pinkAccent,
        actions: const [Icon(Icons.today_outlined)],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Add New TODO',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close)),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Enter your TODO here',
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          focusColor: Colors.pinkAccent),
                      maxLines: 4,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pinkAccent,
                        ),
                        onPressed: () {},
                        child: const Text('Add'),
                      ),
                    )
                  ]),
                );
              });
        },
        backgroundColor: Colors.pinkAccent,
        child: const Icon(
          Icons.add,
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Actions'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: const Text(
                                'Update',
                              ),
                              leading: const Icon(Icons.edit),
                              onTap: () {
                                /// TODO - Update the item from list
                              },
                            ),
                            const Divider(
                              height: 2,
                              thickness: 1,
                            ),
                            ListTile(
                              title: const Text('Delete'),
                              leading: const Icon(Icons.delete),
                              onTap: () {
                                /// TODO - Delete the item from list
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.pinkAccent,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(fontSize: 16),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      );
                    });
              },
              title:
                  const Text('Completed the Assignment provided by University'),
              subtitle: const Text('08-10-23'),
              leading: CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              trailing: const Text('pending'),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 5,
              thickness: 2,
            );
          },
          itemCount: 10),
    );
  }
}
