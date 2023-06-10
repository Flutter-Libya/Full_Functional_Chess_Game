import 'package:chess/components/pieces.dart';
import 'package:chess/values/colors.dart';
import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final void Function()? onTap;
  final bool isValidMove;
  final bool isWhite;
  final ChessPiece? piece;
  final bool isSelected;
  const Square(
      {super.key,
      required this.onTap,
      required this.isValidMove,
      required this.isWhite,
      required this.piece,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    Color? squareColor;

    if (isSelected) {
      squareColor = Colors.green;
    } else if (isValidMove) {
      squareColor = Colors.green[300];
    }
// otherwise, it's white or black
    else {
      squareColor = isWhite ? backgroundColor : forgroundColor;
    }
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: squareColor,
        child: piece != null
            ? Image.asset(
                piece!.imagePath,
                color: piece!.isWhite ? null : Colors.black,
              )
            : null,
      ),
    );
  }
}
