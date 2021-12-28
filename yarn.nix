{ fetchurl, fetchgit, linkFarm, runCommand, gnutar }: rec {
  offline_cache = linkFarm "offline" packages;
  packages = [
    {
      name = "_discordjs_builders___builders_0.5.0.tgz";
      path = fetchurl {
        name = "_discordjs_builders___builders_0.5.0.tgz";
        url  = "https://registry.yarnpkg.com/@discordjs/builders/-/builders-0.5.0.tgz";
        sha1 = "646cbea9cc67f68639e6fb70ed1278b26dacdb14";
      };
    }
    {
      name = "_discordjs_collection___collection_0.2.4.tgz";
      path = fetchurl {
        name = "_discordjs_collection___collection_0.2.4.tgz";
        url  = "https://registry.yarnpkg.com/@discordjs/collection/-/collection-0.2.4.tgz";
        sha1 = "c8ff2250430dcec7324dd4aafd1ccbcbdfa9ac14";
      };
    }
    {
      name = "_discordjs_form_data___form_data_3.0.1.tgz";
      path = fetchurl {
        name = "_discordjs_form_data___form_data_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/@discordjs/form-data/-/form-data-3.0.1.tgz";
        sha1 = "5c9e6be992e2e57d0dfa0e39979a850225fb4697";
      };
    }
    {
      name = "_sapphire_async_queue___async_queue_1.1.9.tgz";
      path = fetchurl {
        name = "_sapphire_async_queue___async_queue_1.1.9.tgz";
        url  = "https://registry.yarnpkg.com/@sapphire/async-queue/-/async-queue-1.1.9.tgz";
        sha1 = "ce69611c8753c4affd905a7ef43061c7eb95c01b";
      };
    }
    {
      name = "_sindresorhus_is___is_4.2.0.tgz";
      path = fetchurl {
        name = "_sindresorhus_is___is_4.2.0.tgz";
        url  = "https://registry.yarnpkg.com/@sindresorhus/is/-/is-4.2.0.tgz";
        sha1 = "667bfc6186ae7c9e0b45a08960c551437176e1ca";
      };
    }
    {
      name = "_types_dotenv_safe___dotenv_safe_8.1.1.tgz";
      path = fetchurl {
        name = "_types_dotenv_safe___dotenv_safe_8.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@types/dotenv-safe/-/dotenv-safe-8.1.1.tgz";
        sha1 = "2d7248ed4ad969c41d85586266ad64e9a3603ad4";
      };
    }
    {
      name = "_types_node___node_15.0.1.tgz";
      path = fetchurl {
        name = "_types_node___node_15.0.1.tgz";
        url  = "https://registry.yarnpkg.com/@types/node/-/node-15.0.1.tgz";
        sha1 = "ef34dea0881028d11398be5bf4e856743e3dc35a";
      };
    }
    {
      name = "_types_node___node_14.14.43.tgz";
      path = fetchurl {
        name = "_types_node___node_14.14.43.tgz";
        url  = "https://registry.yarnpkg.com/@types/node/-/node-14.14.43.tgz";
        sha1 = "26bcbb0595b305400e8ceaf9a127a7f905ae49c8";
      };
    }
    {
      name = "_types_ws___ws_7.4.2.tgz";
      path = fetchurl {
        name = "_types_ws___ws_7.4.2.tgz";
        url  = "https://registry.yarnpkg.com/@types/ws/-/ws-7.4.2.tgz";
        sha1 = "bfe739b5f8b3a39742605fbe415ae7e88ee614c8";
      };
    }
    {
      name = "_types_ws___ws_7.4.7.tgz";
      path = fetchurl {
        name = "_types_ws___ws_7.4.7.tgz";
        url  = "https://registry.yarnpkg.com/@types/ws/-/ws-7.4.7.tgz";
        sha1 = "f7c390a36f7a0679aa69de2d501319f4f8d9b702";
      };
    }
    {
      name = "anymatch___anymatch_3.1.2.tgz";
      path = fetchurl {
        name = "anymatch___anymatch_3.1.2.tgz";
        url  = "https://registry.yarnpkg.com/anymatch/-/anymatch-3.1.2.tgz";
        sha1 = "c0557c096af32f106198f4f4e2a383537e378716";
      };
    }
    {
      name = "arg___arg_4.1.3.tgz";
      path = fetchurl {
        name = "arg___arg_4.1.3.tgz";
        url  = "https://registry.yarnpkg.com/arg/-/arg-4.1.3.tgz";
        sha1 = "269fc7ad5b8e42cb63c896d5666017261c144089";
      };
    }
    {
      name = "asynckit___asynckit_0.4.0.tgz";
      path = fetchurl {
        name = "asynckit___asynckit_0.4.0.tgz";
        url  = "https://registry.yarnpkg.com/asynckit/-/asynckit-0.4.0.tgz";
        sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
      };
    }
    {
      name = "binary_extensions___binary_extensions_2.2.0.tgz";
      path = fetchurl {
        name = "binary_extensions___binary_extensions_2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/binary-extensions/-/binary-extensions-2.2.0.tgz";
        sha1 = "75f502eeaf9ffde42fc98829645be4ea76bd9e2d";
      };
    }
    {
      name = "braces___braces_3.0.2.tgz";
      path = fetchurl {
        name = "braces___braces_3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/braces/-/braces-3.0.2.tgz";
        sha1 = "3454e1a462ee8d599e236df336cd9ea4f8afe107";
      };
    }
    {
      name = "buffer_from___buffer_from_1.1.1.tgz";
      path = fetchurl {
        name = "buffer_from___buffer_from_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/buffer-from/-/buffer-from-1.1.1.tgz";
        sha1 = "32713bc028f75c02fdb710d7c7bcec1f2c6070ef";
      };
    }
    {
      name = "callsites___callsites_3.1.0.tgz";
      path = fetchurl {
        name = "callsites___callsites_3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/callsites/-/callsites-3.1.0.tgz";
        sha1 = "b3630abd8943432f54b3f0519238e33cd7df2f73";
      };
    }
    {
      name = "chokidar___chokidar_3.5.1.tgz";
      path = fetchurl {
        name = "chokidar___chokidar_3.5.1.tgz";
        url  = "https://registry.yarnpkg.com/chokidar/-/chokidar-3.5.1.tgz";
        sha1 = "ee9ce7bbebd2b79f49f304799d5468e31e14e68a";
      };
    }
    {
      name = "combined_stream___combined_stream_1.0.8.tgz";
      path = fetchurl {
        name = "combined_stream___combined_stream_1.0.8.tgz";
        url  = "https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.8.tgz";
        sha1 = "c3d45a8b34fd730631a110a8a2520682b31d5a7f";
      };
    }
    {
      name = "cookiecord___cookiecord_0.8.19.tgz";
      path = fetchurl {
        name = "cookiecord___cookiecord_0.8.19.tgz";
        url  = "https://registry.yarnpkg.com/cookiecord/-/cookiecord-0.8.19.tgz";
        sha1 = "df68093734169df6937dac6542bde53f4b71b76b";
      };
    }
    {
      name = "delayed_stream___delayed_stream_1.0.0.tgz";
      path = fetchurl {
        name = "delayed_stream___delayed_stream_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-1.0.0.tgz";
        sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
      };
    }
    {
      name = "diff___diff_4.0.2.tgz";
      path = fetchurl {
        name = "diff___diff_4.0.2.tgz";
        url  = "https://registry.yarnpkg.com/diff/-/diff-4.0.2.tgz";
        sha1 = "60f3aecb89d5fae520c11aa19efc2bb982aade7d";
      };
    }
    {
      name = "discord_api_types___discord_api_types_0.22.0.tgz";
      path = fetchurl {
        name = "discord_api_types___discord_api_types_0.22.0.tgz";
        url  = "https://registry.yarnpkg.com/discord-api-types/-/discord-api-types-0.22.0.tgz";
        sha1 = "34dc57fe8e016e5eaac5e393646cd42a7e1ccc2a";
      };
    }
    {
    name = "d0bc4d7ff037035d4f315a0286b06f0a1ade29c1";
    path =
      let
        repo = fetchgit {
          url = "https://github.com/discordjs/discord.js.git";
          rev = "d0bc4d7ff037035d4f315a0286b06f0a1ade29c1";
          sha256 = "1znqxqgp6x6p4fpm47g6mpqabg7qgzbp9spldv34krxi38qp3f86";
        };
      in
        runCommand "d0bc4d7ff037035d4f315a0286b06f0a1ade29c1" { buildInputs = [gnutar]; } ''
          # Set u+w because tar-fs can't unpack archives with read-only dirs
          # https://github.com/mafintosh/tar-fs/issues/79
          tar cf $out --mode u+w -C ${repo} .
        '';
  }
    {
      name = "dot_prop___dot_prop_6.0.1.tgz";
      path = fetchurl {
        name = "dot_prop___dot_prop_6.0.1.tgz";
        url  = "https://registry.yarnpkg.com/dot-prop/-/dot-prop-6.0.1.tgz";
        sha1 = "fc26b3cf142b9e59b74dbd39ed66ce620c681083";
      };
    }
    {
      name = "dotenv_safe___dotenv_safe_8.2.0.tgz";
      path = fetchurl {
        name = "dotenv_safe___dotenv_safe_8.2.0.tgz";
        url  = "https://registry.yarnpkg.com/dotenv-safe/-/dotenv-safe-8.2.0.tgz";
        sha1 = "8d548c7318a62c09a66c4dc8c31864cc007c78ba";
      };
    }
    {
      name = "dotenv___dotenv_8.2.0.tgz";
      path = fetchurl {
        name = "dotenv___dotenv_8.2.0.tgz";
        url  = "https://registry.yarnpkg.com/dotenv/-/dotenv-8.2.0.tgz";
        sha1 = "97e619259ada750eea3e4ea3e26bceea5424b16a";
      };
    }
    {
      name = "fill_range___fill_range_7.0.1.tgz";
      path = fetchurl {
        name = "fill_range___fill_range_7.0.1.tgz";
        url  = "https://registry.yarnpkg.com/fill-range/-/fill-range-7.0.1.tgz";
        sha1 = "1919a6a7c75fe38b2c7c77e5198535da9acdda40";
      };
    }
    {
      name = "fsevents___fsevents_2.3.2.tgz";
      path = fetchurl {
        name = "fsevents___fsevents_2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/fsevents/-/fsevents-2.3.2.tgz";
        sha1 = "8a526f78b8fdf4623b709e0b975c52c24c02fd1a";
      };
    }
    {
      name = "glob_parent___glob_parent_5.1.2.tgz";
      path = fetchurl {
        name = "glob_parent___glob_parent_5.1.2.tgz";
        url  = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-5.1.2.tgz";
        sha1 = "869832c58034fe68a4093c17dc15e8340d8401c4";
      };
    }
    {
      name = "humanize_duration___humanize_duration_3.25.2.tgz";
      path = fetchurl {
        name = "humanize_duration___humanize_duration_3.25.2.tgz";
        url  = "https://registry.yarnpkg.com/humanize-duration/-/humanize-duration-3.25.2.tgz";
        sha1 = "5259585b749ecc5ad5a60fb37121aee0e9ab0c5e";
      };
    }
    {
      name = "is_binary_path___is_binary_path_2.1.0.tgz";
      path = fetchurl {
        name = "is_binary_path___is_binary_path_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-binary-path/-/is-binary-path-2.1.0.tgz";
        sha1 = "ea1f7f3b80f064236e83470f86c09c254fb45b09";
      };
    }
    {
      name = "is_extglob___is_extglob_2.1.1.tgz";
      path = fetchurl {
        name = "is_extglob___is_extglob_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/is-extglob/-/is-extglob-2.1.1.tgz";
        sha1 = "a88c02535791f02ed37c76a1b9ea9773c833f8c2";
      };
    }
    {
      name = "is_glob___is_glob_4.0.1.tgz";
      path = fetchurl {
        name = "is_glob___is_glob_4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-glob/-/is-glob-4.0.1.tgz";
        sha1 = "7567dbe9f2f5e2467bc77ab83c4a29482407a5dc";
      };
    }
    {
      name = "is_number___is_number_7.0.0.tgz";
      path = fetchurl {
        name = "is_number___is_number_7.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-number/-/is-number-7.0.0.tgz";
        sha1 = "7535345b896734d5f80c4d06c50955527a14f12b";
      };
    }
    {
      name = "is_obj___is_obj_2.0.0.tgz";
      path = fetchurl {
        name = "is_obj___is_obj_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-obj/-/is-obj-2.0.0.tgz";
        sha1 = "473fb05d973705e3fd9620545018ca8e22ef4982";
      };
    }
    {
      name = "lodash.isequal___lodash.isequal_4.5.0.tgz";
      path = fetchurl {
        name = "lodash.isequal___lodash.isequal_4.5.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.isequal/-/lodash.isequal-4.5.0.tgz";
        sha1 = "415c4478f2bcc30120c22ce10ed3226f7d3e18e0";
      };
    }
    {
      name = "make_error___make_error_1.3.6.tgz";
      path = fetchurl {
        name = "make_error___make_error_1.3.6.tgz";
        url  = "https://registry.yarnpkg.com/make-error/-/make-error-1.3.6.tgz";
        sha1 = "2eb2e37ea9b67c4891f684a1394799af484cf7a2";
      };
    }
    {
      name = "mime_db___mime_db_1.47.0.tgz";
      path = fetchurl {
        name = "mime_db___mime_db_1.47.0.tgz";
        url  = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.47.0.tgz";
        sha1 = "8cb313e59965d3c05cfbf898915a267af46a335c";
      };
    }
    {
      name = "mime_types___mime_types_2.1.30.tgz";
      path = fetchurl {
        name = "mime_types___mime_types_2.1.30.tgz";
        url  = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.30.tgz";
        sha1 = "6e7be8b4c479825f85ed6326695db73f9305d62d";
      };
    }
    {
      name = "node_fetch___node_fetch_2.6.1.tgz";
      path = fetchurl {
        name = "node_fetch___node_fetch_2.6.1.tgz";
        url  = "https://registry.yarnpkg.com/node-fetch/-/node-fetch-2.6.1.tgz";
        sha1 = "045bd323631f76ed2e2b55573394416b639a0052";
      };
    }
    {
      name = "normalize_path___normalize_path_3.0.0.tgz";
      path = fetchurl {
        name = "normalize_path___normalize_path_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/normalize-path/-/normalize-path-3.0.0.tgz";
        sha1 = "0dcd69ff23a1c9b11fd0978316644a0388216a65";
      };
    }
    {
      name = "ow___ow_0.27.0.tgz";
      path = fetchurl {
        name = "ow___ow_0.27.0.tgz";
        url  = "https://registry.yarnpkg.com/ow/-/ow-0.27.0.tgz";
        sha1 = "d44da088e8184fa11de64b5813206f9f86ab68d0";
      };
    }
    {
      name = "picomatch___picomatch_2.2.3.tgz";
      path = fetchurl {
        name = "picomatch___picomatch_2.2.3.tgz";
        url  = "https://registry.yarnpkg.com/picomatch/-/picomatch-2.2.3.tgz";
        sha1 = "465547f359ccc206d3c48e46a1bcb89bf7ee619d";
      };
    }
    {
      name = "readdirp___readdirp_3.5.0.tgz";
      path = fetchurl {
        name = "readdirp___readdirp_3.5.0.tgz";
        url  = "https://registry.yarnpkg.com/readdirp/-/readdirp-3.5.0.tgz";
        sha1 = "9ba74c019b15d365278d2e91bb8c48d7b4d42c9e";
      };
    }
    {
      name = "reflect_metadata___reflect_metadata_0.1.13.tgz";
      path = fetchurl {
        name = "reflect_metadata___reflect_metadata_0.1.13.tgz";
        url  = "https://registry.yarnpkg.com/reflect-metadata/-/reflect-metadata-0.1.13.tgz";
        sha1 = "67ae3ca57c972a2aa1642b10fe363fe32d49dc08";
      };
    }
    {
      name = "source_map_support___source_map_support_0.5.19.tgz";
      path = fetchurl {
        name = "source_map_support___source_map_support_0.5.19.tgz";
        url  = "https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.5.19.tgz";
        sha1 = "a98b62f86dcaf4f67399648c085291ab9e8fed61";
      };
    }
    {
      name = "source_map___source_map_0.6.1.tgz";
      path = fetchurl {
        name = "source_map___source_map_0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.6.1.tgz";
        sha1 = "74722af32e9614e9c287a8d0bbde48b5e2f1a263";
      };
    }
    {
      name = "to_regex_range___to_regex_range_5.0.1.tgz";
      path = fetchurl {
        name = "to_regex_range___to_regex_range_5.0.1.tgz";
        url  = "https://registry.yarnpkg.com/to-regex-range/-/to-regex-range-5.0.1.tgz";
        sha1 = "1648c44aae7c8d988a326018ed72f5b4dd0392e4";
      };
    }
    {
      name = "ts_mixer___ts_mixer_6.0.0.tgz";
      path = fetchurl {
        name = "ts_mixer___ts_mixer_6.0.0.tgz";
        url  = "https://registry.yarnpkg.com/ts-mixer/-/ts-mixer-6.0.0.tgz";
        sha1 = "4e631d3a36e3fa9521b973b132e8353bc7267f9f";
      };
    }
    {
      name = "ts_node___ts_node_8.10.2.tgz";
      path = fetchurl {
        name = "ts_node___ts_node_8.10.2.tgz";
        url  = "https://registry.yarnpkg.com/ts-node/-/ts-node-8.10.2.tgz";
        sha1 = "eee03764633b1234ddd37f8db9ec10b75ec7fb8d";
      };
    }
    {
      name = "tslib___tslib_2.3.1.tgz";
      path = fetchurl {
        name = "tslib___tslib_2.3.1.tgz";
        url  = "https://registry.yarnpkg.com/tslib/-/tslib-2.3.1.tgz";
        sha1 = "e8a335add5ceae51aa261d32a490158ef042ef01";
      };
    }
    {
      name = "type_fest___type_fest_1.4.0.tgz";
      path = fetchurl {
        name = "type_fest___type_fest_1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/type-fest/-/type-fest-1.4.0.tgz";
        sha1 = "e9fb813fe3bf1744ec359d55d1affefa76f14be1";
      };
    }
    {
      name = "typescript___typescript_4.5.4.tgz";
      path = fetchurl {
        name = "typescript___typescript_4.5.4.tgz";
        url  = "https://registry.yarnpkg.com/typescript/-/typescript-4.5.4.tgz";
        sha1 = "a17d3a0263bf5c8723b9c52f43c5084edf13c2e8";
      };
    }
    {
      name = "vali_date___vali_date_1.0.0.tgz";
      path = fetchurl {
        name = "vali_date___vali_date_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/vali-date/-/vali-date-1.0.0.tgz";
        sha1 = "1b904a59609fb328ef078138420934f6b86709a6";
      };
    }
    {
      name = "ws___ws_7.5.6.tgz";
      path = fetchurl {
        name = "ws___ws_7.5.6.tgz";
        url  = "https://registry.yarnpkg.com/ws/-/ws-7.5.6.tgz";
        sha1 = "e59fc509fb15ddfb65487ee9765c5a51dec5fe7b";
      };
    }
    {
      name = "yn___yn_3.1.1.tgz";
      path = fetchurl {
        name = "yn___yn_3.1.1.tgz";
        url  = "https://registry.yarnpkg.com/yn/-/yn-3.1.1.tgz";
        sha1 = "1e87401a09d767c1d5eab26a6e4c185182d2eb50";
      };
    }
  ];
}
