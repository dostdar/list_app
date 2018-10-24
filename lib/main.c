#include <stdio.h>

// int main(void)
// {
    //  *****************************
    // char *name = "John Smith";
    // int age = 27;

    // /* prints out 'John Smith is 27 years old.' */
    // printf("%s is %d years old.\n", name, age);
    // return 0;
    // ************************
// }


int Factorial(int num){
    int i,f=1;
    for(i=1;i<=num;i++)
      f=f*i;
 
     return f;
}
int main(){
  int i,factorial,num;
  printf("Enter a natural number: ");
  scanf("%d",&num);
  factorial = Factorial(num);
  printf("%d! = %d\n", num, factorial);
  return 0;
}
