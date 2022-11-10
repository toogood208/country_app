import '../eng/eng.dart';

class Translations {
  Eng? ara;
  Eng? bre;
  Eng? ces;
  Eng? cym;
  Eng? deu;
  Eng? est;
  Eng? fin;
  Eng? fra;
  Eng? hrv;
  Eng? hun;
  Eng? ita;
  Eng? jpn;
  Eng? kor;
  Eng? nld;
  Eng? per;
  Eng? pol;
  Eng? por;
  Eng? rus;
  Eng? slk;
  Eng? spa;
  Eng? swe;
  Eng? tur;
  Eng? urd;
  Eng? zho;

  Translations(
      {this.ara,
      this.bre,
      this.ces,
      this.cym,
      this.deu,
      this.est,
      this.fin,
      this.fra,
      this.hrv,
      this.hun,
      this.ita,
      this.jpn,
      this.kor,
      this.nld,
      this.per,
      this.pol,
      this.por,
      this.rus,
      this.slk,
      this.spa,
      this.swe,
      this.tur,
      this.urd,
      this.zho});

  Translations.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ? Eng.fromJson(json['ara']) : null;
    bre = json['bre'] != null ? Eng.fromJson(json['bre']) : null;
    ces = json['ces'] != null ? Eng.fromJson(json['ces']) : null;
    cym = json['cym'] != null ? Eng.fromJson(json['cym']) : null;
    deu = json['deu'] != null ? Eng.fromJson(json['deu']) : null;
    est = json['est'] != null ? Eng.fromJson(json['est']) : null;
    fin = json['fin'] != null ? Eng.fromJson(json['fin']) : null;
    fra = json['fra'] != null ? Eng.fromJson(json['fra']) : null;
    hrv = json['hrv'] != null ? Eng.fromJson(json['hrv']) : null;
    hun = json['hun'] != null ? Eng.fromJson(json['hun']) : null;
    ita = json['ita'] != null ? Eng.fromJson(json['ita']) : null;
    jpn = json['jpn'] != null ? Eng.fromJson(json['jpn']) : null;
    kor = json['kor'] != null ? Eng.fromJson(json['kor']) : null;
    nld = json['nld'] != null ? Eng.fromJson(json['nld']) : null;
    per = json['per'] != null ? Eng.fromJson(json['per']) : null;
    pol = json['pol'] != null ? Eng.fromJson(json['pol']) : null;
    por = json['por'] != null ? Eng.fromJson(json['por']) : null;
    rus = json['rus'] != null ? Eng.fromJson(json['rus']) : null;
    slk = json['slk'] != null ? Eng.fromJson(json['slk']) : null;
    spa = json['spa'] != null ? Eng.fromJson(json['spa']) : null;
    swe = json['swe'] != null ? Eng.fromJson(json['swe']) : null;
    tur = json['tur'] != null ? Eng.fromJson(json['tur']) : null;
    urd = json['urd'] != null ? Eng.fromJson(json['urd']) : null;
    zho = json['zho'] != null ? Eng.fromJson(json['zho']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (ara != null) {
      data['ara'] = ara!.toJson();
    }
    if (bre != null) {
      data['bre'] = bre!.toJson();
    }
    if (ces != null) {
      data['ces'] = ces!.toJson();
    }
    if (cym != null) {
      data['cym'] = cym!.toJson();
    }
    if (deu != null) {
      data['deu'] = deu!.toJson();
    }
    if (est != null) {
      data['est'] = est!.toJson();
    }
    if (fin != null) {
      data['fin'] = fin!.toJson();
    }
    if (fra != null) {
      data['fra'] = fra!.toJson();
    }
    if (hrv != null) {
      data['hrv'] = hrv!.toJson();
    }
    if (hun != null) {
      data['hun'] = hun!.toJson();
    }
    if (ita != null) {
      data['ita'] = ita!.toJson();
    }
    if (jpn != null) {
      data['jpn'] = jpn!.toJson();
    }
    if (kor != null) {
      data['kor'] = kor!.toJson();
    }
    if (nld != null) {
      data['nld'] = nld!.toJson();
    }
    if (per != null) {
      data['per'] = per!.toJson();
    }
    if (pol != null) {
      data['pol'] = pol!.toJson();
    }
    if (por != null) {
      data['por'] = por!.toJson();
    }
    if (rus != null) {
      data['rus'] = rus!.toJson();
    }
    if (slk != null) {
      data['slk'] = slk!.toJson();
    }
    if (spa != null) {
      data['spa'] = spa!.toJson();
    }
    if (swe != null) {
      data['swe'] = swe!.toJson();
    }
    if (tur != null) {
      data['tur'] = tur!.toJson();
    }
    if (urd != null) {
      data['urd'] = urd!.toJson();
    }
    if (zho != null) {
      data['zho'] = zho!.toJson();
    }
    return data;
  }
}
