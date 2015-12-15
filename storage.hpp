#ifndef STORAGE_HPP
#define STORAGE_HPP

#include <QQuickItem>
#include <random>

class storage : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(int numX READ numX WRITE setNumX NOTIFY numXChanged)
    Q_PROPERTY(int numY READ numY WRITE setNumY NOTIFY numYChanged)
private:
    //int numX, numY;
    int playerScore, playerInput;
    int count;
    int m_numX;
    int m_numY;

public:
    storage();

    int numX() const;
    int numY() const;
    int getPlayerInput() const;
    void setPlayerInput(int value);

    bool compare(int anyInput, int numA, int numB);

signals:
    void numXChanged(int numX);
    void numYChanged(int numY);

public slots:
    void setNumX(int numX);
    void setNumY(int numY);
};

#endif // STORAGE_HPP
