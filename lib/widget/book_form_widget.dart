import 'package:flutter/material.dart';

class BookFormWidget extends StatelessWidget {
  final String? title;
  final String? description;
  final String? image;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final ValueChanged<String> onChangedImage;

  const BookFormWidget({
    Key? key,
    this.title = '',
    this.description = '',
    this.image = '',
    required this.onChangedTitle,
    required this.onChangedDescription,
    required this.onChangedImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildTitle(),
          const SizedBox(height: 8),
          buildDescription(),
          const SizedBox(height: 16),
          buildImage(),
          const SizedBox(height:16),
        ],
      ),
    ),
  );


  Widget buildTitle() => TextFormField(
    maxLines: 1,
    initialValue: title,
    style: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    decoration: const InputDecoration(
      border: InputBorder.none,
      hintText: 'Title',
      hintStyle: TextStyle(color: Colors.grey),
    ),
    validator: (title) =>
    title != null && title.isEmpty ? 'Cannot Empty' : null,
    onChanged: onChangedTitle,
  );

  Widget buildDescription() => TextFormField(
    maxLines: 5,
    initialValue: description,
    style: const TextStyle(color: Colors.white60, fontSize: 18),
    decoration: const InputDecoration(
      border: InputBorder.none,
      hintText: 'Masukkan Disini',
      hintStyle: TextStyle(color: Colors.white60),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Cannot Empty'
        : null,
    onChanged: onChangedDescription,
  );

  Widget buildImage() => TextFormField(
    maxLines: 5,
    initialValue: image,
    style: const TextStyle(color: Colors.white60, fontSize: 18),
    decoration: const InputDecoration(
      border: InputBorder.none,
      hintText: 'Masukkan Link Disini',
      hintStyle: TextStyle(color: Colors.white60),
    ),
    onChanged: onChangedImage,
  );
}