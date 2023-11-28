import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pagination/constants/data.dart';
import 'package:pagination/constants/styles.dart';
import '../../application/pagination/bloc/pagination_bloc.dart';
import '../flag_and_country_info/FlagAndCountryInfo.dart';

class PaginationScreen extends StatefulWidget {
  @override
  _PaginationScreenState createState() => _PaginationScreenState();
}

class _PaginationScreenState extends State<PaginationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    
    
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    final paginationBloc = BlocProvider.of<PaginationBloc>(context);
    paginationBloc.add(PaginationInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    final paginationBloc = BlocProvider.of<PaginationBloc>(context);

    return BlocBuilder<PaginationBloc, PaginationState>(
      builder: (context, state) {
        // ChangePaginationPageState.

        if (state is ChangePaginationPageState) {
          int currentIndex = state.newIndex;

          return Scaffold(
            appBar: AppBar(
              title: Text('Pagination Screen'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Opacity(
                        opacity: _animation.value,
                        child: SvgPicture.network(
                          svgImageUrls[currentIndex],
                          width: 200.0,
                          height: 200.0,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          _controller.reset();
                          _controller.forward();
                          paginationBloc.add(
                              ChangePaginationBackwardButtonClickedEvent());
                        },
                      ),
                      SizedBox(width: 20.0),
                      IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: () {
                          _controller.reset();
                          _controller.forward();
                          paginationBloc
                              .add(ChangePaginationForwardButtonClickedEvent());
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                      style: mainOutlineButtonStyle,
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => FlagAndCountryInfo()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Country Info',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          // Handle other states or provide a default widget
          return Placeholder(); // Your default or loading widget
        }
      },
    );
    // );
    // },
    // );
  }
}
