#include "storage.hpp"
#include <iostream>

storage::storage()
{
    qsrand(time(0));
    //setBoth(qrand() % 10, qrand() % 10);
    setNumX(qrand() % 10);
    setNumY(qrand() % 10);
    qDebug() << "numberX" << m_numX << endl
             << "numberY" << m_numY;
    int input;
    std::cin >> input;
    qDebug() << "input" << input;
    qDebug() << (compare(input, m_numX, m_numY));
}

int storage::getPlayerInput() const
{
    return playerInput;
}

void storage::setPlayerInput(int value)
{
    playerInput = value;
}

bool storage::compare(int anyInput, int numA, int numB)
{
    if(anyInput == (numA + numB)) return true;
    else return false;
}

//signals and slots
int storage::numX() const
{
    return m_numX;
}

int storage::numY() const
{
    return m_numY;
}

void storage::setNumX(int numX)
{
    if (m_numX == numX)
        return;

    m_numX = numX;
    emit numXChanged(numX);
}

void storage::setNumY(int numY)
{
    if (m_numY == numY)
        return;

    m_numY = numY;
    emit numYChanged(numY);
}

