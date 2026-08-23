/* 
Create an array that contains the list of years between the start of the
2 world wars. (example, if WWI started i the year 10 and WWII started in
the year 25, the valid years would be 10,11,12,13…25)

Calculate the sum of these values
*/

int[] earthSucks = new int[26];

for(int i = 0; i < earthSucks.length; i++)
{
  earthSucks[i] = 1914+i;
}

int sum = 0;

for(int i = 0; i < earthSucks.length; i++)
{
  sum += earthSucks[i];
}

println(earthSucks);
println(sum);
