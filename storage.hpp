#ifndef STORAGE_HPP
#define STORAGE_HPP

#include <QQuickItem>
#include <random>

class storage : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(int numX READ numX WRITE setNumX NOTIFY numXChanged)
    Q_PROPERTY(int numY READ numY WRITE setNumY NOTIFY numYChanged)
    Q_PROPERTY(int input READ input WRITE setInput NOTIFY inputChanged)

public:
    storage();
    int numX() const;
    int numY() const;
    int input() const;
    bool compare(int anyInput, int numA, int numB);

signals:
    void numXChanged(int numX);
    void numYChanged(int numY);
    void inputChanged(int input);

public slots:
    void setNumX(int numX);
    void setNumY(int numY);
    void setInput(int input);

private:
    int playerScore, count = 0;
    int m_numX, m_numY, m_input;
};

#endif // STORAGE_HPP
