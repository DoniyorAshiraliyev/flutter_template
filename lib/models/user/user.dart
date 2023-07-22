import "package:freezed_annotation/freezed_annotation.dart";
part "user.freezed.dart";
part "user.g.dart";

@freezed

class User with _$User{
  const factory User({
required String login,
required int id,
required String node_id,
required String avatar_url,
required String gravatar_id,
required String url,
required String html_url,
required String followers_url,
required String following_url,
required String gists_url,
required String starred_url,
required String subscriptions_url,
required String organizations_url,
required String repos_url,
required String events_url,
required String received_events_url,
required String type,
required bool site_admin,
required String name,
required String company,
required String blog,
required String location,
required String? email,
required String? hireable,
required String bio,
required String? twitter_username,
required int public_repos,
required int public_gists,
required int followers,
required int following,
required String created_at,
required String updated_at,
    
  })=_User;

  factory User.fromJson(Map<String,Object?> json)=>_$UserFromJson(json);
}

final json={
  "login": "DoniyorAshiraliyev",
  "id": 110379741,
  "node_id": "U_kgDOBpRC3Q",
  "avatar_url": "https://avatars.githubusercontent.com/u/110379741?v=4",
  "gravatar_id": "",
  "url": "https://api.github.com/users/DoniyorAshiraliyev",
  "html_url": "https://github.com/DoniyorAshiraliyev",
  "followers_url": "https://api.github.com/users/DoniyorAshiraliyev/followers",
  "following_url": "https://api.github.com/users/DoniyorAshiraliyev/following{/other_user}",
  "gists_url": "https://api.github.com/users/DoniyorAshiraliyev/gists{/gist_id}",
  "starred_url": "https://api.github.com/users/DoniyorAshiraliyev/starred{/owner}{/repo}",
  "subscriptions_url": "https://api.github.com/users/DoniyorAshiraliyev/subscriptions",
  "organizations_url": "https://api.github.com/users/DoniyorAshiraliyev/orgs",
  "repos_url": "https://api.github.com/users/DoniyorAshiraliyev/repos",
  "events_url": "https://api.github.com/users/DoniyorAshiraliyev/events{/privacy}",
  "received_events_url": "https://api.github.com/users/DoniyorAshiraliyev/received_events",
  "type": "User",
  "site_admin": false,
  "name": "Doniyor",
  "company": "PDP Academy",
  "blog": "",
  "location": "Tashkent, Uzbekistan",
  "email": null,
  "hireable": null,
  "bio": "Keep on keeping on!",
  "twitter_username": null,
  "public_repos": 12,
  "public_gists": 0,
  "followers": 3,
  "following": 27,
  "created_at": "2022-08-01T07:33:57Z",
  "updated_at": "2023-07-18T06:40:38Z"
};
