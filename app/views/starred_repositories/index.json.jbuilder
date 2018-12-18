# frozen_string_literal: true

json.array! @starred_repositories, partial: 'starred_repositories/starred_repository', as: :starred_repository
