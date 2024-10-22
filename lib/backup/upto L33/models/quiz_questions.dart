class QuizQuestion{
  const QuizQuestion(this.text,this.answers);
  final String text;
  final List<String> answers; // List of answers
  // Generic List type consisting of strings
  List<String> getShuffledAnswers(){
  // List.of(answers).shuffle(); // Chaining - we are calling a method on the result of calling another function method
  final shuffledList= List.of(answers);
  shuffledList.shuffle(); // unlike the map method, shuffle function changes the original list in memory
  return shuffledList; // that's why we created a new method getShuffledAnswers so that the original list remains intact
  }
}