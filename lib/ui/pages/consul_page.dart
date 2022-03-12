import 'dart:ui';
import 'package:apotek_app/shared/theme.dart';
import 'package:apotek_app/ui/widgets/custome_button.dart';
import 'package:apotek_app/ui/widgets/large_custome_text_form_field.dart';
import 'package:flutter/material.dart';
import '../widgets/custome_text_form_field.dart';

class ConsulPage extends StatelessWidget {
  const ConsulPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimeColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/detail.png',
                  width: 310,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.only(top: 130),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
                          decoration: BoxDecoration(
                            color: kBlueColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            children: [
                              const CustomeTextFormField(
                                name: 'Name',
                                text: 'Masukan nama anda',
                                iconUrl: 'assets/person.png',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const CustomeTextFormField(
                                name: 'Jenis Kelamin',
                                text: 'Masukan jenis kelamin anda',
                                iconUrl: 'assets/gender.png',
                                height: 53,
                                width: 53,
                                sizedbox: 10,
                                label: 'Gender',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const CustomeTextFormField(
                                name: 'Usia',
                                text: 'Masukan usia anda',
                                iconUrl: 'assets/date.png',
                                height: 53,
                                width: 53,
                                sizedbox: 10,
                                label: 'Tahun',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const LargeCustomeTextFormField(
                                name: 'Keterangan Penyakit',
                                text:
                                    'Isi keluhan posien terhadap penyakit yang dideritanya',
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(12),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 53,
                                      width: 53,
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: kWhiteColor,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child:
                                          Image.asset('assets/arrow_left.png'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: CustomeButton(
                                      fontsize: 12,
                                      text: 'Lihat Racikan',
                                      onPressed: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/detail-consul',
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
