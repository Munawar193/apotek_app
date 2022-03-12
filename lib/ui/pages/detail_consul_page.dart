import 'package:apotek_app/shared/theme.dart';
import 'package:apotek_app/ui/widgets/custome_button.dart';
import 'package:apotek_app/ui/widgets/custome_details_patient.dart';
import 'package:flutter/material.dart';

class DetailConsulPage extends StatelessWidget {
  const DetailConsulPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerMedicine() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 45,
              width: 45,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset('assets/arrow_left.png'),
            ),
          ),
          Center(
            child: Text(
              'Informasi obat',
              style: blackStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: 3,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
            width: 20,
          ),
        ],
      );
    }

    Widget typeMedicine() {
      return Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jenis Obat',
                  style: blackStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 68,
                    width: 68,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 12),
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Paracetamol',
                              style: whiteStyle.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '3xhari',
                              style: whiteStyle.copyWith(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dosis resep',
                              style: whiteStyle.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '200mg/1',
                              style: whiteStyle.copyWith(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 68,
                  width: 90,
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    color: kBlueColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Recomendasi Dokter',
                      style: whiteStyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget patientDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Detail Pasien',
                  style: blackStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const DetailPatient(
                  title: 'Nama Lengkap',
                  name: 'Munawar Khalil',
                ),
                const DetailPatient(
                  title: 'Jenis kelamin',
                  name: 'Laki-Laki',
                ),
                const DetailPatient(
                  title: 'Usia',
                  name: '20 Tahun',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget docterDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Detail Dokter',
                  style: blackStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const DetailPatient(
                  title: 'Nama Dokter',
                  name: 'Dr. Ilham maulana',
                ),
                const DetailPatient(
                  title: 'No. Telephone',
                  name: '082237766789',
                ),
                const DetailPatient(
                  title: 'Alamat',
                  name: 'Kampong mulia',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget buttonMedicine() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: CustomeButton(
          text: 'Beli sesuai resep',
          width: double.infinity,
          onPressed: () {},
        ),
      );
    }

    return Scaffold(
      backgroundColor: kPrimeColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              headerMedicine(),
              typeMedicine(),
              patientDetails(),
              docterDetails(),
              const Spacer(),
              buttonMedicine(),
            ],
          ),
        ),
      ),
    );
  }
}
