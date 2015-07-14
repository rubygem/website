# coding: utf-8

require "form_data/file"
require "form_data/multipart"
require "form_data/urlencoded"
require "form_data/version"

# Utility-belt to build form data request bodies.
# Provides support for `application/x-www-form-urlencoded` and
# `multipart/form-data` types.
#
# @example Usage
#
#   form = FormData.create({
#     :username     => "ixti",
#     :avatar_file  => FormData::File.new("/home/ixti/avatar.png")
#   })
#
#   # Assuming socket is an open socket to some HTTP server
#   socket << "POST /some-url HTTP/1.1\r\n"
#   socket << "Host: example.com\r\n"
#   socket << "Content-Type: #{form.content_type}\r\n"
#   socket << "Content-Length: #{form.content_length}\r\n"
#   socket << "\r\n"
#   socket << form.to_s
module FormData
  # CRLF
  CRLF = "\r\n".freeze

  # Generic FormData error.
  class Error < StandardError; end

  class << self
    # FormData factory. Automatically selects best type depending on given
    # `data` Hash.
    #
    # @param [#to_h, Hash] data
    # @return [Multipart] if any of values is a {FormData::File}
    # @return [Urlencoded] otherwise
    def create(data)
      data  = ensure_hash data
      klass = multipart?(data) ? Multipart : Urlencoded

      klass.new data
    end

    # Dummy object to Hash coercing.
    #
    # @note This is an internal shim for Ruby < 2.1 support
    # @raise [Error] if can't coerce `obj` to Hash.
    # @return [Hash]
    def ensure_hash(obj)
      case
      when obj.nil?               then {}
      when obj.is_a?(Hash)        then obj
      when obj.respond_to?(:to_h) then obj.to_h
      else fail Error, "#{obj.inspect} is neither Hash nor responds to :to_h"
      end
    end

    private

    # Tells whenever data contains multipart data or not.
    #
    # @param [Hash] data
    # @return [Boolean]
    def multipart?(data)
      data.any? do |_, v|
        next true if v.is_a? FormData::File
        v.respond_to?(:to_ary) && v.to_ary.any? { |av| av.is_a? FormData::File }
      end
    end
  end
end
