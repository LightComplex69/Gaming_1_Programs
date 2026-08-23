/*
Name: Background
 Author: Rodrick Moore
 Date: 9/12 - 9/16
 Description: Rick's garage
 */

void setup()
{
  size(800, 600);
  background(#104B5F);
}
void draw()
{
  translate(0,0);
  
  drawUrMom();


  translate(width/2-100, height/2+100);
  drawCharacter();
  
  translate(width/2, height/2);
  drawCharacter();
}  
/*
  Name: Character 
 Author: Rodrick Moore
 Date: 9/12/2018
 Description: Cartoon Character
 
 */
void drawUrMom()
{
  fill(#FDFFA7);
  rect(150, 300, 380, 200);  // house

  fill(#D83F4A);
  beginShape();
  vertex(150, 440);
  vertex(180, 440);
  vertex(180, 500);
  vertex(150, 500);
  vertex(150, 440);
  endShape();

  beginShape();
  vertex(500, 440);
  vertex(530, 440);
  vertex(530, 500);
  vertex(500, 500);
  vertex(500, 440);
  endShape();

  fill(130);     // driveway
  beginShape();
  vertex(620, 600);
  vertex(530, 500);
  vertex(150, 500);
  vertex(70, 600);
  endShape();

  fill(#FDFF93);   // light shadow
  beginShape();
  vertex(185, 500);
  vertex(505, 500);
  vertex(555, 570);
  vertex(125, 570);
  vertex(185, 500);
  endShape();

  fill(#FDFFA7);
  beginShape();    // roof
  vertex(150, 300);
  vertex(350, 150);
  vertex(530, 300);
  endShape();

  fill(#A59D61);  // part of roof
  beginShape();
  vertex(350, 150);
  vertex(458, 240);
  vertex(230, 240);
  vertex(350, 150);
  endShape();

  fill(#6C4E21);     // 2nd roof
  beginShape();
  vertex(470, 250);
  vertex(750, 250);
  vertex(800, 320);
  vertex(530, 320);
  vertex(530, 300);
  vertex(470, 250);
  endShape();

  fill(#3E2C13);
  beginShape();
  vertex(150, 310);
  vertex(135, 305);
  vertex(132, 300);
  vertex(350, 140);
  vertex(350, 145);
  vertex(135, 305);
  vertex(350, 145);
  vertex(350, 140);
  vertex(545, 300);
  vertex(542, 305);
  vertex(350, 145);
  vertex(542, 305);
  vertex(530, 310);
  vertex(530, 300);
  vertex(350, 150);
  vertex(150, 300);
  vertex(150, 310);
  endShape();


  fill(150);    // doorway
  beginShape();
  vertex(175, 500);
  vertex(175, 330);
  vertex(505, 330);
  vertex(505, 500);
  endShape();

  fill(80);
  beginShape();
  vertex(175, 500);
  vertex(200, 470);
  vertex(200, 350);
  vertex(175, 320);
  vertex(200, 350);
  vertex(480, 350);
  vertex(505, 320);
  vertex(480, 350);
  vertex(480, 470);
  vertex(200, 470);
  vertex(200, 470);
  vertex(480, 470);
  vertex(505, 500);
  endShape();

  fill(200);      // garage door
  beginShape();
  vertex(180, 336.5);
  vertex(158.5, 315);
  vertex(518.5, 315);
  vertex(500, 336.5);
  vertex(180, 336.5);
  endShape();



  fill(#FDFFA7);
  beginShape();     // 2nd house
  vertex(800, 320);
  vertex(530, 320);
  vertex(530, 470);
  vertex(800, 470);

  endShape();


  fill(#6C4E21);
  beginShape();     // 2nd top
  vertex(715, 308);
  vertex(730, 308);
  vertex(770, 370);
  vertex(760, 380);
  vertex(760, 370);
  vertex(770, 370);
  vertex(700, 370);
  vertex(730, 308);
  vertex(700, 370);
  vertex(685, 360);
  vertex(715, 308);
  endShape();

  fill(#6C4E21);
  beginShape();    // part of 2nd top
  vertex(689, 363);
  vertex(689, 380);
  vertex(692, 380);
  vertex(699, 370);
  endShape();

  fill(#BC9559);
  beginShape();     // door
  vertex(760, 370);
  vertex(760, 470);
  vertex(705, 470);
  vertex(705, 370);
  vertex(760, 370);
  endShape();

  fill(#6FFF40);
  beginShape();      // lawn right
  vertex(620, 600);
  vertex(530, 500);
  vertex(530, 470);
  vertex(800, 470);
  vertex(800, 600);
  endShape();

  beginShape();     // lawn left
  vertex(70, 600);
  vertex(150, 500);
  vertex(150, 470);
  vertex(0, 470);
  vertex(0, 600);
  endShape();

  fill(190);
  beginShape();  // right line
  vertex(800, 550);
  vertex(705, 470);
  vertex(760, 470);
  vertex(800, 500);
  endShape();

  stroke(255);
  fill(230);
  ellipse(700, 100, 100, 100);

  stroke(#104B5F);
  fill(#104B5F);
  ellipse(600, 100, 250, 130);
}  

void drawCharacter()
{

  stroke(0);
  fill(#7AEDD5);
  beginShape();     // Hair
  vertex(48, 11);
  vertex(47, 10);
  vertex(47, 7);
  vertex(49, 9);
  vertex(49, 7);
  vertex(50, 6);
  vertex(50, 5);
  vertex(51, 4);
  vertex(52, 3);
  vertex(52, 5);
  vertex(53, 6);
  vertex(54, 7);
  vertex(55, 6);
  vertex(56, 5);
  vertex(57, 5);
  vertex(58, 4);
  vertex(59, 3);
  vertex(61, 2);
  vertex(60, 4);
  vertex(60, 9);
  vertex(65, 9);
  vertex(66, 8);
  vertex(64, 10);
  vertex(64, 11);
  vertex(63, 12);
  vertex(64, 13);
  vertex(66, 14);
  vertex(68, 15);
  vertex(66, 16);
  vertex(64, 16);
  vertex(63, 17);
  vertex(64, 18);
  vertex(66, 18);
  vertex(65, 19);
  vertex(64, 20);
  vertex(63, 20);
  vertex(62, 21);
  vertex(61, 22);
  vertex(62, 23);
  vertex(63, 24);
  vertex(61, 24);
  vertex(60, 23);
  endShape();

  fill(#EADB8E);
  beginShape();    // Head
  vertex(51, 9);
  vertex(57, 9);
  vertex(58, 10);
  vertex(59, 11);
  vertex(60, 12);
  vertex(60, 13);
  vertex(60, 14);
  vertex(60, 15);
  vertex(60, 16);
  vertex(60, 17);
  vertex(60, 18);
  vertex(59, 18);
  vertex(61, 19);
  vertex(61, 20);
  vertex(61, 21);
  vertex(59, 21);
  vertex(59, 22);
  vertex(59, 23);
  vertex(58, 24);
  vertex(57, 25);
  vertex(57, 26);
  vertex(57, 27);
  vertex(57, 26);
  vertex(53, 26);
  vertex(53, 27);
  vertex(53, 26);
  vertex(52, 26);
  vertex(51, 25);
  vertex(50, 25);
  vertex(49, 24);
  vertex(48, 23);
  vertex(48, 12);
  vertex(49, 11);
  vertex(50, 10);
  endShape(); 

  fill(255, 255, 255);
  beginShape();    //Right side coat and arm
  vertex(58, 27);
  vertex(61, 27);
  vertex(74, 36);
  vertex(75, 37);
  vertex(75, 39);
  vertex(67, 50);
  vertex(67, 51);
  vertex(66, 52);
  vertex(62, 49);
  vertex(62, 48);
  vertex(70, 40);
  vertex(70, 38);
  vertex(63, 32);
  vertex(62, 32);
  vertex(60, 30);
  vertex(62, 32);
  vertex(62, 40);
  vertex(63, 41);
  vertex(63, 45);
  vertex(64, 46);
  vertex(62, 48);
  vertex(65, 51);
  vertex(65, 59);
  vertex(66, 60);
  vertex(66, 63);
  vertex(67, 64);
  vertex(67, 68);
  vertex(68, 69);
  vertex(68, 72);
  vertex(69, 74);
  vertex(64, 68);
  vertex(64, 66);
  vertex(63, 65);
  vertex(62, 65);
  vertex(62, 61);
  vertex(61, 60);
  vertex(61, 58);
  vertex(60, 57);
  vertex(60, 54);
  vertex(59, 53);
  vertex(59, 50);
  vertex(58, 49);
  vertex(58, 44);
  vertex(57, 43);
  vertex(57, 28);
  vertex(53, 28);
  vertex(53, 26);
  vertex(57, 26);
  vertex(57, 27);
  endShape();

  beginShape();     // left arm
  vertex(52, 28);
  vertex(49, 28);
  vertex(47, 31);
  vertex(47, 38);
  vertex(46, 39);
  vertex(46, 42);
  vertex(45, 43);
  vertex(34, 43);
  vertex(31, 42);
  vertex(31, 41);
  vertex(30, 40);
  vertex(29, 40);
  vertex(28, 41);
  vertex(29, 42);
  vertex(31, 42);
  vertex(31, 41);
  vertex(30, 40);
  vertex(29, 40);
  vertex(28, 40);
  vertex(27, 38);
  vertex(20, 38);
  vertex(20, 39);
  vertex(19, 40);
  vertex(16, 40);
  vertex(15, 39);
  vertex(15, 38);
  vertex(11, 38);
  vertex(10, 39);
  vertex(12, 41);
  vertex(24, 41);
  vertex(24, 43);
  vertex(12, 43);
  vertex(12, 41);
  vertex(12, 43);
  vertex(10, 41);
  vertex(10, 39);
  vertex(12, 41);
  vertex(24, 41);
  vertex(24, 43);
  vertex(26, 43);
  vertex(27, 42);
  vertex(28, 43);
  vertex(28, 44);
  vertex(29, 45);
  vertex(28, 46);
  vertex(26, 44);
  vertex(26, 43);
  vertex(26, 43);
  vertex(27, 42);
  vertex(28, 43);
  vertex(28, 44);
  vertex(30, 46);
  vertex(31, 45);
  vertex(29, 43);
  vertex(31, 45);
  vertex(32, 46);
  vertex(33, 45);
  vertex(32, 44);
  vertex(33, 45);
  vertex(34, 45);
  vertex(35, 46);
  vertex(36, 46);
  vertex(36, 43);
  vertex(36, 46);
  vertex(47, 46);
  vertex(48, 45);
  vertex(48, 44);
  endShape();

  fill(#908757);
  beginShape();     //  Legs
  vertex(51, 52);
  vertex(59, 52);
  vertex(59, 53);
  vertex(60, 54);
  vertex(60, 57);
  vertex(61, 58);
  vertex(61, 60);
  vertex(62, 61);
  vertex(62, 65);
  vertex(61, 66);
  vertex(61, 77);
  vertex(62, 78);
  vertex(62, 87);
  vertex(60, 87);
  vertex(62, 87);
  vertex(62, 91);
  vertex(60, 91);
  vertex(62, 91);
  vertex(63, 92);
  vertex(63, 95);
  vertex(62, 96);
  vertex(56, 96);
  vertex(57, 94);
  vertex(59, 92);
  vertex(60, 92);
  vertex(60, 86);
  vertex(59, 85);
  vertex(59, 79);
  vertex(58, 78);
  vertex(58, 67);
  vertex(57, 66);
  vertex(57, 56);
  vertex(58, 55);
  vertex(57, 56);
  vertex(55, 56);
  vertex(54, 57);
  vertex(54, 59);
  vertex(53, 60);
  vertex(53, 73);
  vertex(52, 74);
  vertex(52, 77);
  vertex(53, 78);
  vertex(53, 87);
  vertex(51, 87);
  vertex(53, 87);
  vertex(53, 91);
  vertex(54, 92);
  vertex(54, 95);
  vertex(45, 95);
  vertex(46, 94);
  vertex(48, 92);
  vertex(50, 92);
  vertex(51, 91);
  vertex(51, 87);
  vertex(50, 86);
  vertex(50, 78);
  vertex(49, 77);
  vertex(49, 67);
  endShape();

  fill(255, 255, 255);
  beginShape();     // Left coat
  vertex(52, 28);
  vertex(47, 34);
  vertex(52, 37);
  vertex(52, 28);
  vertex(52, 37);
  vertex(48, 41);
  vertex(52, 44);
  vertex(52, 37);
  vertex(52, 45);
  vertex(51, 46);
  vertex(51, 56);
  vertex(50, 57);
  vertex(50, 65);
  vertex(49, 66);
  vertex(48, 69);
  vertex(45, 74);
  vertex(46, 70);
  vertex(47, 69);
  vertex(47, 64);
  vertex(48, 63);
  vertex(48, 56);
  vertex(49, 55);
  vertex(49, 42);
  vertex(48, 41);
  vertex(49, 40);
  vertex(49, 35);
  endShape();


  beginShape();     //  Shirt
  vertex(51, 51);
  vertex(59, 51);
  endShape();

  fill(#BAFF46);
  beginShape();
  vertex(16, 40);
  vertex(16, 32);
  vertex(17, 31);
  vertex(18, 31);
  vertex(19, 32);
  vertex(19, 40);
  endShape();
}
