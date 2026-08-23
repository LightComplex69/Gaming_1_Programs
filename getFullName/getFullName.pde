String fullName;
void setup()
{
  size(800,600);
  println(getFullName("Rodrick ", "Desean ", "Moore "));
  textSize(25);
  text(fullName,width/2 - 100,height/2);
}

String getFullName(String fName, String mName, String lName)
{
  fullName = fName + mName + lName;
  return fullName;
}
