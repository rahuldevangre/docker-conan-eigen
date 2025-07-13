#include <iostream>

#include <Eigen/Dense>

int main()
{
    Eigen::Matrix3f A;
    A << 1, 2, 3,
         4, 5, 6,
         7, 8, 10;

    Eigen::Vector3f b(3, 3, 4);
    Eigen::Vector3f x = A.colPivHouseholderQr().solve(b);

    std::cout << "Solution x:\n" << x << std::endl;
    return 0;
}
