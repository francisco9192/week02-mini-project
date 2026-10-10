#include <iostream>
using namespace std;

int main()
{
    char direction;
    double temperature;

    cin >> direction >> temperature;

    if (cin.fail())
    {
        cout << "Invalid input\n";
        return 0;
    }

    if (direction == 'C')
    {
        double fahrenheit = temperature * 9 / 5 + 32;
        cout << fahrenheit << " F\n";
    }
    else if (direction == 'F')
    {
        double celsius = (temperature - 32) * 5 / 9;
        cout << celsius << " C\n";
    }
    else
    {
        cout << "Invalid input\n";
    }

    return 0;
}
