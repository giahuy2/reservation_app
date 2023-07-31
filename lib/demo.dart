import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> dataList = [
    {
      'image': 'https://via.placeholder.com/100',
      'text': 'Item 1',
      'icon': Icons.check,
      'buttonText': 'Button 1',
    },
    {
      'image': 'https://via.placeholder.com/100',
      'text': 'Item 2',
      'icon': Icons.star,
      'buttonText': 'Button 2',
    },
    {
      'image': 'https://via.placeholder.com/100',
      'text': 'Item 3',
      'icon': Icons.info,
      'buttonText': 'Button 3',
    },
    // Thêm dữ liệu cho các cột khác (có thể thay đổi số lượng cột)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Scrollable Columns'),
      ),
      body: CarouselSlider.builder(
        itemCount: dataList.length, // Số lượng cột
        options: CarouselOptions(
          aspectRatio: 148 / 156, // Tỉ lệ khung hình cột
          enlargeCenterPage: true, // Kích thước cột lớn hơn khi ở giữa
          scrollDirection: Axis.horizontal, // Chỉ định scroll theo chiều ngang
        ),
        itemBuilder: (context, index, realIndex) {
          return _buildColumn(dataList[index]);
        },
      ),
    );
  }

  Widget _buildColumn(Map<String, dynamic> data) {
    return Container(
      color: Colors.white, // Màu nền của cột
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(data['image'], width: 100, height: 100), // Ảnh
          Text(data['text']), // Văn bản
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(data['icon']), // Icon
              SizedBox(width: 4),
              Text('Row Text'), // Văn bản trong Row
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(data['buttonText']), // Nút
          ),
        ],
      ),
    );
  }
}
