import 'package:flutter/material.dart';
import 'package:post_api/model/model.dart';
import 'package:provider/provider.dart';

import '../view/views.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  @override
  // ignore: must_call_super
  void initState() {
    Provider.of<ProductPage>(context, listen: false);
    super.setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Add product")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Enter the title"),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: priceController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Enter the price"),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the description"),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: imageController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Enter the image"),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: categoryController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the category"),
              ),
              const SizedBox(
                height: 30,
              ),
              Consumer<ProductPage>(
                  builder: ((BuildContext context, value, child) {
                return ElevatedButton(
                    onPressed: () async {
                      String title = titleController.text;
                      String price = priceController.text;
                      String description = descriptionController.text;
                      String image = imageController.text;
                      String category = categoryController.text;

                      value.createData(
                          title, price, description, image, category);
                    },
                    child: const Text("Add product"));
              }))
            ],
          ),
        ),
      ),
    );
  }
}
