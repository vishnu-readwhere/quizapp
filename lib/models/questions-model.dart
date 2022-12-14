

class Questions{
  final String id;
  final String ques;
  final Map<String,bool> options;
Questions({required this.id,required this.ques,required this.options});

@override 
String toString(){
  return 'Questions(id: $id,ques: $ques,options: $options)';
}
}