import 'package:apotek_app/shared/theme.dart';
import 'package:apotek_app/ui/widgets/custome_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style: blackStyle.copyWith(
                fontSize: 18,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/location.png',
                  width: 16,
                  height: 22,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Banda Aceh',
                  style: boldStyle.copyWith(
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget searchBar() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 53,
                margin: const EdgeInsets.only(left: 20, right: 10),
                padding: const EdgeInsets.only(left: 15, right: 10, top: 2.5),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Find the medicine',
                    hintStyle: blackStyle.copyWith(),
                    icon: Image.asset(
                      'assets/search.png',
                      width: 22,
                      height: 22,
                      color: kBlackColor,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              height: 53,
              width: 55,
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: kBlueColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'assets/filter.png',
              ),
            )
          ],
        ),
      );
    }

    Widget card() {
      return Container(
        height: 160,
        margin: const EdgeInsets.only(
          top: 25,
          left: 20,
          right: 20,
        ),
        padding: const EdgeInsets.only(
          left: 15,
          top: 20,
          right: 15,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          color: kBlueColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 38,
                  width: 115,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Consultation',
                      style: boldStyle.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'Pastikan dosis,\nsebelum membeli',
                    style: whiteStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            Image.asset('assets/konsul.png'),
          ],
        ),
      );
    }

    Widget category() {
      return Padding(
        padding: const EdgeInsets.only(left: 30, top: 10),
        child: Text(
          'Category',
          style: blackStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }

    Widget content() {
      return Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 230,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Image.asset(
                      'assets/pembelian.png',
                      height: 75,
                    ),
                    Text(
                      'sebelum melakukan pembelian obat sebaiknya konsultasi ke dokter terlebih dahulu',
                      style: blackStyle.copyWith(
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    CustomeButton(
                      height: 30,
                      width: 75,
                      text: 'Beli',
                      fontsize: 10,
                      border: 30,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                height: 230,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Image.asset(
                      'assets/konsultasi.png',
                      height: 75,
                    ),
                    Text(
                      'Sebelum melakukan pembelian obat diharapkan mengambil resep dari dokter',
                      style: blackStyle.copyWith(
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    CustomeButton(
                      height: 30,
                      width: 75,
                      text: 'Consul',
                      fontsize: 10,
                      border: 30,
                      onPressed: () {
                        Navigator.pushNamed(context, '/consul');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kPrimeColor,
      body: ListView(
        children: [
          header(),
          searchBar(),
          card(),
          category(),
          content(),
        ],
      ),
    );
  }
}
