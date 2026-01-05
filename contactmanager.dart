import 'dart:io';

menu() {
  Map<String, int> contact = {"samuel": 123456};
  print("---------Perform following functions-------------");
  print(
    "1. View contacts \n2. Add new contacts (name and phone number) \n3. search contacts \n4. delete contact \n0. Exit",
  );
  print("What do you want to do? ");
  int? n = int.parse(stdin.readLineSync()!);

  // String? menuChoice = stdin.readLineSync();
  switch (n) {
    case 1:
      if (contact.isEmpty) {
        print("No contact added yet");
        print("Add new contact? ('yes/no')");
        String? addContactOption = stdin.readLineSync();
        if (addContactOption == "yes") {
          print("contact added ");
        } else {
          break;
        }
      } else {
        print(contact);
      }
      break;
    case 2:
      print("how many contacts do you want to add?");
      int? contactToAdd = int.parse(stdin.readLineSync()!);
      for (int i = 1; i <= contactToAdd; i++) {
        print("enter name:");
        String qContactName = stdin.readLineSync()!;
        print("enter contact phone number");
        int? qContactPhoneNumber = int.parse(stdin.readLineSync()!);
        contact[qContactName] = qContactPhoneNumber;
      }
      print("$contactToAdd contacts added successfully");
      print(contact);
      break;
    case 3:
      print("enter contact you want to search for");
      String searchContact = stdin.readLineSync()!;
      if (contact.containsKey(searchContact)) {
        contact.forEach((k, v) {
          print("$k - $v");
        });
      } else {
        print("contact not found");
      }
      break;
    case 4:
      print("which contact will you like to delete?");
      String delContact = stdin.readLineSync()!;
      contact.remove(delContact);
      print("'$delContact' deleted successfully");
      break;

    case 0:
      print("goodbye");
      break;
    default:
      print("wrong option");
  }
}

void main(List<String> args) {
  menu();
}
