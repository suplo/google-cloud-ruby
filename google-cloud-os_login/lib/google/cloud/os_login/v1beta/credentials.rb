# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require "googleauth"

module Google
  module Cloud
    module OsLogin
      module V1beta
        class Credentials < Google::Auth::Credentials
          SCOPE = [
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/compute.readonly"
          ].freeze
          PATH_ENV_VARS = %w(OS_LOGIN_CREDENTIALS
                             OS_LOGIN_KEYFILE
                             GOOGLE_CLOUD_CREDENTIALS
                             GOOGLE_CLOUD_KEYFILE
                             GCLOUD_KEYFILE)
          JSON_ENV_VARS = %w(OS_LOGIN_CREDENTIALS_JSON
                             OS_LOGIN_KEYFILE_JSON
                             GOOGLE_CLOUD_CREDENTIALS_JSON
                             GOOGLE_CLOUD_KEYFILE_JSON
                             GCLOUD_KEYFILE_JSON)
          DEFAULT_PATHS = ["~/.config/gcloud/application_default_credentials.json"]
        end
      end
    end
  end
end
