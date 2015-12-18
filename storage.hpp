#ifndef STORAGE_HPP
#define STORAGE_HPP

#include <QQuickItem>
#include <QJsonDocument>
#include <QJsonObject>
#include <random>

class storage : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(int numX READ numX WRITE setNumX NOTIFY numXChanged)
    Q_PROPERTY(int numY READ numY WRITE setNumY NOTIFY numYChanged)
    Q_PROPERTY(int input READ input WRITE setInput NOTIFY inputChanged)
    Q_PROPERTY(int score READ score WRITE setScore NOTIFY scoreChanged)
    Q_PROPERTY(int highScore READ highScore WRITE setHighScore NOTIFY highScoreChanged)
    Q_PROPERTY(QString highName READ highName WRITE setHighName NOTIFY highNameChanged)
public:
    storage();
    int numX() const;
    int numY() const;
    int input() const;
    int score() const;
    int highScore() const;
    QString highName() const;

    void reader(const QJsonObject &json);
    void writer(QJsonObject &json) const;

signals:
    void numXChanged(int numX);
    void numYChanged(int numY);
    void inputChanged(int input);
    void scoreChanged(int score);
    void highScoreChanged(int highScore);
    void highNameChanged(QString highName);

public slots:
    //void compare(int anyInput, int numA, int numB);//legacy
    void saver();
    void setNumX(int numX);
    void setNumY(int numY);
    void setInput(int input);
    void setScore(int score);
    void setHighScore(int highScore);
    void setHighName(QString highName);

private:
    int m_numX, m_numY, m_input, m_score = 0;
    int m_highScore; QString m_highName;
    QFile saves;
};

#endif // STORAGE_HPP
