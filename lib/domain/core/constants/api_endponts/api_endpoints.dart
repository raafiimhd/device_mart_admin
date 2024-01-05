class ApiEndPoints {
  static String baseUrl = 'http://10.0.2.2:3000/api/v1';
  static String signInEndPoint = '/admin/login';
  static String logoutEndPoint = '/logout';
  static String getCategoryEndPoint = '/admin/category/categories';
  static String addCategoryEndPoint = '/admin/category/add-category';
  static String updateCategory = '/admin/category/update-category/{categoryID}';
  static String addCategoryImageApiEndPoint =
      '/admin/category/add-image/{categoryID}';
  static String blockCategoryEndPoint =
      '/admin/category/block-category/{categoryID}';
  static String unblockCategoryEndPoint =
      '/admin/category/unblock-category/{categoryID}';

  static String getProductCategory = '/admin/product/products';
  static String addProductEndPoint = '/admin/product/add-product/{categoryID}';
  static String addProductImageEndPoint =
      '/admin/product/add-images/{productID}';
  static String updateProductEndPoint =
      '/admin/product/update-product/{productID}';
  static String blockProductEndPoint =
      '/admin/product/block-product/{productID}';
  static String unblockProductEndPoint =
      '/admin/product/unblock-product/{productID}';
  static String getCouponEndPoint = '/admin/promotions/all-coupons';
  static String addCouponEndPoint = '/admin/promotions/create-coupon';
  static String updateCouponEndPoint =
      '/admin/promotions/update-coupon/{couponID}';
  static String blockCouponEndPoint =
      '/admin/promotions/block-coupon/{couponID}';
  static String unblockCouponEndPoint =
      '/admin/promotions/unblock-coupon/{couponID}';
  static String getUserEndPoint = '/admin/user-management/view-all-users';
  static String blockUser = '/admin/user-management/block-user/{userID}';
  static String unblockUser = '/admin/user-management/unblock-user/{userID}';
  static String getOrder = '/admin/orders';
  static String orderManagement = '/admin/orders/management';

  static String saleReportEndPoint = '/admin/sales-report';
  static String updateOrderStatusEndPoint =
      '/admin/orders/{orderID}/update-status/{statusID}';
  static String getMangementApiEndPoint =
      '/admin/product/category/{categoryID}';
}
