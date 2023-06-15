import 'dart:math' as math;
void main(){
print(checkevenodd(10)); 
print(fibonacci(10));
print(reversed("alopa")); 
print(leapyear(2023));
print (primenumber(100));
print(polindrom("amama amama ata ata amama amama")); 
print(factorial(5));
print(sortarr([12,33,1,54,3])); 
print(sumofarray([3, 6, 3, 8,3,1])); 
print(maxminfind([56,2,7,54,5252,765,65,543,654,131])); 
print(countvowconst('Privet pirojocek i drug'));
print(sumofdig(28955)); 
print(largestword("Есл,,,,,,,,,,,,,,,,,,,,,,, я тут, то я тут созд само длин слов!"));
print(findDuplicates([3, 6, 2, 9, 4, 3, 6, 32, 63, 759, 55, 63, 2]));
print(armstrong(93085));
print(anagrams("От к Р овЕн Ие", "окно и ветер"));
print(findmiss(10));
}

checkevenodd(int a){
  if(a % 2 == 0){
    return("this number is even");
  }
  else{
    return("this number is odd");
  }
}

fibonacci(int n){
  int a = 0;
  int b = 1;
  int counter = 0;
  List fibo = [];
 while (counter < n){
  counter += 1;
  fibo.add(a);
  int next = a + b;
  a = b;
  b = next;
 }
  return fibo; // не понял условия, задания если нужно n - ое колво раз то уберу счетчик и поставлю до числа n
}

reversed(String a){
String o = "";
for(int i = a.length - 1; i >= 0; --i){
o += a[i];
}
return o;
}

leapyear(int a){
  if((a % 4 == 0 && a % 100 != 0) || a % 400 == 0){
    return "leap year";
  }
  else{
    return "not leap year";
  }
}


 primenumber(int n) {
 late bool check;
 List tera = [];
  for (int number = 2; number <= n; number++) {
    if (isPrime(number)) {
      tera.add(number);
    }
  }
  return(tera);
}
 isPrime(int number) {
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

 polindrom(String a){ //Можно было и с одним циклом сделать если использовать метод замены replace 
  String first = "";
   String p = "";
   for(int l = 0; l < a.length; l++){
       if(a[l] != " "){
      first += a[l].toLowerCase();
       }
    }
   for (int i = a.length - 1; i >= 0; --i){
    if(a[i] != " "){
    p += a[i].toLowerCase();
    
   }}
   if(p == first){
     return "polindrom";   }
    else{
      return "not polindrom";
    }

    

 }

 factorial(int b){
  int sum = 1;
  for(int i = 2; i <= b; i++){
   sum *= i;
  }
  return sum;

}

sortarr(List <int> a){             
   for (int i = 0; i < a.length - 1; i++) {
    for (int j = 0; j < a.length - i - 1; j++) {
      if (a[j] > a[j + 1]) {
        int sost = a[j];
        a[j] = a[j + 1];
        a[j + 1] = sost;
      }
    }
  }
  return a;
}

 

sumofarray(List <int> t){
  int summa = 0;
for(int i = 0; i < t.length; i++) {
  summa+=t[i];
}
return summa;
}

maxminfind(List a){
   int max = a[0];
   int min = a[0];
for(int i = 0; i<= a.length-1;i++){
  if(a[i]>max){
    max = a[i];
  }
  if(a[i]<min){
    min = a[i];
  }
}
return "max = $max, min = $min";
}

countvowconst(String a){     
int countvow = 0;
int countconsont = 0;
String b = a.toLowerCase();
for(int i = 0;i < b.length;i++){
  if(b[i] == 'a' || b[i] == 'e'|| b[i] == 'i'|| b[i] == 'o'|| b[i] == 'u'|| b[i] == 'y'){
    countvow ++;
  }
}
for(int i = 0;i < a.length;i++){
  if(b[i] == 'b' || b[i] == 'c'|| b[i] == 'd'|| b[i] == 'f'|| b[i] == 'g'|| b[i] == 'h' || b[i] == 'j' || b[i] == 'k'|| b[i] == 'l'|| b[i] == 'm'|| b[i] == 'n'|| b[i] == 'p'|| b[i] == 'q'|| b[i] == 'r'|| b[i] == 's' || b[i] == 't' || b[i] == 'v'|| b[i] == 'w'|| b[i] == 'x'|| b[i] == 'y'|| b[i] == 'z'){
  
    countconsont ++;
  }
}
return "Vowels $countvow, Consonants = $countconsont";
}

sumofdig(int a){
  String b = a.toString();
  int sum = 0;
   for(int i = 0; i <= b.length;i++ ){
    sum += a % 10;
    a = (a/10).toInt();
   }
   return sum;
}

largestword(String a){
  String larg = "";
  String maxlarg = "";
  List e =[];
  for(int i = 0; i < a.length;i++){
    if(a[i] != "." && a[i] != "," && a[i] != "!" && a[i] != "?" && a[i] != ";"){
     larg += a[i];
    }
  }
  e = larg.split(" ");
  maxlarg = e[0];
  for (int i = 0; i < e.length; i++) {
    if(e[i].length > maxlarg.length){
      maxlarg = e[i];
    }
  }
  return maxlarg;
}

findDuplicates(List <int> a) {
  List<int> duplicate = [];

  for (int i = 0; i < a.length; i++) {
    for (int j = i + 1; j < a.length; j++) {
      if (a[i] == a[j] && !duplicate.contains(a[i])) {
        duplicate.add(a[i]);
        break;
      }
    }
  }
  if (duplicate.isEmpty) {
    print("gaytarlanyan sanlar içinde yok");
  } else {
  return duplicate;
}
}


armstrong(int a){
  int summ = 0;
  String b = a.toString();
 for (int i = 0; i < b.length; i++) {
   summ += math.pow(int.parse(b[i]), b.length).toInt();
 }
 if(a == summ){return "is the Armstrong number";
}
else{
  return "it's not Armstrong's number";
}
}

anagrams(String a, String b){
  String pop ="";
  List fir = a.toLowerCase().split("");
  List sec = b.toLowerCase().split("");
 for (int i = 0; i < fir.length; i++) {
  
 for(int l = 0; l < sec.length; l++){
   if(fir[i] == " " || fir[i] == "," || fir[i] == "!" || fir[i] == "?" || fir[i] == "." || fir[i] == ";"){
    fir.remove(fir[i]);
   } 
    if(sec[l] == " " || sec[l] == "," || sec[l] == "!" || sec[l] == "?" || sec[l] == "." || sec[l] == ";"){
      sec.remove(sec[l]);
    }

  if(fir.length == sec.length && fir.contains(sec[i]) == sec.contains(fir[i])){
    pop = "anagrams";
  }
  else{
    pop = "not anagrams";
  }
}
 }
 return pop;
}

findmiss(int n){  
  List <int> b = [];
  int count = 0;
  for (int i = 1; i <= n; i++) {
   b.add(i);
  }
  b.removeAt(2); // haysy sany ayyrjakdygymyzy yazmaly
  for(int l = 0;l < b.length;l++){
    count ++;
    if(count != b[l]){
       count++;
    return("San ${count - 1} goyberilen");
    }
  }
}
