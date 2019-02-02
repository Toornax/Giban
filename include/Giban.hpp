#ifndef ENUM_HPP
#define ENUM_HPP

#include <QtCore/QObject>

namespace Giban
{
    Q_NAMESPACE

    enum Piece {
        None    = 0,
        King    = 1,
        Jewel   = 2,
        Rook    = 4,
        Bishop  = 8,
        Gold    = 16,
        Silver  = 32,
        Knight  = 64,
        Lance   = 128,
        Pawn    = 256,
        Promote = 512
    };

    enum ShogiRole {
        TypeRole = Qt::UserRole + 1,
        NewPositionRole
    };

    Q_ENUM_NS(Piece)
}



#endif // ENUM_HPP
