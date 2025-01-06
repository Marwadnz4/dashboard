import 'package:dashboad/widgets/app_text_form_field.dart';
import 'package:dashboad/widgets/upload_image.dart';
import 'package:flutter/material.dart';

class AddPharmacyForm extends StatelessWidget {
  const AddPharmacyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: formKey,
      child: Column(
        children: [
          AppTextFormField(
            // controller: nameController,
            hintText: "Insert pharmacy name",
            labelText: "Pharmacy name",
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid pharmacy name';
              }
              return null;
            },
          ),
          const SizedBox(height: 25),
          AppTextFormField(
            // controller: nameController,
            hintText: "Insert pharmacy location",
            labelText: "pharmacy location",
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid pharmacy location';
              }
              return null;
            },
          ),
          const SizedBox(height: 25),
          AppTextFormField(
            // controller: nameController,
            hintText: "Insert contact information",
            labelText: "contact information",
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid contact information';
              }
              return null;
            },
          ),
          const SizedBox(height: 25),
          AppTextFormField(
            // controller: nameController,
            hintText: "Insert Gps id",
            labelText: "Gps id",
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Gps id';
              }
              return null;
            },
          ),
          const SizedBox(height: 25),
          UploadImage(
            labelText: 'Category Cover Image',
            imagePath: (bytes) {
              // bytes = bytes;
            },
          ),
        ],
      ),
    );
  }
}
