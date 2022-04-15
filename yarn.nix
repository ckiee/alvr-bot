{ fetchurl, fetchgit, linkFarm, runCommand, gnutar }: rec {
  offline_cache = linkFarm "offline" packages;
  packages = [
    {
      name = "_discordjs_builders___builders_0.11.0.tgz";
      path = fetchurl {
        name = "_discordjs_builders___builders_0.11.0.tgz";
        url  = "https://registry.yarnpkg.com/@discordjs/builders/-/builders-0.11.0.tgz";
        sha512 = "ZTB8yJdJKrKlq44dpWkNUrAtEJEq0gqpb7ASdv4vmq6/mZal5kOv312hQ56I/vxwMre+VIkoHquNUAfnTbiYtg==";
      };
    }
    {
      name = "_discordjs_collection___collection_0.4.0.tgz";
      path = fetchurl {
        name = "_discordjs_collection___collection_0.4.0.tgz";
        url  = "https://registry.yarnpkg.com/@discordjs/collection/-/collection-0.4.0.tgz";
        sha512 = "zmjq+l/rV35kE6zRrwe8BHqV78JvIh2ybJeZavBi5NySjWXqN3hmmAKg7kYMMXSeiWtSsMoZ/+MQi0DiQWy2lw==";
      };
    }
    {
      name = "_sapphire_async_queue___async_queue_1.2.0.tgz";
      path = fetchurl {
        name = "_sapphire_async_queue___async_queue_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/@sapphire/async-queue/-/async-queue-1.2.0.tgz";
        sha512 = "O5ND5Ljpef86X5oy8zXorQ754TMjWALcPSAgPBu4+76HLtDTrNoDyzU2uGE2G4A8Wv51u0MXHzGQ0WZ4GMtpIw==";
      };
    }
    {
      name = "_sindresorhus_is___is_4.4.0.tgz";
      path = fetchurl {
        name = "_sindresorhus_is___is_4.4.0.tgz";
        url  = "https://registry.yarnpkg.com/@sindresorhus/is/-/is-4.4.0.tgz";
        sha512 = "QppPM/8l3Mawvh4rn9CNEYIU9bxpXUCRMaX9yUpvBk1nMKusLKpfXGDEKExKaPhLzcn3lzil7pR6rnJ11HgeRQ==";
      };
    }
    {
      name = "_types_dotenv_safe___dotenv_safe_8.1.1.tgz";
      path = fetchurl {
        name = "_types_dotenv_safe___dotenv_safe_8.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@types/dotenv-safe/-/dotenv-safe-8.1.1.tgz";
        sha512 = "JOJuWwYaRinKl3UdmTivWgXO66dKpGW67NaYRMSMjKsNjF+MTsnc/T656I8eNGokIHVLihkY1kx96Ho3l8vfqQ==";
      };
    }
    {
      name = "_types_humanize_duration___humanize_duration_3.27.1.tgz";
      path = fetchurl {
        name = "_types_humanize_duration___humanize_duration_3.27.1.tgz";
        url  = "https://registry.yarnpkg.com/@types/humanize-duration/-/humanize-duration-3.27.1.tgz";
        sha512 = "K3e+NZlpCKd6Bd/EIdqjFJRFHbrq5TzPPLwREk5Iv/YoIjQrs6ljdAUCo+Lb2xFlGNOjGSE0dqsVD19cZL137w==";
      };
    }
    {
      name = "_types_node_fetch___node_fetch_2.5.12.tgz";
      path = fetchurl {
        name = "_types_node_fetch___node_fetch_2.5.12.tgz";
        url  = "https://registry.yarnpkg.com/@types/node-fetch/-/node-fetch-2.5.12.tgz";
        sha512 = "MKgC4dlq4kKNa/mYrwpKfzQMB5X3ee5U6fSprkKpToBqBmX4nFZL9cW5jl6sWn+xpRJ7ypWh2yyqqr8UUCstSw==";
      };
    }
    {
      name = "_types_node___node_15.0.1.tgz";
      path = fetchurl {
        name = "_types_node___node_15.0.1.tgz";
        url  = "https://registry.yarnpkg.com/@types/node/-/node-15.0.1.tgz";
        sha512 = "TMkXt0Ck1y0KKsGr9gJtWGjttxlZnnvDtphxUOSd0bfaR6Q1jle+sPvrzNR1urqYTWMinoKvjKfXUGsumaO1PA==";
      };
    }
    {
      name = "_types_node___node_14.14.43.tgz";
      path = fetchurl {
        name = "_types_node___node_14.14.43.tgz";
        url  = "https://registry.yarnpkg.com/@types/node/-/node-14.14.43.tgz";
        sha512 = "3pwDJjp1PWacPTpH0LcfhgjvurQvrZFBrC6xxjaUEZ7ifUtT32jtjPxEMMblpqd2Mvx+k8haqQJLQxolyGN/cQ==";
      };
    }
    {
      name = "_types_ws___ws_7.4.2.tgz";
      path = fetchurl {
        name = "_types_ws___ws_7.4.2.tgz";
        url  = "https://registry.yarnpkg.com/@types/ws/-/ws-7.4.2.tgz";
        sha512 = "PbeN0Eydl7LQl4OIav29YmkO2LxbVuz3nZD/kb19lOS+wLgIkRbWMNmU/QQR7ABpOJ7D7xDOU8co7iohObewrw==";
      };
    }
    {
      name = "_types_ws___ws_8.2.2.tgz";
      path = fetchurl {
        name = "_types_ws___ws_8.2.2.tgz";
        url  = "https://registry.yarnpkg.com/@types/ws/-/ws-8.2.2.tgz";
        sha512 = "NOn5eIcgWLOo6qW8AcuLZ7G8PycXu0xTxxkS6Q18VWFxgPUSOwV0pBj2a/4viNZVu25i7RIB7GttdkAIUUXOOg==";
      };
    }
    {
      name = "anymatch___anymatch_3.1.2.tgz";
      path = fetchurl {
        name = "anymatch___anymatch_3.1.2.tgz";
        url  = "https://registry.yarnpkg.com/anymatch/-/anymatch-3.1.2.tgz";
        sha512 = "P43ePfOAIupkguHUycrc4qJ9kz8ZiuOUijaETwX7THt0Y/GNK7v0aa8rY816xWjZ7rJdA5XdMcpVFTKMq+RvWg==";
      };
    }
    {
      name = "arg___arg_4.1.3.tgz";
      path = fetchurl {
        name = "arg___arg_4.1.3.tgz";
        url  = "https://registry.yarnpkg.com/arg/-/arg-4.1.3.tgz";
        sha512 = "58S9QDqG0Xx27YwPSt9fJxivjYl432YCwfDMfZ+71RAqUrZef7LrKQZ3LHLOwCS4FLNBplP533Zx895SeOCHvA==";
      };
    }
    {
      name = "asynckit___asynckit_0.4.0.tgz";
      path = fetchurl {
        name = "asynckit___asynckit_0.4.0.tgz";
        url  = "https://registry.yarnpkg.com/asynckit/-/asynckit-0.4.0.tgz";
        sha1 = "x57Zf380y48robyXkLzDZkdLS3k=";
      };
    }
    {
      name = "binary_extensions___binary_extensions_2.2.0.tgz";
      path = fetchurl {
        name = "binary_extensions___binary_extensions_2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/binary-extensions/-/binary-extensions-2.2.0.tgz";
        sha512 = "jDctJ/IVQbZoJykoeHbhXpOlNBqGNcwXJKJog42E5HDPUwQTSdjCHdihjj0DlnheQ7blbT6dHOafNAiS8ooQKA==";
      };
    }
    {
      name = "braces___braces_3.0.2.tgz";
      path = fetchurl {
        name = "braces___braces_3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/braces/-/braces-3.0.2.tgz";
        sha512 = "b8um+L1RzM3WDSzvhm6gIz1yfTbBt6YTlcEKAvsmqCZZFw46z626lVj9j1yEPW33H5H+lBQpZMP1k8l+78Ha0A==";
      };
    }
    {
      name = "buffer_from___buffer_from_1.1.1.tgz";
      path = fetchurl {
        name = "buffer_from___buffer_from_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/buffer-from/-/buffer-from-1.1.1.tgz";
        sha512 = "MQcXEUbCKtEo7bhqEs6560Hyd4XaovZlO/k9V3hjVUF/zwW7KBVdSK4gIt/bzwS9MbR5qob+F5jusZsb0YQK2A==";
      };
    }
    {
      name = "chokidar___chokidar_3.5.1.tgz";
      path = fetchurl {
        name = "chokidar___chokidar_3.5.1.tgz";
        url  = "https://registry.yarnpkg.com/chokidar/-/chokidar-3.5.1.tgz";
        sha512 = "9+s+Od+W0VJJzawDma/gvBNQqkTiqYTWLuZoyAsivsI4AaWTCzHG06/TMjsf1cYe9Cb97UCEhjz7HvnPk2p/tw==";
      };
    }
    {
      name = "combined_stream___combined_stream_1.0.8.tgz";
      path = fetchurl {
        name = "combined_stream___combined_stream_1.0.8.tgz";
        url  = "https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.8.tgz";
        sha512 = "FQN4MRfuJeHf7cBbBMJFXhKSDq+2kAArBlmRBvcvFE5BB1HZKXtSFASDhdlz9zOYwxh8lDdnvmMOe/+5cdoEdg==";
      };
    }
    {
      name = "cookiecord___cookiecord_0.8.21.tgz";
      path = fetchurl {
        name = "cookiecord___cookiecord_0.8.21.tgz";
        url  = "https://registry.yarnpkg.com/cookiecord/-/cookiecord-0.8.21.tgz";
        sha512 = "+P64C+YFpyITUny+Z18J2nwjIUesMOlis3/rShUy6GXeD8JYfjZ0BRqJyDaCxpBqch/Lja3/SPezrAuwE1aGNw==";
      };
    }
    {
      name = "delayed_stream___delayed_stream_1.0.0.tgz";
      path = fetchurl {
        name = "delayed_stream___delayed_stream_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-1.0.0.tgz";
        sha1 = "3zrhmayt+31ECqrgsp4icrJOxhk=";
      };
    }
    {
      name = "diff___diff_4.0.2.tgz";
      path = fetchurl {
        name = "diff___diff_4.0.2.tgz";
        url  = "https://registry.yarnpkg.com/diff/-/diff-4.0.2.tgz";
        sha512 = "58lmxKSA4BNyLz+HHMUzlOEpg09FV+ev6ZMe3vJihgdxzgcwZ8VoEEPmALCZG9LmqfVoNMMKpttIYTVG6uDY7A==";
      };
    }
    {
      name = "discord_api_types___discord_api_types_0.26.1.tgz";
      path = fetchurl {
        name = "discord_api_types___discord_api_types_0.26.1.tgz";
        url  = "https://registry.yarnpkg.com/discord-api-types/-/discord-api-types-0.26.1.tgz";
        sha512 = "T5PdMQ+Y1MEECYMV5wmyi9VEYPagEDEi4S0amgsszpWY0VB9JJ/hEvM6BgLhbdnKky4gfmZEXtEEtojN8ZKJQQ==";
      };
    }
    {
    name = "988a51b7641f8b33cc9387664605ddc02134859d";
    path =
      let
        repo = fetchgit {
          url = "https://github.com/discordjs/discord.js.git";
          rev = "988a51b7641f8b33cc9387664605ddc02134859d";
          sha256 = "0x51y3fynsbbdbbv93v36iqf32v01jz2m4rsy9j4khlazpk8211g";
        };
      in
        runCommand "988a51b7641f8b33cc9387664605ddc02134859d" { buildInputs = [gnutar]; } ''
          # Set u+w because tar-fs can't unpack archives with read-only dirs
          # https://github.com/mafintosh/tar-fs/issues/79
          tar cf $out --mode u+w -C ${repo} .
        '';
  }
    {
      name = "dotenv_safe___dotenv_safe_8.2.0.tgz";
      path = fetchurl {
        name = "dotenv_safe___dotenv_safe_8.2.0.tgz";
        url  = "https://registry.yarnpkg.com/dotenv-safe/-/dotenv-safe-8.2.0.tgz";
        sha512 = "uWwWWdUQkSs5a3mySDB22UtNwyEYi0JtEQu+vDzIqr9OjbDdC2Ip13PnSpi/fctqlYmzkxCeabiyCAOROuAIaA==";
      };
    }
    {
      name = "dotenv___dotenv_8.2.0.tgz";
      path = fetchurl {
        name = "dotenv___dotenv_8.2.0.tgz";
        url  = "https://registry.yarnpkg.com/dotenv/-/dotenv-8.2.0.tgz";
        sha512 = "8sJ78ElpbDJBHNeBzUbUVLsqKdccaa/BXF1uPTw3GrvQTBgrQrtObr2mUrE38vzYd8cEv+m/JBfDLioYcfXoaw==";
      };
    }
    {
      name = "fill_range___fill_range_7.0.1.tgz";
      path = fetchurl {
        name = "fill_range___fill_range_7.0.1.tgz";
        url  = "https://registry.yarnpkg.com/fill-range/-/fill-range-7.0.1.tgz";
        sha512 = "qOo9F+dMUmC2Lcb4BbVvnKJxTPjCm+RRpe4gDuGrzkL7mEVl/djYSu2OdQ2Pa302N4oqkSg9ir6jaLWJ2USVpQ==";
      };
    }
    {
      name = "form_data___form_data_3.0.1.tgz";
      path = fetchurl {
        name = "form_data___form_data_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/form-data/-/form-data-3.0.1.tgz";
        sha512 = "RHkBKtLWUVwd7SqRIvCZMEvAMoGUp0XU+seQiZejj0COz3RI3hWP4sCv3gZWWLjJTd7rGwcsF5eKZGii0r/hbg==";
      };
    }
    {
      name = "form_data___form_data_4.0.0.tgz";
      path = fetchurl {
        name = "form_data___form_data_4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/form-data/-/form-data-4.0.0.tgz";
        sha512 = "ETEklSGi5t0QMZuiXoA/Q6vcnxcLQP5vdugSpuAyi6SVGi2clPPp+xgEhuMaHC+zGgn31Kd235W35f7Hykkaww==";
      };
    }
    {
      name = "fsevents___fsevents_2.3.2.tgz";
      path = fetchurl {
        name = "fsevents___fsevents_2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/fsevents/-/fsevents-2.3.2.tgz";
        sha512 = "xiqMQR4xAeHTuB9uWm+fFRcIOgKBMiOBP+eXiyT7jsgVCq1bkVygt00oASowB7EdtpOHaaPgKt812P9ab+DDKA==";
      };
    }
    {
      name = "glob_parent___glob_parent_5.1.2.tgz";
      path = fetchurl {
        name = "glob_parent___glob_parent_5.1.2.tgz";
        url  = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-5.1.2.tgz";
        sha512 = "AOIgSQCepiJYwP3ARnGx+5VnTu2HBYdzbGP45eLw1vr3zB3vZLeyed1sC9hnbcOc9/SrMyM5RPQrkGz4aS9Zow==";
      };
    }
    {
      name = "humanize_duration___humanize_duration_3.25.2.tgz";
      path = fetchurl {
        name = "humanize_duration___humanize_duration_3.25.2.tgz";
        url  = "https://registry.yarnpkg.com/humanize-duration/-/humanize-duration-3.25.2.tgz";
        sha512 = "zSerjahuzBazDaE8skjMI7Xmrt/EirvW5cDsXgysx8tYIjcgCMnI5Y5985y3LxYeLah9L5cQY3WEw1k7GRWbfg==";
      };
    }
    {
      name = "humanize_duration___humanize_duration_3.27.1.tgz";
      path = fetchurl {
        name = "humanize_duration___humanize_duration_3.27.1.tgz";
        url  = "https://registry.yarnpkg.com/humanize-duration/-/humanize-duration-3.27.1.tgz";
        sha512 = "jCVkMl+EaM80rrMrAPl96SGG4NRac53UyI1o/yAzebDntEY6K6/Fj2HOjdPg8omTqIe5Y0wPBai2q5xXrIbarA==";
      };
    }
    {
      name = "is_binary_path___is_binary_path_2.1.0.tgz";
      path = fetchurl {
        name = "is_binary_path___is_binary_path_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-binary-path/-/is-binary-path-2.1.0.tgz";
        sha512 = "ZMERYes6pDydyuGidse7OsHxtbI7WVeUEozgR/g7rd0xUimYNlvZRE/K2MgZTjWy725IfelLeVcEM97mmtRGXw==";
      };
    }
    {
      name = "is_extglob___is_extglob_2.1.1.tgz";
      path = fetchurl {
        name = "is_extglob___is_extglob_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/is-extglob/-/is-extglob-2.1.1.tgz";
        sha1 = "qIwCU1eR8C7TfHahueqXc8gz+MI=";
      };
    }
    {
      name = "is_glob___is_glob_4.0.1.tgz";
      path = fetchurl {
        name = "is_glob___is_glob_4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-glob/-/is-glob-4.0.1.tgz";
        sha512 = "5G0tKtBTFImOqDnLB2hG6Bp2qcKEFduo4tZu9MT/H6NQv/ghhy30o55ufafxJ/LdH79LLs2Kfrn85TLKyA7BUg==";
      };
    }
    {
      name = "is_number___is_number_7.0.0.tgz";
      path = fetchurl {
        name = "is_number___is_number_7.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-number/-/is-number-7.0.0.tgz";
        sha512 = "41Cifkg6e8TylSpdtTpeLVMqvSBEVzTttHvERD741+pnZ8ANv0004MRL43QKPDlK9cGvNp6NZWZUBlbGXYxxng==";
      };
    }
    {
      name = "make_error___make_error_1.3.6.tgz";
      path = fetchurl {
        name = "make_error___make_error_1.3.6.tgz";
        url  = "https://registry.yarnpkg.com/make-error/-/make-error-1.3.6.tgz";
        sha512 = "s8UhlNe7vPKomQhC1qFelMokr/Sc3AgNbso3n74mVPA5LTZwkB9NlXf4XPamLxJE8h0gh73rM94xvwRT2CVInw==";
      };
    }
    {
      name = "mime_db___mime_db_1.47.0.tgz";
      path = fetchurl {
        name = "mime_db___mime_db_1.47.0.tgz";
        url  = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.47.0.tgz";
        sha512 = "QBmA/G2y+IfeS4oktet3qRZ+P5kPhCKRXxXnQEudYqUaEioAU1/Lq2us3D/t1Jfo4hE9REQPrbB7K5sOczJVIw==";
      };
    }
    {
      name = "mime_types___mime_types_2.1.30.tgz";
      path = fetchurl {
        name = "mime_types___mime_types_2.1.30.tgz";
        url  = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.30.tgz";
        sha512 = "crmjA4bLtR8m9qLpHvgxSChT+XoSlZi8J4n/aIdn3z92e/U47Z0V/yl+Wh9W046GgFVAmoNR/fmdbZYcSSIUeg==";
      };
    }
    {
      name = "node_fetch___node_fetch_2.6.1.tgz";
      path = fetchurl {
        name = "node_fetch___node_fetch_2.6.1.tgz";
        url  = "https://registry.yarnpkg.com/node-fetch/-/node-fetch-2.6.1.tgz";
        sha512 = "V4aYg89jEoVRxRb2fJdAg8FHvI7cEyYdVAh94HH0UIK8oJxUfkjlDQN9RbMx+bEjP7+ggMiFRprSti032Oipxw==";
      };
    }
    {
      name = "normalize_path___normalize_path_3.0.0.tgz";
      path = fetchurl {
        name = "normalize_path___normalize_path_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/normalize-path/-/normalize-path-3.0.0.tgz";
        sha512 = "6eZs5Ls3WtCisHWp9S2GUy8dqkpGi4BVSz3GaqiE6ezub0512ESztXUwUB6C6IKbQkY2Pnb/mD4WYojCRwcwLA==";
      };
    }
    {
      name = "picomatch___picomatch_2.2.3.tgz";
      path = fetchurl {
        name = "picomatch___picomatch_2.2.3.tgz";
        url  = "https://registry.yarnpkg.com/picomatch/-/picomatch-2.2.3.tgz";
        sha512 = "KpELjfwcCDUb9PeigTs2mBJzXUPzAuP2oPcA989He8Rte0+YUAjw1JVedDhuTKPkHjSYzMN3npC9luThGYEKdg==";
      };
    }
    {
      name = "readdirp___readdirp_3.5.0.tgz";
      path = fetchurl {
        name = "readdirp___readdirp_3.5.0.tgz";
        url  = "https://registry.yarnpkg.com/readdirp/-/readdirp-3.5.0.tgz";
        sha512 = "cMhu7c/8rdhkHXWsY+osBhfSy0JikwpHK/5+imo+LpeasTF8ouErHrlYkwT0++njiyuDvc7OFY5T3ukvZ8qmFQ==";
      };
    }
    {
      name = "reflect_metadata___reflect_metadata_0.1.13.tgz";
      path = fetchurl {
        name = "reflect_metadata___reflect_metadata_0.1.13.tgz";
        url  = "https://registry.yarnpkg.com/reflect-metadata/-/reflect-metadata-0.1.13.tgz";
        sha512 = "Ts1Y/anZELhSsjMcU605fU9RE4Oi3p5ORujwbIKXfWa+0Zxs510Qrmrce5/Jowq3cHSZSJqBjypxmHarc+vEWg==";
      };
    }
    {
      name = "source_map_support___source_map_support_0.5.19.tgz";
      path = fetchurl {
        name = "source_map_support___source_map_support_0.5.19.tgz";
        url  = "https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.5.19.tgz";
        sha512 = "Wonm7zOCIJzBGQdB+thsPar0kYuCIzYvxZwlBa87yi/Mdjv7Tip2cyVbLj5o0cFPN4EVkuTwb3GDDyUx2DGnGw==";
      };
    }
    {
      name = "source_map___source_map_0.6.1.tgz";
      path = fetchurl {
        name = "source_map___source_map_0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.6.1.tgz";
        sha512 = "UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==";
      };
    }
    {
      name = "to_regex_range___to_regex_range_5.0.1.tgz";
      path = fetchurl {
        name = "to_regex_range___to_regex_range_5.0.1.tgz";
        url  = "https://registry.yarnpkg.com/to-regex-range/-/to-regex-range-5.0.1.tgz";
        sha512 = "65P7iz6X5yEr1cwcgvQxbbIw7Uk3gOy5dIdtZ4rDveLqhrdJP+Li/Hx6tyK0NEb+2GCyneCMJiGqrADCSNk8sQ==";
      };
    }
    {
      name = "ts_mixer___ts_mixer_6.0.0.tgz";
      path = fetchurl {
        name = "ts_mixer___ts_mixer_6.0.0.tgz";
        url  = "https://registry.yarnpkg.com/ts-mixer/-/ts-mixer-6.0.0.tgz";
        sha512 = "nXIb1fvdY5CBSrDIblLn73NW0qRDk5yJ0Sk1qPBF560OdJfQp9jhl+0tzcY09OZ9U+6GpeoI9RjwoIKFIoB9MQ==";
      };
    }
    {
      name = "ts_node___ts_node_8.10.2.tgz";
      path = fetchurl {
        name = "ts_node___ts_node_8.10.2.tgz";
        url  = "https://registry.yarnpkg.com/ts-node/-/ts-node-8.10.2.tgz";
        sha512 = "ISJJGgkIpDdBhWVu3jufsWpK3Rzo7bdiIXJjQc0ynKxVOVcg2oIrf2H2cejminGrptVc6q6/uynAHNCuWGbpVA==";
      };
    }
    {
      name = "tslib___tslib_2.3.1.tgz";
      path = fetchurl {
        name = "tslib___tslib_2.3.1.tgz";
        url  = "https://registry.yarnpkg.com/tslib/-/tslib-2.3.1.tgz";
        sha512 = "77EbyPPpMz+FRFRuAFlWMtmgUWGe9UOG2Z25NqCwiIjRhOf5iKGuzSe5P2w1laq+FkRy4p+PCuVkJSGkzTEKVw==";
      };
    }
    {
      name = "typescript___typescript_4.5.4.tgz";
      path = fetchurl {
        name = "typescript___typescript_4.5.4.tgz";
        url  = "https://registry.yarnpkg.com/typescript/-/typescript-4.5.4.tgz";
        sha512 = "VgYs2A2QIRuGphtzFV7aQJduJ2gyfTljngLzjpfW9FoYZF6xuw1W0vW9ghCKLfcWrCFxK81CSGRAvS1pn4fIUg==";
      };
    }
    {
      name = "ws___ws_8.5.0.tgz";
      path = fetchurl {
        name = "ws___ws_8.5.0.tgz";
        url  = "https://registry.yarnpkg.com/ws/-/ws-8.5.0.tgz";
        sha512 = "BWX0SWVgLPzYwF8lTzEy1egjhS4S4OEAHfsO8o65WOVsrnSRGaSiUaa9e0ggGlkMTtBlmOpEXiie9RUcBO86qg==";
      };
    }
    {
      name = "yn___yn_3.1.1.tgz";
      path = fetchurl {
        name = "yn___yn_3.1.1.tgz";
        url  = "https://registry.yarnpkg.com/yn/-/yn-3.1.1.tgz";
        sha512 = "Ux4ygGWsu2c7isFWe8Yu1YluJmqVhxqK2cLXNQA5AcC3QfbGNpM7fu0Y8b/z16pXLnFxZYvWhd3fhBY9DLmC6Q==";
      };
    }
    {
      name = "zod___zod_3.11.6.tgz";
      path = fetchurl {
        name = "zod___zod_3.11.6.tgz";
        url  = "https://registry.yarnpkg.com/zod/-/zod-3.11.6.tgz";
        sha512 = "daZ80A81I3/9lIydI44motWe6n59kRBfNzTuS2bfzVh1nAXi667TOTWWtatxyG+fwgNUiagSj/CWZwRRbevJIg==";
      };
    }
  ];
}
