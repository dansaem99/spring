package ch03.ex05;

public record User(String userName, int age) {
   @Override
   public String toString() {
      return userName +", " + age;
   }
}