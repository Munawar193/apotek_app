import 'package:apotek_app/shared/theme.dart';
import 'package:apotek_app/ui/widgets/custome_button.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget text() {
      return Text(
        'List Item',
        style: blackStyle.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      );
    }

    Widget medicineItem() {
      return Container(
        padding:
            const EdgeInsets.only(left: 20, right: 15, top: 15, bottom: 15),
        margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Paracetamol kapl 500 mg',
                    style: textStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rp. 1.500',
                    style: blueStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 68,
              width: 68,
              decoration: BoxDecoration(
                color: kBlueColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  '2 Item',
                  style: whiteStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget addressItem() {
      return Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Alamat',
              style: blackStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: kBlueColor,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/base_location.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lokasi Apotek',
                      style: blueStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Penayong',
                      style: blackStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, top: 2, bottom: 2),
              child: Image.asset(
                'assets/line.png',
                width: 4,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: kBlueColor,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/base_location.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alamat Saya',
                      style: blueStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Blang Bintang',
                      style: blackStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget detailPayment() {
      return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        padding: const EdgeInsets.all(25),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Pamebayaran',
              style: blackStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Detail Pembelian',
                  style: textStyle.copyWith(),
                ),
                Text(
                  '2 item',
                  style: blueStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Harga Satuan',
                  style: textStyle.copyWith(),
                ),
                Text(
                  'Rp. 1.500',
                  style: blueStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ongkir',
                  style: textStyle.copyWith(),
                ),
                Text(
                  'Free',
                  style: blueStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: kBlackColor.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: blueStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Rp. 3000',
                  style: blueStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Row(
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
              child: Image.asset('assets/arrow_left.png'),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: CustomeButton(
              text: 'Bayar',
              onPressed: () {},
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: kPrimeColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(),
              medicineItem(),
              addressItem(),
              detailPayment(),
              button()
            ],
          ),
        ),
      ),
    );
  }
}
