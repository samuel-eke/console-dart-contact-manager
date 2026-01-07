import 'dart:io';
// program to log user workout session

List<String> workOuts() {
  List<String> xWorkouts = [
    "Jumping jacks",
    "Plank walk-out",
    "Air squats",
    "Squats",
    "Planks",
  ];

  return xWorkouts;
}

workoutLogger({
  String typeOfWorkout = "",
  String reps = "",
  required String duration,
}) {
  print("You performed $typeOfWorkout. Carried out $reps reps, for $duration");
}

void main(List<String> args) {
  var exer = workOuts();
  print("my workouts ${exer.join(", ")}");

  List<String> workoutlog = [];

  while (true) {
    print("Which exercise did you do today?");
    String exercise_done = stdin.readLineSync()!;

    if (exer.any(
      (e) => e.toLowerCase() == exercise_done.trim().toLowerCase(),
    )) {
      print("well done");
      print("how many reps did you do?");
      String qreps = stdin.readLineSync()!;
      print("what was the duration");
      String qduration = stdin.readLineSync()!;
      workoutlog.addAll([qreps, qduration]);
      // print(workoutlog);

      workoutLogger(
        typeOfWorkout: exercise_done,
        reps: qreps,
        duration: qduration,
      );

      break;
    } else {
      print("That routine will soon be added.");
    }
  }
}
