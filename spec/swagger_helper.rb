# frozen_string_literal: true

require 'rails_helper'

RSpec.configure do |config|
  # Specify a root folder where Swagger JSON files are generated
  # NOTE: If you're using the rswag-api to serve API descriptions, you'll need
  # to ensure that it's configured to serve Swagger from the same folder
  config.swagger_root = Rails.root.join('openapi').to_s

  # Define one or more Swagger documents and provide global metadata for each one
  # When you run the 'rswag:specs:swaggerize' rake task, the complete Swagger will
  # be generated at the provided relative path under swagger_root
  # By default, the operations defined in spec files are added to the first
  # document below. You can override this behavior by adding a swagger_doc tag to the
  # the root example_group in your specs, e.g. describe '...', swagger_doc: 'v2/swagger.json'
  config.swagger_docs = {
    'openapi.yaml' => {
      openapi: '3.0.3',
      info: {
        title: 'Discourse API Documentation',
        version: 'latest'
      },
      paths: {},
      servers: [
        {
          url: 'https://{defaultHost}',
          variables: {
            defaultHost: {
              default: 'discourse.example.com'
            }
          }
        }
      ],
      components: {
        schemas: {
          user_response: {
            type: :object,
            properties: {
              user_badges: {
                type: :array,
                items: {
                },
              },
              user: {
                type: :object,
                properties: {
                  id: { type: :integer },
                  username: { type: :string },
                  name: { type: :string },
                  avatar_template: { type: :string },
                  last_posted_at: { type: :string, nullable: true },
                  last_seen_at: { type: :string, nullable: true },
                  created_at: { type: :string },
                  ignored: { type: :boolean },
                  muted: { type: :boolean },
                  can_ignore_user: { type: :boolean },
                  can_mute_user: { type: :boolean },
                  can_send_private_messages: { type: :boolean },
                  can_send_private_message_to_user: { type: :boolean },
                  trust_level: { type: :integer },
                  moderator: { type: :boolean },
                  admin: { type: :boolean },
                  title: { type: :string, nullable: true },
                  badge_count: { type: :integer },
                  user_fields: {
                    type: :object,
                    properties: {
                    }
                  },
                  custom_fields: {
                    type: :object,
                    properties: {
                    }
                  },
                  time_read: { type: :integer },
                  recent_time_read: { type: :integer },
                  primary_group_id: { type: :string, nullable: true },
                  primary_group_name: { type: :string, nullable: true },
                  primary_group_flair_url: { type: :string, nullable: true },
                  primary_group_flair_bg_color: { type: :string, nullable: true },
                  primary_group_flair_color: { type: :string, nullable: true },
                  featured_topic: { type: :string, nullable: true },
                  staged: { type: :boolean },
                  can_edit: { type: :boolean },
                  can_edit_username: { type: :boolean },
                  can_edit_email: { type: :boolean },
                  can_edit_name: { type: :boolean },
                  uploaded_avatar_id: { type: :string, nullable: true },
                  has_title_badges: { type: :boolean },
                  pending_count: { type: :integer },
                  profile_view_count: { type: :integer },
                  second_factor_enabled: { type: :boolean },
                  can_upload_profile_header: { type: :boolean },
                  can_upload_user_card_background: { type: :boolean },
                  post_count: { type: :integer },
                  can_be_deleted: { type: :boolean },
                  can_delete_all_posts: { type: :boolean },
                  locale: { type: :string, nullable: true },
                  muted_category_ids: {
                    type: :array,
                    items: {
                    },
                  },
                  regular_category_ids: {
                    type: :array,
                    items: {
                    },
                  },
                  watched_tags: {
                    type: :array,
                    items: {
                    },
                  },
                  watching_first_post_tags: {
                    type: :array,
                    items: {
                    },
                  },
                  tracked_tags: {
                    type: :array,
                    items: {
                    },
                  },
                  muted_tags: {
                    type: :array,
                    items: {
                    },
                  },
                  tracked_category_ids: {
                    type: :array,
                    items: {
                    },
                  },
                  watched_category_ids: {
                    type: :array,
                    items: {
                    },
                  },
                  watched_first_post_category_ids: {
                    type: :array,
                    items: {
                    },
                  },
                  system_avatar_upload_id: { type: :string, nullable: true },
                  system_avatar_template: { type: :string },
                  muted_usernames: {
                    type: :array,
                    items: {
                    },
                  },
                  ignored_usernames: {
                    type: :array,
                    items: {
                    },
                  },
                  allowed_pm_usernames: {
                    type: :array,
                    items: {
                    },
                  },
                  mailing_list_posts_per_day: { type: :integer },
                  can_change_bio: { type: :boolean },
                  can_change_location: { type: :boolean },
                  can_change_website: { type: :boolean },
                  user_api_keys: { type: :string, nullable: true },
                  user_auth_tokens: {
                    type: :array,
                    items: {
                      type: :object,
                      properties: {
                        id: { type: :integer },
                        client_ip: { type: :string },
                        location: { type: :string },
                        browser: { type: :string },
                        device: { type: :string },
                        os: { type: :string },
                        icon: { type: :string },
                        created_at: { type: :string },
                        seen_at: { type: :string },
                        is_active: { type: :boolean },
                      }
                    },
                  },
                  featured_user_badge_ids: {
                    type: :array,
                    items: {
                    },
                  },
                  invited_by: { type: :string, nullable: true },
                  groups: {
                    type: :array,
                    items: {
                      type: :object,
                      properties: {
                        id: { type: :integer },
                        automatic: { type: :boolean },
                        name: { type: :string },
                        display_name: { type: :string },
                        user_count: { type: :integer },
                        mentionable_level: { type: :integer },
                        messageable_level: { type: :integer },
                        visibility_level: { type: :integer },
                        primary_group: { type: :boolean },
                        title: { type: :string, nullable: true },
                        grant_trust_level: { type: :string, nullable: true },
                        incoming_email: { type: :string, nullable: true },
                        has_messages: { type: :boolean },
                        flair_url: { type: :string, nullable: true },
                        flair_bg_color: { type: :string, nullable: true },
                        flair_color: { type: :string, nullable: true },
                        bio_raw: { type: :string, nullable: true },
                        bio_cooked: { type: :string, nullable: true },
                        bio_excerpt: { type: :string, nullable: true },
                        public_admission: { type: :boolean },
                        public_exit: { type: :boolean },
                        allow_membership_requests: { type: :boolean },
                        full_name: { type: :string, nullable: true },
                        default_notification_level: { type: :integer },
                        membership_request_template: { type: :string, nullable: true },
                        members_visibility_level: { type: :integer },
                        can_see_members: { type: :boolean },
                        can_admin_group: { type: :boolean },
                        publish_read_state: { type: :boolean },
                      }
                    },
                  },
                  group_users: {
                    type: :array,
                    items: {
                      type: :object,
                      properties: {
                        group_id: { type: :integer },
                        user_id: { type: :integer },
                        notification_level: { type: :integer },
                      }
                    },
                  },
                  user_option: {
                    type: :object,
                    properties: {
                      user_id: { type: :integer },
                      mailing_list_mode: { type: :boolean },
                      mailing_list_mode_frequency: { type: :integer },
                      email_digests: { type: :boolean },
                      email_level: { type: :integer },
                      email_messages_level: { type: :integer },
                      external_links_in_new_tab: { type: :boolean },
                      color_scheme_id: { type: :string, nullable: true },
                      dark_scheme_id: { type: :string, nullable: true },
                      dynamic_favicon: { type: :boolean },
                      enable_quoting: { type: :boolean },
                      enable_defer: { type: :boolean },
                      digest_after_minutes: { type: :integer },
                      automatically_unpin_topics: { type: :boolean },
                      auto_track_topics_after_msecs: { type: :integer },
                      notification_level_when_replying: { type: :integer },
                      new_topic_duration_minutes: { type: :integer },
                      email_previous_replies: { type: :integer },
                      email_in_reply_to: { type: :boolean },
                      like_notification_frequency: { type: :integer },
                      include_tl0_in_digests: { type: :boolean },
                      theme_ids: {
                        type: :array,
                        items: {
                        },
                      },
                      theme_key_seq: { type: :integer },
                      allow_private_messages: { type: :boolean },
                      enable_allowed_pm_users: { type: :boolean },
                      homepage_id: { type: :string, nullable: true },
                      hide_profile_and_presence: { type: :boolean },
                      text_size: { type: :string },
                      text_size_seq: { type: :integer },
                      title_count_mode: { type: :string },
                      timezone: { type: :string, nullable: true },
                      skip_new_user_tips: { type: :boolean },
                    }
                  },
                }
              },
            }
          }
        }
      }
    }
  }

  # Specify the format of the output Swagger file when running 'rswag:specs:swaggerize'.
  # The swagger_docs configuration option has the filename including format in
  # the key, this may want to be changed to avoid putting yaml in json files.
  # Defaults to json. Accepts ':json' and ':yaml'.
  config.swagger_format = :yaml
end
