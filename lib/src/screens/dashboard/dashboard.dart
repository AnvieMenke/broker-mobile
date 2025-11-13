import 'package:broker_mobile/components/charts/pie_chart.dart';
import 'package:broker_mobile/service/position_service.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:broker_mobile/service/balance_service.dart';
import 'package:broker_mobile/service/profile_service.dart';
import 'package:broker_mobile/components/charts/line_chart.dart';
import '../../../proto/reportpb/balance.pb.dart';
import '../../../service/convert_service.dart';
import '../../../session/session.dart';
import '../../../utils/theme/custom_theme.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Future<List<Balance>>? _futureBalances;
  Future<List<Map<String, dynamic>>>? _futureChartData;
  Future<List<Map<String, dynamic>>>? _futureAssetChartData;
  String? systemDate;

  Decimal totalBalance = Decimal.zero;
  Decimal totalTdLongMarketValue = Decimal.zero;
  Decimal totalSdShortMarketValue = Decimal.zero;
  Decimal totalUnrealizedPlValue = Decimal.zero;
  String unrealizedPlPercent = "";
  String accountValuePercent = "";
  Decimal totalYtdPl = Decimal.zero;
  String ytdunrealizedPlPercent = "";
  Decimal totalPositionCost = Decimal.zero;

  final String defaultLogo =
      '''<svg version="1.1" xmlns="http://www.w3.org/2000/svg" desc="Created with imagetracer.js version 1.2.6"  viewBox="0 0 351 179" preserveAspectRatio="xMidYMid meet" style="width: 100px; height: auto;"><path fill="rgb(0,0,0)" stroke="rgb(0,0,0)" stroke-width="1" opacity="0" d="M 0 0 L 350.5 0 L 351 2 L 274.5 2 Q 273 4.5 267.5 3 Q 245.2 6.7 233 20.5 Q 225.9 28.4 223 40.5 Q 224.2 45.3 222 46.5 L 222 68.5 Q 224.6 82.9 233.5 91 L 238.5 95 L 257.5 103 L 302.5 112 Q 309.3 114.3 313 119.5 L 315 129.5 L 313 136.5 L 307.5 142 L 292.5 146 L 239 146 L 200 31 Q 197 29.8 198 33.5 L 178 88.5 L 178 92.5 L 208 179 L 193.5 179 L 192 177.5 L 178.5 144 L 144.5 144 L 144 141.5 L 185 25.5 L 192 2 L 150.5 2 L 150 4.5 L 122 84.5 L 118.5 91 L 111.5 85 L 100.5 80 L 85.5 76 L 51.5 70 Q 43.5 67.5 39 61.5 L 38 59.5 L 38 47.5 L 42.5 41 L 50.5 37 L 61.5 36 L 62.5 35 L 137 34.5 L 128 33.5 L 139 2 L 52.5 2 Q 51 4.5 45.5 3 Q 31.7 5.7 21.5 12 L 11 21.5 Q -2.2 36.8 1 68.5 Q 4.1 85.9 16.5 94 L 27.5 100 L 40.5 104 L 66.5 108 L 81.5 112 Q 88.3 114.3 92 119.5 L 94 127.5 Q 91.7 128.8 93 133.5 L 87.5 141 L 81.5 144 L 70.5 146 L 1 146 L 0.5 179 L 0 0 Z " /><path fill="rgb(0,0,0)" stroke="rgb(0,0,0)" stroke-width="1" opacity="0" d="M 286.5 35 L 318.5 36 L 319.5 35 L 351 35 L 350.5 112 Q 347.8 94.7 335.5 87 L 326.5 82 L 314.5 78 L 289.5 74 L 269.5 69 L 260 61.5 Q 257.8 56.7 259 48.5 L 263.5 41 L 271.5 37 L 285.5 36 L 286.5 35 Z " /><path fill="rgb(0,0,0)" stroke="rgb(0,0,0)" stroke-width="1" opacity="0" d="M 350.5 137 L 351 179 L 302 178.5 Q 329.3 175.8 342 158.5 Q 348.7 150.2 350.5 137 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 150 2 L 191.5 2 L 192 4.5 L 191 4.5 L 190.5 3 L 151 3 L 149.5 7 L 149 5.5 L 150 2 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 145.5 17 L 146 18.5 L 143.5 24 L 143 22.5 L 145.5 17 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 186.5 18 L 187 19.5 L 183.5 28 L 183 26.5 L 186.5 18 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 139.5 34 L 140 35.5 L 137.5 41 L 137 39.5 L 139.5 34 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 177.5 44 L 178 45.5 L 175.5 51 L 175 49.5 L 177.5 44 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 133.5 51 L 134 52.5 L 131.5 58 L 131 56.5 L 133.5 51 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 127.5 68 L 128 69.5 L 125.5 75 L 125 73.5 L 127.5 68 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 168.5 70 L 169 71.5 L 166.5 77 L 166 75.5 L 168.5 70 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 121.5 85 L 122 86.5 L 119.5 92 L 119 90.5 L 121.5 85 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 160.5 93 L 161 94.5 L 157.5 103 L 157 101.5 L 160.5 93 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 151.5 119 L 152 120.5 L 148.5 129 L 148 127.5 L 151.5 119 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 180.5 148 L 182 151.5 L 181 151.5 L 180.5 148 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 182.5 153 L 184 156.5 L 183 156.5 L 182.5 153 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 184.5 158 L 186 161.5 L 185 161.5 L 184.5 158 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 186.5 163 L 188 166.5 L 187 166.5 L 186.5 163 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 188.5 168 L 190 171.5 L 189 171.5 L 188.5 168 Z " /><path fill="rgb(178,178,178)" stroke="rgb(178,178,178)" stroke-width="1" opacity="0.5333333333333333" d="M 191.5 176 L 193 178.5 L 191 177.5 L 191.5 176 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 58.5 2 L 62 2.5 L 58.5 3 L 58.5 2 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 281.5 2 L 351 2.5 L 281.5 3 L 281.5 2 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 18.5 15 L 17.5 17 L 18.5 15 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 238.5 16 L 233.5 22 L 238.5 16 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 12.5 21 L 11.5 23 L 12.5 21 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 199.5 32 L 198.5 34 L 199.5 32 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 1.5 49 L 2 52.5 L 1 52.5 L 1.5 49 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 222.5 51 L 223 54.5 L 222 54.5 L 222.5 51 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 222.5 60 L 223 63.5 L 222 63.5 L 222.5 60 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 1.5 62 L 2 64.5 L 1 64.5 L 1.5 62 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 334.5 87 L 335.5 89 L 334.5 87 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 232.5 88 L 233.5 90 L 232.5 88 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 350.5 115 L 351 117.5 L 350 117.5 L 350.5 115 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 350.5 130 L 351 132.5 L 350 132.5 L 350.5 130 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 1.5 146 L 67 146.5 L 1.5 147 L 1.5 146 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 239.5 146 L 291 146.5 L 239.5 147 L 239.5 146 Z " /><path fill="rgb(47,47,47)" stroke="rgb(47,47,47)" stroke-width="1" opacity="0.8784313725490196" d="M 295.5 178 L 298 178.5 L 295.5 179 L 295.5 178 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 52.5 2 L 58 2.5 L 52.5 3 L 52.5 2 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 274.5 2 L 281 2.5 L 274.5 3 L 274.5 2 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 45.5 3 L 49 3.5 L 45.5 4 L 45.5 3 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 267.5 3 L 271 3.5 L 267.5 4 L 267.5 3 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 262.5 4 L 265 4.5 L 262.5 5 L 262.5 4 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 258.5 5 L 261 5.5 L 258.5 6 L 258.5 5 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 250.5 8 L 252 8.5 L 248.5 10 L 248.5 9 L 250.5 8 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 246.5 10 L 245.5 12 L 243.5 13 L 244.5 11 L 246.5 10 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 23.5 11 L 22.5 13 L 19.5 15 L 21.5 12 L 23.5 11 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 241.5 13 L 239.5 16 L 241.5 13 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 17.5 15 L 11.5 22 L 17.5 15 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 237.5 16 L 233.5 21 L 237.5 16 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 232.5 22 L 230.5 25 L 232.5 22 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 10.5 23 L 9.5 25 L 10.5 23 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 8.5 26 L 8 27.5 L 5.5 33 L 5 31.5 L 8.5 26 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 229.5 26 L 229 27.5 L 226.5 33 L 226 31.5 L 229.5 26 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 128.5 31 L 129 32.5 L 128.5 34 L 137 34.5 L 127 35 L 128.5 31 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 198 31 L 200 31.5 L 198 32.5 L 198 31 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 56.5 35 L 62 35.5 L 56.5 36 L 56.5 35 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 279.5 35 L 286 35.5 L 279.5 36 L 279.5 35 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 296.5 35 L 319 35.5 L 296.5 36 L 296.5 35 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 3.5 36 L 4 38.5 L 3 38.5 L 3.5 36 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 51.5 36 L 54 36.5 L 51.5 37 L 51.5 36 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 273.5 36 L 276 36.5 L 273.5 37 L 273.5 36 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 269.5 37 L 271 37.5 L 267.5 39 L 267.5 38 L 269.5 37 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 44.5 39 L 43.5 41 L 40.5 43 L 42.5 40 L 44.5 39 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 265.5 39 L 264.5 41 L 265.5 39 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 2.5 40 L 3 42.5 L 2 42.5 L 2.5 40 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 223.5 40 L 224 42.5 L 223 42.5 L 223.5 40 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 261.5 43 L 260.5 45 L 261.5 43 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 1.5 45 L 2 48.5 L 1 48.5 L 1.5 45 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 222.5 46 L 223 50.5 L 222 50.5 L 222.5 46 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 37.5 49 L 38 57.5 L 37 57.5 L 37.5 49 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 258.5 49 L 259 57.5 L 258 57.5 L 258.5 49 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 207.5 54 L 209 57.5 L 208 57.5 L 207.5 54 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 39.5 62 L 42.5 66 L 39.5 62 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 260.5 62 L 267 67.5 L 265.5 67 L 260.5 62 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 222.5 64 L 223 68.5 L 222 68.5 L 222.5 64 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 1.5 65 L 2 68.5 L 1 68.5 L 1.5 65 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 44.5 66 L 45.5 68 L 44.5 66 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 47.5 68 L 51 69.5 L 49.5 70 L 47.5 68 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 273.5 70 L 276 70.5 L 273.5 71 L 273.5 70 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 2.5 71 L 3 73.5 L 2 73.5 L 2.5 71 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 56.5 71 L 59 71.5 L 56.5 72 L 56.5 71 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 277.5 71 L 280 71.5 L 277.5 72 L 277.5 71 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 61.5 72 L 64 72.5 L 61.5 73 L 61.5 72 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 281.5 72 L 284 72.5 L 281.5 73 L 281.5 72 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 66.5 73 L 69 73.5 L 66.5 74 L 66.5 73 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 286.5 73 L 289 73.5 L 286.5 74 L 286.5 73 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 71.5 74 L 75 74.5 L 71.5 75 L 71.5 74 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 292.5 74 L 295 74.5 L 292.5 75 L 292.5 74 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 77.5 75 L 81 75.5 L 77.5 76 L 77.5 75 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 298.5 75 L 301 75.5 L 298.5 76 L 298.5 75 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 83.5 76 L 86 76.5 L 83.5 77 L 83.5 76 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 303.5 76 L 306 76.5 L 303.5 77 L 303.5 76 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 87.5 77 L 90 77.5 L 87.5 78 L 87.5 77 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 308.5 77 L 311 77.5 L 308.5 78 L 308.5 77 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 312.5 78 L 315 78.5 L 312.5 79 L 312.5 78 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 104.5 82 L 108 83.5 L 106.5 84 L 104.5 82 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 325.5 82 L 334 86.5 L 332.5 86 L 325.5 83 L 325.5 82 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 7.5 84 L 16.5 94 L 7.5 84 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 109.5 84 L 113 86.5 L 111.5 86 L 109.5 84 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 228.5 84 L 231.5 88 L 228.5 84 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 114.5 87 L 118.5 92 L 114.5 87 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 335.5 87 L 346 98.5 L 344 97.5 L 335.5 87 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 219.5 89 L 221 92.5 L 220 92.5 L 219.5 89 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 232.5 89 L 241 95.5 L 239.5 95 Q 233.6 92.7 232.5 89 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 18.5 94 L 19.5 96 L 18.5 94 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 25.5 98 L 29 99.5 L 27.5 100 L 25.5 98 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 40.5 103 L 43 103.5 L 40.5 104 L 40.5 103 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 261.5 103 L 264 103.5 L 261.5 104 L 261.5 103 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 45.5 104 L 48 104.5 L 45.5 105 L 45.5 104 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 265.5 104 L 268 104.5 L 265.5 105 L 265.5 104 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 50.5 105 L 53 105.5 L 50.5 106 L 50.5 105 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 270.5 105 L 273 105.5 L 270.5 106 L 270.5 105 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 55.5 106 L 59 106.5 L 55.5 107 L 55.5 106 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 276.5 106 L 279 106.5 L 276.5 107 L 276.5 106 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 61.5 107 L 65 107.5 L 61.5 108 L 61.5 107 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 282.5 107 L 285 107.5 L 282.5 108 L 282.5 107 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 349.5 107 L 350 109.5 L 349 109.5 L 349.5 107 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 67.5 108 L 70 108.5 L 67.5 109 L 67.5 108 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 287.5 108 L 290 108.5 L 287.5 109 L 287.5 108 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 71.5 109 L 74 109.5 L 71.5 110 L 71.5 109 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 292.5 109 L 295 109.5 L 292.5 110 L 292.5 109 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 296.5 110 L 299 110.5 L 296.5 111 L 296.5 110 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 82.5 112 L 87 114.5 L 85.5 114 Q 81.8 113.8 82.5 112 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 303.5 112 L 308 114.5 L 306.5 114 Q 302.7 113.8 303.5 112 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 350.5 112 L 351 114.5 L 350 114.5 L 350.5 112 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 88.5 115 L 91.5 119 L 88.5 115 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 309.5 115 L 312.5 119 L 309.5 115 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 314.5 122 L 315 125.5 L 314 125.5 L 314.5 122 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 93.5 123 L 94 126.5 L 93 126.5 L 93.5 123 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 231.5 124 L 233 127.5 L 232 127.5 L 231.5 124 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 93.5 128 L 94 132.5 L 93 132.5 L 93.5 128 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 314.5 130 L 315 132.5 L 314 132.5 L 314.5 130 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 350.5 133 L 351 136.5 L 350 136.5 L 350.5 133 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 92.5 134 L 93 135.5 L 91 136.5 L 92.5 134 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 312.5 137 L 308.5 142 L 312.5 137 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 90.5 138 L 88.5 141 L 90.5 138 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 349.5 139 L 350 141.5 L 349 141.5 L 349.5 139 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 86.5 141 L 85.5 143 L 82.5 144 L 82.5 143 L 86.5 141 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 71.5 145 L 76 145.5 L 71.5 146 L 71.5 145 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 293.5 145 L 298 145.5 L 293.5 146 L 293.5 145 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 343.5 155 L 342.5 157 L 343.5 155 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 341.5 158 L 332.5 168 L 327.5 171 L 328.5 169 Q 337 165.5 341.5 158 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 322.5 172 L 324 172.5 L 320.5 174 L 320.5 173 L 322.5 172 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 310.5 176 L 313 176.5 L 310.5 177 L 310.5 176 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 305.5 177 L 308 177.5 L 305.5 178 L 305.5 177 Z " /><path fill="rgb(50,50,50)" stroke="rgb(50,50,50)" stroke-width="1" opacity="0.45098039215686275" d="M 298.5 178 L 302 178.5 L 298.5 179 L 298.5 178 Z " /><path fill="rgb(179,179,179)" stroke="rgb(179,179,179)" stroke-width="1" opacity="1" d="M 151 3 L 190.5 3 L 191 5.5 L 143 144 L 178.5 144 L 179 146.5 L 192 178.5 L 89.5 179 L 90 177.5 L 151 3 Z " /><path fill="rgb(49,49,49)" stroke="rgb(49,49,49)" stroke-width="1" opacity="1" d="M 62.5 2 L 137.5 2 L 138 3.5 L 127 35 L 55.5 35 L 43.5 39 L 39 43.5 Q 35.6 48.6 37 58.5 Q 38.4 64.6 43.5 67 L 55.5 72 L 90.5 78 L 103.5 82 Q 113.2 85.3 119 92.5 L 89 179 L 1 179 L 1 147 L 66.5 147 L 67.5 146 L 76.5 146 L 87.5 142 L 92 137.5 Q 95.8 132.8 94 122.5 Q 92.6 116.4 87.5 114 L 78.5 110 L 44.5 104 L 27.5 99 Q 15.3 94.3 8 84.5 L 2 69.5 L 1 53.5 L 5 33.5 Q 9.3 23.8 16.5 17 Q 26.2 8.7 40.5 5 L 50.5 3 L 61.5 3 L 62.5 2 Z " /><path fill="rgb(49,49,49)" stroke="rgb(49,49,49)" stroke-width="1" opacity="1" d="M 272.5 3 L 351 3 L 351 35 L 277.5 35 L 266.5 38 L 261 42.5 Q 256.3 47.3 258 58.5 Q 259.6 65.4 265.5 68 L 280.5 73 L 301.5 76 L 321.5 81 Q 335.2 85.3 343 95.5 Q 348.1 101.9 350 111.5 L 351 129.5 L 348 145.5 Q 343.4 158.4 333.5 166 L 321.5 173 L 308.5 177 L 295.5 178 L 294.5 179 L 209 179 L 182 101.5 L 179 92.5 L 179 88.5 L 197 36.5 L 199.5 33 L 237 143.5 L 239.5 147 L 290.5 147 Q 292.3 144.3 298.5 146 Q 309.4 144.4 314 136.5 Q 316.5 131 315 121.5 L 308.5 114 L 299.5 110 L 280.5 106 L 269.5 105 L 248.5 99 Q 236.3 94.3 229 84.5 L 224 73.5 L 222 55.5 L 223 54.5 L 224 40.5 L 227 31.5 Q 232.1 20.6 241.5 14 L 252.5 8 L 272.5 3 Z " /></svg>''';

  final String newTitle = (sessionManager.brokerName?.isNotEmpty == true
      ? sessionManager.brokerName!
      : (sessionManager.user?.correspondent.isNotEmpty == true
          ? sessionManager.user!.correspondent
          : ''));

  late final String appLogo = (sessionManager.logo?.isNotEmpty == true
      ? sessionManager.logo!
      : defaultLogo);

  final Map<String, dynamic> queryData = {"dateType": "Trade and Settle"};
  String? selectedRange;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  Future<void> _initializeData() async {
    final profileService = ProfileService();
    final profileSystemDate = await profileService.getSystemDate();

    queryData['fromDate'] = profileSystemDate;
    queryData['toDate'] = profileSystemDate;

    systemDate = FormatUtils.formatDateStringtoIcu(profileSystemDate);
    setState(() {
      selectedRange = "1M";
      _futureBalances = _fetchBalancesAndTotals();
      _futureChartData = _fetchChartValues();
      _futureAssetChartData = _fetchAssetChartValues();
    });
  }

  Map<String, dynamic> _getPeriodParams(String? period) {
    if (period == null || period == "All Time" || period.isEmpty) {
      return {"periodRange": 0, "periodType": ""};
    }

    final type = period.endsWith("Y") ? "YEAR" : "MONTH";
    final range = int.tryParse(period.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;

    return {"periodRange": range, "periodType": type};
  }

  Future<List<Balance>> _fetchBalancesAndTotals() async {
    final balanceService = BalanceService();

    final resp = await balanceService.listBalance(
      queryData,
      {'pageNo': 0, 'rowsPerPage': 0},
    );
    try {
      totalBalance = Decimal.parse(resp.summary.tdCashBalance.toString());
      totalTdLongMarketValue =
          Decimal.parse(resp.summary.tdLongMarketValue.toString());
      totalSdShortMarketValue =
          Decimal.parse(resp.summary.sdShortMarketValue.toString());
      totalUnrealizedPlValue =
          Decimal.parse(resp.summary.unrealizedPlValue.toString());
      unrealizedPlPercent = resp.summary.unrealizedPlPercent.toString();
      accountValuePercent = resp.summary.accountValuePercent.toString();
      totalYtdPl = Decimal.parse(resp.summary.ytdPlValue.toString());
      ytdunrealizedPlPercent = resp.summary.ytdPlPercent.toString();
      totalPositionCost = Decimal.parse(resp.summary.positionCost.toString());
    } catch (_) {
      totalBalance = Decimal.zero;
      totalTdLongMarketValue = Decimal.zero;
      totalSdShortMarketValue = Decimal.zero;
      totalYtdPl = Decimal.zero;
      totalUnrealizedPlValue = Decimal.zero;
      unrealizedPlPercent = "";
      accountValuePercent = "";
      ytdunrealizedPlPercent = "";
      totalPositionCost = Decimal.zero;
    }
    return resp.balances;
  }

  Future<List<Map<String, dynamic>>> _fetchChartValues() async {
    if (selectedRange == null) return [];

    final balanceService = BalanceService();
    final params = _getPeriodParams(selectedRange);

    try {
      final resp = await balanceService.listDashboardBalance({...params});

      return resp.dashboardBalances.map((item) {
        final date = item.date;
        final formattedDate =
            "${FormatUtils.formatMonthAbbreviation(date.month)} ${date.day} ${date.year}";
        final yValue = double.tryParse(item.tdCashBalance.toString()) ?? 0.0;

        return {"x": formattedDate, "y": yValue};
      }).toList();
    } catch (_) {
      return [];
    }
  }

  Future<List<Map<String, dynamic>>> _fetchAssetChartValues() async {
    final positionService = PositionService();

    try {
      final resp = await positionService.getPositionAccountAllocation("Asset");
      return resp.positionAccountAllocations.map((item) {
        return {
          "title": (item.description.isNotEmpty) ? item.description : item.code,
          "percentValue": Decimal.tryParse(item.percentage) ?? Decimal.zero,
          "formattedValue": FormatUtils.formatMoneySuffix(
              ConvertService.safeDouble(item.value),
              showDecimal: true)
        };
      }).toList();
    } catch (e) {
      debugPrint("Error fetching asset chart values: $e");
      return [];
    }
  }

  Future<void> _refreshData() async {
    setState(() {
      _futureBalances = _fetchBalancesAndTotals();
      _futureChartData = _fetchChartValues();
      _futureAssetChartData = _fetchAssetChartValues();
    });
  }

  Widget _buildSummaryCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Account Summary",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Divider(height: 20),
            Text(
              FormatUtils.formatCurrency(totalBalance),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${totalUnrealizedPlValue > Decimal.zero ? '+' : ''}${FormatUtils.formatCurrency(totalUnrealizedPlValue)}",
                      style: TextStyle(
                        color: totalUnrealizedPlValue > Decimal.zero
                            ? Colors.greenAccent[400]
                            : totalUnrealizedPlValue < Decimal.zero
                                ? Colors.redAccent
                                : Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: ConvertService.safeDouble(unrealizedPlPercent) > 0
                        ? Colors.greenAccent[700]
                        : ConvertService.safeDouble(unrealizedPlPercent) < 0
                            ? Colors.redAccent[700]
                            : Colors.grey[700],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      FormatUtils.formatPercentage(unrealizedPlPercent),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildMarketValue(
                  icon: FontAwesomeIcons.arrowTrendUp,
                  color: Colors.green,
                  label: "Long Market Value",
                  value: totalTdLongMarketValue,
                ),
                _buildMarketValue(
                  icon: FontAwesomeIcons.arrowTrendDown,
                  color: Colors.red,
                  label: "Short Market Value",
                  value: totalSdShortMarketValue,
                  alignRight: true,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: ConvertService.safeDouble(accountValuePercent) < 0
                    ? const Color(0xFF3B0000)
                    : ConvertService.safeDouble(accountValuePercent) > 0
                        ? const Color(0xFF002B00)
                        : const Color(0xFF2E2E2E),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                FormatUtils.formatPercentage(accountValuePercent),
                style: TextStyle(
                  color: ConvertService.safeDouble(accountValuePercent) < 0
                      ? Colors.redAccent
                      : ConvertService.safeDouble(accountValuePercent) > 0
                          ? Colors.greenAccent
                          : Colors.white70,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Position Cost ${FormatUtils.formatCurrency(totalPositionCost)}",
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "YTD Profit ${FormatUtils.formatCurrency(totalYtdPl)} (${FormatUtils.formatPercentage(ytdunrealizedPlPercent)})",
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMarketValue({
    required IconData icon,
    required Color color,
    required String label,
    required Decimal value,
    bool alignRight = false,
  }) {
    return Row(
      children: [
        Icon(icon, size: 14, color: color),
        const SizedBox(width: 4),
        Text(
          "$label\n${FormatUtils.formatCurrency(value)}",
          textAlign: alignRight ? TextAlign.right : TextAlign.left,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildPeriodRangeSelector() {
    final ranges = [
      "All Time",
      "1M",
      "3M",
      "6M",
      "9M",
      "1Y",
      "3Y",
      "5Y",
      "7Y",
      "9Y"
    ];

    return Column(
      children: [
        const Text(
          "Account Balance Overview",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 24),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 6,
          runSpacing: 6,
          children: ranges.map((range) {
            final isSelected = range == selectedRange;
            return GestureDetector(
              onTap: () {
                if (!isSelected) {
                  setState(() {
                    selectedRange = range;
                    _futureChartData = _fetchChartValues();
                  });
                }
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.blue : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  range,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: isSelected
                        ? Colors.white
                        : Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.color
                            ?.withValues(alpha: 0.8),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildLineChart() {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: _futureChartData,
      builder: (context, snapshot) {
        if (_futureChartData == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return AppTheme.buildLoadingIndicator();
        }
        if (snapshot.hasError) {
          return const Center(child: Text("Error loading chart"));
        }

        final data = snapshot.data ?? [];
        if (data.isEmpty) {
          return const Center(child: Text("No chart data found"));
        }

        return LineChartWidget(
          data: data,
          xValueKey: 'x',
          yValueKey: 'y',
          yLabelFormatter: FormatUtils.formatMoneySuffix,
          xLabelFormatter: (v) => v,
        );
      },
    );
  }

  Widget _buildAssetChart() {
    return Column(
      children: [
        const Text(
          "Asset Allocation",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        if (systemDate != null)
          Text(
            "As of ${systemDate!}",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[600],
            ),
          ),
        const SizedBox(height: 24),
        FutureBuilder<List<Map<String, dynamic>>>(
          future: _futureAssetChartData,
          builder: (context, snapshot) {
            if (_futureAssetChartData == null ||
                snapshot.connectionState == ConnectionState.waiting) {
              return AppTheme.buildLoadingIndicator();
            }

            if (snapshot.hasError) {
              return const Center(child: Text("Error loading chart"));
            }

            final data = snapshot.data ?? [];

            if (data.isEmpty) {
              return const Center(child: Text("No chart data found"));
            }

            return FlPieChart(data: data);
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SvgPicture.string(
              appLogo,
              height: 20,
              colorFilter: ColorFilter.mode(
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 8),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                newTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/misc');
            },
          )
        ],
      ),
      body: SafeArea(
        child: _futureBalances == null
            ? AppTheme.buildLoadingIndicator()
            : FutureBuilder<List<Balance>>(
                future: _futureBalances,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return AppTheme.buildLoadingIndicator();
                  }
                  if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  }

                  return RefreshIndicator(
                    color: const Color(0xFF1565C0),
                    onRefresh: _refreshData,
                    child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(16),
                      children: [
                        _buildSummaryCard(),
                        const SizedBox(height: 20),
                        _buildPeriodRangeSelector(),
                        const SizedBox(height: 12),
                        _buildLineChart(),
                        const SizedBox(height: 24),
                        _buildAssetChart()
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
