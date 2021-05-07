import 'package:flutter/material.dart';

class Book {
  String title;
  String owner;
  DateTime regDate;
  int like;
  List<Word> words;

  Book({this.title, this.owner, this.regDate, this.like, this.words});

  Book.fromJson(Map<String, dynamic> json) {
    title = json['TITLE'];
    owner = json['OWNER'];
    owner = json['REGDATE'];
    owner = json['LIKE'];

    if (json['WORDS'] != null) {
      words = new List<Word>();
      json['WORDS'].forEach((v) {
        words.add(new Word.fromJson(v));
      });
    }
  }
}

class Word {
  String sound;
  String mean;

  Word({this.sound, this.mean});

  Word.fromJson(Map<String, dynamic> json) {
    sound = json['SOUND'];
    mean = json['MEAN'];
  }

  // Map<String, dynamic> Word.toJson(){
  //   final Map<String, dynamic> data = new Map();
  //   data['SOUND'] = sound;
  //   data['MEAN'] = mean;
  // }
}
