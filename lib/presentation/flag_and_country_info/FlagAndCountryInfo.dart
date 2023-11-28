

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pagination/application/country_info/bloc/counter_info_bloc.dart';
import 'package:pagination/application/country_info_provider/country_info_provider.dart';
import 'package:provider/provider.dart';

class FlagAndCountryInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   BlocProvider.of<CounterInfoBloc>(context)
    //       .add(const CounterInfoEvent.getCountryInfo());
    // });
    CountryProvider userProvider = Provider.of<CountryProvider>(context);
    userProvider.getUserData();
    return Scaffold(
        appBar: AppBar(
          title: Text('Country List'),
        ),
        body:
            // BlocBuilder<CounterInfoBloc, CounterInfoState>(
            //   builder: (context, state) {
            //  if (state.isLoading) {
            //     return Center(child: CircularProgressIndicator());
            //   } else if (state.isError) {
            //     return Center(child: Text('Some Error Occurd'));
            //   }
            // return
            ListView.builder(
                itemCount: userProvider.countryInfo.length,
                itemBuilder: (context, index) {
                  final newsItem = userProvider.countryInfo[index];
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: ListTile(
                      leading: SizedBox(
                         width: 60,
                        child: SvgPicture.network(
                          newsItem.flagSvgUrl,
                          width: 40,
                          height: 40,
                        ),
                      ),
                      title: Text(
                        newsItem.commonName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(newsItem.officialName),
                      onTap: () {},
                    ),
                  );
                }));
    // },
    // ),
    // );
  }
}
