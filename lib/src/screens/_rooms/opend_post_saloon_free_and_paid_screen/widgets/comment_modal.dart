import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class CommentModal extends StatelessWidget {
  final List<dynamic> comments;

  const CommentModal({required this.comments, super.key});

  static void show(BuildContext context, {required List<dynamic> comments}) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return CommentModal(comments: comments);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: <Widget>[
          _buildHeader(),
          _buildCommentList(),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Text(
              '500 commentaires',
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.close, size: 13),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCommentList() {
    return Expanded(
      child: ListView.builder(
        itemCount: comments.length,
        itemBuilder: (context, index) {
          final comment = comments[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(comment['userImageUrl']),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            comment['username'],
                            style: GoogleFonts.inter(
                              fontSize: 8,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                comment['isFavorite']
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                size: 16,
                                color: comment['isFavorite']
                                    ? Colors.red
                                    : Colors.black,
                              ),
                              const SizedBox(width: 3),
                              Text(
                                '20',
                                style: GoogleFonts.inter(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text(
                        comment['comment'],
                        style: GoogleFonts.inter(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            comment['time'],
                            style: GoogleFonts.inter(
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 0.7),
                            ),
                          ),
                          if (comment['isCurrentUser'])
                            Padding(
                              padding: const EdgeInsets.only(right: 150.0),
                              child: Text(
                                'Supprimer',
                                style: GoogleFonts.inter(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildFooter() {
    return Column(
      children: [
        const SizedBox(height: 3),
        Text(
          'Glisser pour charger plus',
          style: GoogleFonts.inter(
            fontSize: 8,
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(249, 191, 13, 1),
          ),
        ),
        const SizedBox(height: 3),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(244, 244, 244, 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(AppAssets.imagesProfil2),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: SizedBox(
                  height: 35,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.top,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Écrire un commentaire',
                      hintStyle: GoogleFonts.inter(
                        color: const Color.fromRGBO(0, 0, 0, 0.7),
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(209, 213, 219, 1),
                        ),
                      ),
                      suffixIcon: Transform.rotate(
                        angle: -0.5,
                        child: const Icon(
                          Icons.send,
                          size: 15,
                          color: Color.fromRGBO(249, 191, 13, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
