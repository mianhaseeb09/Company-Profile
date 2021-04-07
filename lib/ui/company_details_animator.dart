import 'package:company_profile/repo/repo.dart';
import 'package:company_profile/ui/company_details_page.dart';
import 'package:flutter/material.dart';
class CompanyDetailsAnimator extends StatefulWidget {
  @override
  _CompanyDetailsAnimatorState createState() => _CompanyDetailsAnimatorState();
}

class _CompanyDetailsAnimatorState extends State<CompanyDetailsAnimator> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration:const Duration(
          milliseconds: 1780
        ),
        vsync: this);
    _controller.forward( );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return new CompanyDetailsPage(company: RepoData.bawp, controller: _controller,);
  }
}
