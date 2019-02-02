#include <ShogibanModel.hpp>

ShogibanModel::ShogibanModel(QObject* parent) :
    QAbstractListModel(parent)
{
    for(auto &data : this->board)
        data = Giban::None;

    setData(0, 4, Giban::King);
    setData(8, 4, Giban::Jewel);
    setData(1, 1, Giban::Rook);
    setData(7, 7, Giban::Rook);
    setData(1, 7, Giban::Bishop);
    setData(7, 1, Giban::Bishop);
    setData(0, 3, Giban::Gold);
    setData(0, 5, Giban::Gold);
    setData(8, 3, Giban::Gold);
    setData(8, 5, Giban::Gold);
    setData(0, 2, Giban::Silver);
    setData(0, 6, Giban::Silver);
    setData(8, 2, Giban::Silver);
    setData(8, 6, Giban::Silver);
    setData(0, 1, Giban::Knight);
    setData(0, 7, Giban::Knight);
    setData(8, 1, Giban::Knight);
    setData(8, 7, Giban::Knight);
    setData(0, 0, Giban::Lance);
    setData(0, 8, Giban::Lance);
    setData(8, 8, Giban::Lance);
    setData(8, 0, Giban::Lance);

    for(int i{0}; i < 9; i++) {
        setData(2, i, Giban::Pawn);
        setData(6, i, Giban::Pawn);
    }

}

ShogibanModel::~ShogibanModel() {

}

QVariant ShogibanModel::data(const QModelIndex &index, int role) const {
    if(!index.isValid())
        return QVariant();

    switch(role) {
    case Giban::TypeRole:
        auto id { index.internalId() };

        return this->board[id];
    }

    return QVariant();
}

QModelIndex ShogibanModel::index(int row, int column, const QModelIndex &) const {
    auto id { static_cast<quintptr>(row) };
    return createIndex(row, column, id);
}

Qt::ItemFlags ShogibanModel::flags(const QModelIndex &index) const {
    if(!index.isValid())
        return Qt::NoItemFlags;

    return Qt::ItemIsSelectable | Qt::ItemIsEnabled | Qt::ItemIsEditable;
}

QHash<int, QByteArray> ShogibanModel::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[Giban::TypeRole] = "type";
    roles[Giban::NewPositionRole] = "newPosition";
    return roles;
}

int ShogibanModel::rowCount(const QModelIndex &) const {
    return NB_CELLS;
}


bool ShogibanModel::setData(const QModelIndex &index, const QVariant &value, int role) {
    if(!index.isValid())
        return false;

    switch(role) {
    case Giban::TypeRole:
        if(!value.canConvert<Giban::Piece>())
            return false;

        auto id { index.internalId() };
        this->board[id] = value.value<Giban::Piece>();

        emit dataChanged(QModelIndex(), QModelIndex());
        return true;
    }

    return false;
}

bool ShogibanModel::setData(int row, int column, const QVariant &value, int role) {
    int pos = row * NB_COLUMNS + column;

    return setData(index(pos, 0), value, role);
}
