import 'package:flutter/material.dart';
import 'package:satthi/type/acc_type.dart';

class TypeOfAccount extends StatefulWidget {
  const TypeOfAccount({
    super.key,
    required this.pageIndexAt,
    required this.totalPages,
    required this.onAccountTypeSelected, required int PageIndexAt,
  });

  final int pageIndexAt;
  final int totalPages;
  final Function(AccountType) onAccountTypeSelected;

  @override
  State<TypeOfAccount> createState() => _TypeOfAccountState();
}

class _TypeOfAccountState extends State<TypeOfAccount> {
  AccountType? selectedAccount;

  Widget containerType(AccountType accType, String type, String typeDescription,
      double height, double width, BuildContext context, String imagePath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAccount = accType;
        });
        widget.onAccountTypeSelected(accType);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: height,
        width: width,
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: selectedAccount == accType ? Colors.grey[300] : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: selectedAccount == accType ? Colors.grey : Colors.black12,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  type,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const SizedBox(height: 5),
                Text(
                  typeDescription,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            Image.asset(
              imagePath,
              height: height * 0.7,
              width: width * 0.25,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.8,
      width: width * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "${widget.pageIndexAt} / ${widget.totalPages}",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            "Type Of Account",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            "Choose the type of your account, be careful it cannot be changed",
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: ListView(
              children: [
                containerType(
                  AccountType.Docter, // fixed typo
                  "I am a Doctor",
                  "The easiest way to reach your patients face-to-face.",
                  height * 0.12,
                  width,
                  context,
                  "assets/images/doctor.png",
                ),
                const SizedBox(height: 10),
                containerType(
                  AccountType.Patients,
                  "I am a Patient",
                  "Find a doctor online, access medical records, and more.",
                  height * 0.12,
                  width,
                  context,
                  "assets/images/patient.png",
                ),
                const SizedBox(height: 10),
                containerType(
                  AccountType.Hospital,
                  "I am a Hospital",
                  "For hospital administrators.",
                  height * 0.12,
                  width,
                  context,
                  "assets/images/hospital.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
