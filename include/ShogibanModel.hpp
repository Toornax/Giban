#ifndef SHOGIBANMODEL_HPP
#define SHOGIBANMODEL_HPP

#include <QtCore/QAbstractListModel>
#include <Giban.hpp>

const size_t NB_ROWS = 9;
const size_t NB_COLUMNS = 9;
const size_t NB_CELLS = NB_ROWS * NB_COLUMNS;

class ShogibanModel : public QAbstractListModel
{
    Q_OBJECT
public:
    ShogibanModel(QObject *parent = nullptr);
    virtual ~ShogibanModel() override;

    QVariant data(const QModelIndex &, int) const override;
    QModelIndex index(int, int, const QModelIndex &parent = QModelIndex()) const override;
    Qt::ItemFlags flags(const QModelIndex &) const override;
    QHash<int, QByteArray> roleNames() const override;
    int rowCount(const QModelIndex &) const override;

    bool setData(const QModelIndex &, const QVariant &, int role = Giban::TypeRole) override;
    bool setData(int, int, const QVariant &, int role = Giban::TypeRole);

private:
    std::array<Giban::Piece, NB_CELLS> board;
};

#endif // SHOGIBANMODEL_HPP
