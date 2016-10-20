#!/bin/sh

# DEFINE TEMPLATES ############################################################

TODO_AUTHOR_NAME="Jérémie DECOCK"
TODO_AUTHOR_EMAIL="jd.jdhp@gmail.com"
TODO_AUTHOR_WEB_SITE="www.jdhp.org"

TODO_COPYRIGHT_YEARS="2016"
TODO_COPYRIGHT_NOTICE="Copyright (c) ${TODO_COPYRIGHT_YEARS} ${TODO_AUTHOR_NAME} (${TODO_AUTHOR_WEB_SITE})"

TODO_DOCUMENT_INIT_DATE="YYYY-MM-DD"            # TODO

TODO_DOCUMENT_TITLE="TODO"                      # TODO
TODO_DOCUMENT_SUBTITLE="TODO"                   # TODO
TODO_DOCUMENT_FILE_BASE_NAME="TODO"             # TODO

TODO_DOCUMENT_WEB_SITE_URL="http://www.jdhp.org/projects_en.html#${TODO_DOCUMENT_FILE_BASE_NAME}"
TODO_DOCUMENT_HTML_URL="http://www.jdhp.org/docs/${TODO_DOCUMENT_FILE_BASE_NAME}/${TODO_DOCUMENT_FILE_BASE_NAME}.html"
TODO_DOCUMENT_PDF_URL="http://www.jdhp.org/dl/pdf/${TODO_DOCUMENT_FILE_BASE_NAME}.pdf"

TODO_DOCUMENT_GITHUB_ACCOUNT="jdhp-docs"        # TODO
TODO_DOCUMENT_GITHUB_REPOSITORY_NAME="TODO"     # TODO

TODO_DOCUMENT_GITHUB_URL="https://github.com/${TODO_DOCUMENT_GITHUB_ACCOUNT}/${TODO_DOCUMENT_GITHUB_REPOSITORY_NAME}"
TODO_DOCUMENT_ISSUE_TRACKER_URL="https://github.com/${TODO_DOCUMENT_GITHUB_ACCOUNT}/${TODO_DOCUMENT_GITHUB_REPOSITORY_NAME}/issues"


# MAKE SUBSTITUTIONS ##########################################################

sed -i "" \
    -e "s/TODO_AUTHOR_NAME/${TODO_AUTHOR_NAME}/g" \
    -e "s/TODO_AUTHOR_EMAIL/${TODO_AUTHOR_EMAIL}/g" \
    -e "s TODO_AUTHOR_WEB_SITE ${TODO_AUTHOR_WEB_SITE} g" \
    -e "s|TODO_COPYRIGHT_NOTICE|${TODO_COPYRIGHT_NOTICE}|g" \
    -e "s;TODO_DOCUMENT_INIT_DATE;${TODO_DOCUMENT_INIT_DATE};g" \
    -e "s;TODO_DOCUMENT_TITLE;${TODO_DOCUMENT_TITLE};g" \
    -e "s;TODO_DOCUMENT_SUBTITLE;${TODO_DOCUMENT_SUBTITLE};g" \
    -e "s/TODO_DOCUMENT_FILE_BASE_NAME/${TODO_DOCUMENT_FILE_BASE_NAME}/g" \
    -e "s TODO_DOCUMENT_WEB_SITE_URL ${TODO_DOCUMENT_WEB_SITE_URL} g" \
    -e "s TODO_DOCUMENT_HTML_URL ${TODO_DOCUMENT_HTML_URL} g" \
    -e "s TODO_DOCUMENT_PDF_URL ${TODO_DOCUMENT_PDF_URL} g" \
    -e "s/TODO_DOCUMENT_GITHUB_ACCOUNT/${TODO_DOCUMENT_GITHUB_ACCOUNT}/g" \
    -e "s/TODO_DOCUMENT_GITHUB_REPOSITORY_NAME/${TODO_DOCUMENT_GITHUB_REPOSITORY_NAME}/g" \
    -e "s TODO_DOCUMENT_GITHUB_URL ${TODO_DOCUMENT_GITHUB_URL} g" \
    -e "s TODO_DOCUMENT_ISSUE_TRACKER_URL ${TODO_DOCUMENT_ISSUE_TRACKER_URL} g" \
    AUTHORS README.rst


# FIX TITLES UNDERLINE LENGTH IN RESTRUCTUREDTEXT FILES #######################

DOCUMENT_TITLE_UNDERLINE=$(echo "${TODO_DOCUMENT_TITLE}" | tr '[:print:]' '=')

sed -i "" \
    -e "s/====/${DOCUMENT_TITLE_UNDERLINE}/" \
    README.rst

