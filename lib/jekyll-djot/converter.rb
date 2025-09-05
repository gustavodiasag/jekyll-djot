# frozen_string_literal: true

module Jekyll
  module Converters
    # Djot converter.
    # For more info on the format see https://djot.net/
    class Djot < Converter
      # safe true

      def initialize(config = {})
        require "djotter"

        # Jekyll::External.require_with_graceful_fail("djotter")
      end

      # Does the given extension match this converter's list of acceptable extensions?
      # Takes one argument: the file's extension (including the dot).
      #
      # ext - The String extension to check.
      #
      # Returns true if it matches, false otherwise.
      def matches(ext)
        ext =~ /^.dj$/
      end

      # Public: The extension to be given to the output file (including the dot).
      #
      # ext - The String extension or original file.
      #
      # Returns The String output file extension.
      def output_ext(_ext)
        ".html"
      end

      # Logic to do the content conversion.
      #
      # content - String content of file (without front matter).
      #
      # Returns a String of the converted content.
      def convert(content)
        ::Djotter.to_html(content)
      end
    end
  end
end
