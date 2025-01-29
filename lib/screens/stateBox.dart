import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StateBox extends StatefulWidget {
  final Color color;
  final String value;
  final String total;
  final String type;

  const StateBox({
    super.key,
    required this.color,
    required this.total,
    required this.value,
    required this.type,
  });

  @override
  State<StateBox> createState() => _StateBoxState();
}

class _StateBoxState extends State<StateBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 220,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.total,
            style: GoogleFonts.mavenPro(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              Text(
                widget.value,
                style: GoogleFonts.mavenPro(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              widget.type.isNotEmpty
                  ? Text(
                      widget.type,
                      style: GoogleFonts.mavenPro(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
