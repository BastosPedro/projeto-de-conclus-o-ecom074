#include "storage.hpp"
#include <iostream>

storage::storage() {
    qsrand(time(0));
    //QObject::connect(this, &storage::inputChanged, this, &storage::compare);
}
int storage::numX() const
{
    return m_numX;
}

int storage::numY() const
{
    return m_numY;
}

QString storage::highName() const
{
    return m_highName;
}

int storage::highScore() const
{
    return m_highScore;
}

int storage::score() const
{
    return m_score;
}

int storage::input() const
{
    return m_input;
}

//signals and slots
void storage::compare(int anyInput, int numA, int numB)
{
    if(anyInput == (numA + numB)){
        m_score++;
        setNumX(0);
        setNumY(0);
    }
}

void storage::setNumX(int numX)
{
    numX =  qrand() % 11 + (m_score*10);
    m_numX = numX;
    emit numXChanged(numX);
}

void storage::setNumY(int numY)
{
    numY = qrand() % 11 + (m_score*10);
    m_numY = numY;
    emit numYChanged(numY);
}

void storage::setInput(int input)
{
    if (m_input == input)
        return;

    m_input = input;
    emit inputChanged(input);
}

void storage::setScore(int score)
{
    if (m_score == score)
        return;

    m_score = score;
    emit scoreChanged(score);
}

void storage::setHighScore(int highScore)
{
    if (m_highScore == highScore)
        return;

    m_highScore = highScore;
    emit highScoreChanged(highScore);
}

void storage::setHighName(QString highName)
{
    if (m_highName == highName)
        return;

    m_highName = highName;
    emit highNameChanged(highName);
}

