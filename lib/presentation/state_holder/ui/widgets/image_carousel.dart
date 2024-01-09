import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/presentation/state_holder/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key, this.height,});

  final double? height;

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  ValueNotifier<int> _curentIndex=ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
          height: widget.height?? 180.0,
          onPageChanged: (index,reason){
            _curentIndex.value=index;
          },
          ),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        ),
      ValueListenableBuilder(
        valueListenable: _curentIndex,
        builder: (context,index,_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [for(int i=0; i<5; i++)
              Container(
                height: 14,
                width: 14,
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: i== index ? AppColors.primaryColor: Colors.white,
                  border: Border.all(
                    color: i==index ? AppColors.primaryColor: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(30)
                ),

              )],
          );
        }
      )
      ],
    );
  }
}