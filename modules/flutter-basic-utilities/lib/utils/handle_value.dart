String handleStatusOrder({required int status}) {
  if (status == 0) {
    return "Chờ xác nhận";
  } else if (status == 1) {
    return "Chờ nhận hàng";
  } else if (status == 4) {
    return "Đang gửi hàng";
  } else {
    return "Đã huỷ đơn";
  }
}

String handleEmptyText(String value) {
  if (value.isEmpty) {
    return "Không được để trống";
  }
  return "";
}

String handlePhoneNumber(String value) {
  final errorText = handleEmptyText(value);
  if (errorText.isEmpty) {
    if (value[0] != "0") {
      return "Hãy bắt đầu bằng ký tự 0";
    } else if (value.length == 10) {
      return "";
    } else {
      return "Không đủ 10 ký tự";
    }
  }
  return errorText;
}
