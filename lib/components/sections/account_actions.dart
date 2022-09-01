import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
const AccountActions({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text('Ações da conta', style: Theme.of(context).textTheme.titleMedium,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BoxCard(
                boxContent: _AccountActionsContent(
                  icon: Icon(Icons.account_balance_wallet),
                  text: 'Depositar',
                ),
              ),
              BoxCard(
                boxContent: _AccountActionsContent(
                  icon: Icon(Icons.account_balance_wallet),
                  text: 'Depositar',
                ),
              ),
              BoxCard(
                boxContent: _AccountActionsContent(
                  icon: Icon(Icons.account_balance_wallet),
                  text: 'Depositar',
                ),
              ), 
            ],
          ),
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
final Icon icon;
final String text;
const _AccountActionsContent({ Key? key, required this.icon, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: icon,
        ),
        Text(text),
      ],
    );
  }
}
