import re
from RemarkSlide import RemarkSlide

##
# A slide for wiki content from a Djanjo Wiki (https://github.com/django-wiki/django-wiki)
class DjangoWikiSlide(RemarkSlide):

  @staticmethod
  def validParams():
    params = RemarkSlide.validParams()
    return params

  # When reading the markdown these replacements are made
  replace = [('&amp;', '&'), ('&lt;', '<'), ('&gt;', '>'), ('\r\n', '\n'), ('&quot;', '"'), ('\r', '')]

  ##
  # Constructor
  # @param id The numeric slide id
  # @param markdown The raw markdown for this slide
  # @param kwargs Optional key, value pairs
  def __init__(self, params):
    RemarkSlide.__init__(self, params, image_type = 'DjangoWikiImage')

    # Storage for comments
    self.__comments = []


  ##
  # Parse the markdown retrieved from a Django wiki
  # @param markdown The raw markdown for the current slide
  def parse(self, markdown):
    markdown = RemarkSlide.parse(self, markdown)

    # Replace special characters
    for item in self.replace:
      markdown = markdown.replace(item[0], item[1])

    # Equations
    pattern = re.compile('(\${2,})(.*?)\${2,}', re.S)
    for m in pattern.finditer(markdown):

      # Inline
      if m.group(1) == '$$':
        markdown = markdown.replace(m.group(0), '`$ ' + m.group(2) + ' $`')

      elif m.group(1) == '$$$':
        markdown = markdown.replace(m.group(0), '`$$ ' + m.group(2) + ' $$`')

      else:
        print 'ERROR parsing equation on slide', self.name()
        print '  ', m.group(2)

    # Handle in-list code
    # The Django-wiki doesn't seem to support highlighted code blocks nested under a list item,
    # indenting the code block removes the code block, so all blocks in the wiki must be as follows:
    #
    # - A list item
    # ```c++
    # unsigned int - = 0
    # ```
    #
    # However, RemarkJS does support indented code blocks, but these blocks need to be indented by
    # four spaces. The following preforms this indenting.
    regex = re.compile(r'(^\s*[\*-].*?\n)(```.*?```\s*\n)', re.MULTILINE|re.DOTALL)
    markdown = regex.sub(self.__subIndentListNestedCode, markdown)

    # Extract comments
    markdown = re.sub(r'(?<![^\s.])(\s*\[\]\(\?\?\?\s*(.*?)\))', self.__subStoreComment, markdown, re.DOTALL)

    # Add the comments at the end
    if self.__comments:
      prefix = '\n'
      if len(self.__comments) > 1:
        prefix = '\n- '

      markdown += '\n???\n'
      for c in self.__comments:
        markdown += prefix + c

    # Return the markdown
    return markdown


  ##
  # Substitution function for extracting Remark comments (private)
  # @param The re Match object, see re.sub
  def __subStoreComment(self, match):
    self.__comments.append(match.group(2).strip())
    return ''


  ##
  # Substitution function for nesting code in lists (private)
  # @param The re Match object, see re.sub
  def __subIndentListNestedCode(self, match):

    # Perform an additional match to check if the ``` directly below the list item
    sub_match = re.search(r'(^\s*[\*-].*?\n)(```)', match.group(0), re.MULTILINE)

    # If so, then build the indented output
    if sub_match:
      output = '\n' + match.group(1)
      for line in match.group(2).split('\n')[0:-1]: #[0:-1] removes the empty string at the end of the list
        output += ' '*4 + line + '\n'
      return output

    else:
      return match.group(0)
