#include "storage.hpp"
#include <iostream>

storage::storage() {
    QFile saves("./saves.json");
    if(!saves.open(QIODevice::ReadOnly)){
        qWarning("couldn't open");
        m_highScore = 0;
        m_highName = "";
    }
    else qWarning("file read!");
    QByteArray data = saves.readAll();
    QJsonDocument load(QJsonDocument::fromJson(data));
    reader(load.object());
    qsrand(time(0));
}
void storage::reader(const QJsonObject &json)
{
   m_highScore = json["score"].toInt();
   qDebug() << "score" << highScore();
   m_highName = json["name"].toString();
   qDebug() << "name" << highName();
}

void storage::writer(QJsonObject &json) const
{
    json["score"] = highScore();
    json["name"] = highName();
}

void storage::saver()
{
    QFile saves("./saves.json");
    if(!saves.open(QIODevice::WriteOnly)) qWarning("something wrong happened");
    QJsonObject scoreObject;
    writer(scoreObject);
    QJsonDocument saveData(scoreObject);
    saves.write(saveData.toJson());
}
//Getters

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

//setters and signals

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
    emit this->saver();
}

void storage::setHighName(QString highName)
{
    if (m_highName == highName)
        return;

    m_highName = highName;
    emit highNameChanged(highName);
}

