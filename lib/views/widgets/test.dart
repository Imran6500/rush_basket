import 'package:flutter/material.dart';

class OrderTimeline extends StatelessWidget {
  final List<TimelineItem> items = [
    TimelineItem(status: 'Ordered', time: '10 min ago'),
    TimelineItem(status: 'Packed', time: '08 min ago'),
    TimelineItem(status: 'Shipped', time: '06 min ago'),
    TimelineItem(status: 'Delivery', time: '04 min ago'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order Tracking')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Dot and Line
                    Column(
                      children: [
                        // Circle for step
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                        ),
                        // Line after the dot (skip last item)
                        if (index != items.length - 1)
                          Container(
                            width: 2,
                            height: 60,
                            color: Colors.orange,
                          ),
                      ],
                    ),
                    SizedBox(width: 16),
                    // Status and Time
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index].status,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          items[index].time,
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
                // SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
    );
  }
}

class TimelineItem {
  final String status;
  final String time;

  TimelineItem({required this.status, required this.time});
}
