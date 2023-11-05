extension DateTimeExt on DateTime {
  String _getNamaHari(int hari) {
    switch (hari) {
      case 1:
        return 'Senin';
      case 2:
        return 'Selasa';
      case 3:
        return 'Rabu';
      case 4:
        return 'Kamis';
      case 5:
        return 'Jumat';
      case 6:
        return 'Sabtu';
      case 7:
        return 'Minggu';
      default:
        return '';
    }
  }

  String _getNamaBulan(int bulan) {
    switch (bulan) {
      case 1:
        return 'Januari';
      case 2:
        return 'Februari';
      case 3:
        return 'Maret';
      case 4:
        return 'April';
      case 5:
        return 'Mei';
      case 6:
        return 'Juni';
      case 7:
        return 'Juli';
      case 8:
        return 'Agustus';
      case 9:
        return 'September';
      case 10:
        return 'Oktober';
      case 11:
        return 'November';
      case 12:
        return 'Desember';
      default:
        return 'N/A';
    }
  }

  String toFormattedDateWithDay() {
    final String hari = _getNamaHari(weekday);
    final String bulan = _getNamaBulan(month);
    final int tahun = year;
    return '$hari, $day $bulan $tahun';
  }

  String toFormattedDatetime() {
    final String bulan = _getNamaBulan(month);
    final int tahun = year;
    final String waktu = toFormattedTime();
    return '$bulan $day, $tahun $waktu';
  }

  String toFormattedTime() {
    final String amPm = DateTime.now().hour < 12 ? 'AM' : 'PM';
    final int hour = DateTime.now().hour % 12;
    final int minute = DateTime.now().minute;
    return '$hour:$minute $amPm';
  }
}
