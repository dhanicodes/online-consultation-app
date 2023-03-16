import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../theme.dart';
import '../../../../data/app_session.dart';
import '../../cs_edit_profile/views/cs_edit_profile_view.dart';
import '../controllers/cs_my_profile_controller.dart';

class CsMyProfileView extends GetView<CsMyProfileController> {
  const CsMyProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    PreferredSize header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
            backgroundColor: primaryColor,
            title: Text(
              'Profile Saya',
              style:
                  textWhiteStyle.copyWith(fontSize: 19, fontWeight: semiBold),
            )),
      );
    }

    Widget content() {
      return StreamBuilder<DocumentSnapshot<Object?>>(
        stream: userCollection.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) return const Text("Error");
          if (!snapshot.hasData) return const Text("No Data");
          if (snapshot.data!.data != null) {
            Map<String, dynamic> item =
                (snapshot.data!.data() as Map<String, dynamic>);
            item["id"] = snapshot.data!.id;
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                  ),
                  padding: const EdgeInsets.all(20),
                  height: 310,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: white,
                      boxShadow: [
                        BoxShadow(blurRadius: 1.5, color: textGreyColor)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'assets/picture/dokter.png',
                              width: 80,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${item["fullName"]}",
                                style: textStyleBlack.copyWith(
                                    fontSize: 19, fontWeight: semiBold),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "${item["noTelpon"]}",
                                style: textStyleGrey.copyWith(fontSize: 13),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "${item["email"]}",
                                style: textStyleGrey.copyWith(fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Divider(
                        thickness: 2,
                        color: textGreyColor,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Tanggal Lahir',
                        style: textStyleGrey.copyWith(
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "${item["dateOfBirth"]}" != null
                            ? "${item["dateOfBirth"]}"
                            : "Belum diisi",
                        style: textStyleBlack.copyWith(fontSize: 13),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Jenis Kelamin',
                        style: textStyleGrey.copyWith(
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "${item["jender"]}" != null
                            ? "${item["jender"]}"
                            : "Belum diisi",
                        style: textStyleBlack.copyWith(fontSize: 13),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Kota/Kabupaten',
                        style: textStyleGrey.copyWith(
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "${item["kota"]}" != null
                            ? "${item["kota"]}"
                            : "Belum diisi",
                        style: textStyleBlack.copyWith(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 56,
                  margin: const EdgeInsets.only(right: 15, left: 15),
                  child: TextButton(
                      onPressed: () {
                        Get.to(() => CsEditProfileView(emailV: item["email"],));
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text(
                        'Edit',
                        style: textWhiteStyle.copyWith(
                            fontSize: 15, fontWeight: semiBold),
                      )),
                )
              ],
            );
          } else {
            return Container();
          }
        },
      );
    }

    return Scaffold(
      backgroundColor: bgColor1,
      appBar: header(),
      body: content(),
    );
  }
}
