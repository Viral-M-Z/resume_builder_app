class ResumeModel {
  PersonalDetails? personalDetails;
  SocialMediaLinks? socialMediaLinks;
  List<EmploymentHistory>? employmentHistory;
  List<EducationalHistory>? educationalHistory;
  Common? common;
  List<Certifications>? certifications;

  ResumeModel(
      {this.personalDetails,
        this.socialMediaLinks,
        this.employmentHistory,
        this.educationalHistory,
        this.common,
        this.certifications});

  ResumeModel.fromJson(Map<String, dynamic> json) {
    personalDetails = json['personal_details'] != null
        ? new PersonalDetails.fromJson(json['personal_details'])
        : null;
    socialMediaLinks = json['social_media_links'] != null
        ? new SocialMediaLinks.fromJson(json['social_media_links'])
        : null;
    if (json['employment_history'] != null) {
      employmentHistory = <EmploymentHistory>[];
      json['employment_history'].forEach((v) {
        employmentHistory!.add(new EmploymentHistory.fromJson(v));
      });
    }
    if (json['educational_history'] != null) {
      educationalHistory = <EducationalHistory>[];
      json['educational_history'].forEach((v) {
        educationalHistory!.add(new EducationalHistory.fromJson(v));
      });
    }
    common =
    json['common'] != null ? new Common.fromJson(json['common']) : null;
    if (json['certifications'] != null) {
      certifications = <Certifications>[];
      json['certifications'].forEach((v) {
        certifications!.add(new Certifications.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.personalDetails != null) {
      data['personal_details'] = this.personalDetails!.toJson();
    }
    if (this.socialMediaLinks != null) {
      data['social_media_links'] = this.socialMediaLinks!.toJson();
    }
    if (this.employmentHistory != null) {
      data['employment_history'] =
          this.employmentHistory!.map((v) => v.toJson()).toList();
    }
    if (this.educationalHistory != null) {
      data['educational_history'] =
          this.educationalHistory!.map((v) => v.toJson()).toList();
    }
    if (this.common != null) {
      data['common'] = this.common!.toJson();
    }
    if (this.certifications != null) {
      data['certifications'] =
          this.certifications!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PersonalDetails {
  String? firstName;
  String? lastName;
  int? phoneNum;
  String? email;
  String? jobRole;
  String? profile;

  PersonalDetails(
      {this.firstName,
        this.lastName,
        this.phoneNum,
        this.email,
        this.jobRole,
        this.profile});

  PersonalDetails.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    phoneNum = json['phoneNum'];
    email = json['email'];
    jobRole = json['jobRole'];
    profile = json['profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['phoneNum'] = this.phoneNum;
    data['email'] = this.email;
    data['jobRole'] = this.jobRole;
    data['profile'] = this.profile;
    return data;
  }
}

class SocialMediaLinks {
  String? linkedIn;
  String? skype;
  String? github;

  SocialMediaLinks({this.linkedIn, this.skype, this.github});

  SocialMediaLinks.fromJson(Map<String, dynamic> json) {
    linkedIn = json['linkedIn'];
    skype = json['skype'];
    github = json['github'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['linkedIn'] = this.linkedIn;
    data['skype'] = this.skype;
    data['github'] = this.github;
    return data;
  }
}

class EmploymentHistory {
  String? companyName;
  String? timeRange;
  String? workDescription;

  EmploymentHistory({this.companyName, this.timeRange, this.workDescription});

  EmploymentHistory.fromJson(Map<String, dynamic> json) {
    companyName = json['companyName'];
    timeRange = json['timeRange'];
    workDescription = json['workDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['companyName'] = this.companyName;
    data['timeRange'] = this.timeRange;
    data['workDescription'] = this.workDescription;
    return data;
  }
}

class EducationalHistory {
  String? eduCourseName;
  String? eduInstituteName;
  String? eduTimeRange;
  String? eduDescription;
  String? eduScore;

  EducationalHistory(
      {this.eduCourseName,
        this.eduInstituteName,
        this.eduTimeRange,
        this.eduDescription,
        this.eduScore});

  EducationalHistory.fromJson(Map<String, dynamic> json) {
    eduCourseName = json['eduCourseName'];
    eduInstituteName = json['eduInstituteName'];
    eduTimeRange = json['eduTimeRange'];
    eduDescription = json['eduDescription'];
    eduScore = json['eduScore'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eduCourseName'] = this.eduCourseName;
    data['eduInstituteName'] = this.eduInstituteName;
    data['eduTimeRange'] = this.eduTimeRange;
    data['eduDescription'] = this.eduDescription;
    data['eduScore'] = this.eduScore;
    return data;
  }
}

class Common {
  List<String>? skills;
  List<String>? spokenLanguages;

  Common({this.skills, this.spokenLanguages});

  Common.fromJson(Map<String, dynamic> json) {
    skills = json['skills'].cast<String>();
    spokenLanguages = json['spokenLanguages'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['skills'] = this.skills;
    data['spokenLanguages'] = this.spokenLanguages;
    return data;
  }
}

class Certifications {
  String? certiCourseName;
  String? certiInstituteName;
  String? certiLink;
  String? certiScore;

  Certifications(
      {this.certiCourseName,
        this.certiInstituteName,
        this.certiLink,
        this.certiScore});

  Certifications.fromJson(Map<String, dynamic> json) {
    certiCourseName = json['certiCourseName'];
    certiInstituteName = json['certiInstituteName'];
    certiLink = json['certiLink'];
    certiScore = json['certiScore'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['certiCourseName'] = this.certiCourseName;
    data['certiInstituteName'] = this.certiInstituteName;
    data['certiLink'] = this.certiLink;
    data['certiScore'] = this.certiScore;
    return data;
  }
}