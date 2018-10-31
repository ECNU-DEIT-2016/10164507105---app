import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components
//zhushi
import 'dart:math';

@Component(
  selector: 'rand-num',
  styleUrls: ['randnum_component.css'],
  templateUrl: 'randnum_component.html',
  directives: [RandNumComponent,
   MaterialButtonComponent,
   materialInputDirectives,
    NgIf,
  ],
)
class RandNumComponent {
  // Nothing here yet. All logic is in TodoListComponent.
  String number='';int randnum;
  String name;
  List<String> names=['红桃A','红桃2','红桃3','红桃4','红桃5','红桃6','红桃7','红桃8','红桃9','红桃10','红桃J','红桃Q','红桃K',
  '黑桃A','黑桃2','黑桃3','黑桃4','黑桃5','黑桃6','黑桃7','黑桃8','黑桃9','黑桃10','黑桃J','黑桃Q','黑桃K','梅花A','梅花2',
  '梅花3','梅花4','梅花5','梅花6','梅花7','梅花8','梅花9','梅花10','梅花J','梅花Q','梅花K','方片A','方片2','方片3','方片4','方片5',
  '方片6','方片7','方片8','方片9','方片10','方片J','方片Q','方片k'];
  bool click=false;
  void clickButton(){
    if(number=='')return;
    click=true;
    int num=int.parse(number);
    Random ran=new Random();
    randnum=ran.nextInt(num)+1;
    if(randnum<names.length) name=names[randnum];
    else name="Unknown";
  }
}
