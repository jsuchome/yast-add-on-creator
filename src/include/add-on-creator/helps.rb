# encoding: utf-8

# ------------------------------------------------------------------------------
# Copyright (c) 2006-2012 Novell, Inc. All Rights Reserved.
#
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of version 2 of the GNU General Public License as published by the
# Free Software Foundation.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, contact Novell, Inc.
#
# To contact Novell about this file by physical or electronic mail, you may find
# current contact information at www.novell.com.
# ------------------------------------------------------------------------------

# File:	include/add-on-creator/helps.ycp
# Package:	Configuration of add-on-creator
# Summary:	Help texts of all the dialogs
# Authors:	Jiri Suchomel <jsuchome@suse.cz>
#
# $Id$
module Yast
  module AddOnCreatorHelpsInclude
    def initialize_add_on_creator_helps(include_target)
      textdomain "add-on-creator"

      # All helps are here
      @HELPS = {
        # Build dialog help
        "build"    => _(
          "<p><b><big>Creating the Add-On</big></b><br>\nPlease wait...<br></p>\n"
        ),
        # Write dialog help
        "write"    => _(
          "<p>Writing the add-on configurations<br>\n</p>\n"
        ),
        # help text for start menu
        "start"    => _(
          "<p>This module offers guidance for the creation of an add-on product.</p>"
        ) +
          # help text for start menu, cont.
          _(
            "<p>Select how to create the new add-on product. You can create it from the beginning or base it on an existing product.</p>"
          ) +
          # help text for start menu, cont.
          _(
            "<p>When basing the new product on an existing product, check <b>Generate Package Descriptions</b> to generate new descriptions of packages in the existing product.</p>"
          ),
        # help text for initial data (paragraph title)
        "sources"  => _(
          "<p><b>Name and Version</b></p>"
        ) +
          # help text for initial data, cont.
          _("<p>Enter the name and version of add-on product.</p>") +
          # help text for initial data, cont.
          _("<p><b>Required Product</b></p>") +
          # help text for initial data, cont.
          _(
            "<p>Select the product to which the new add-on product can be applied. This selection forms the <b>REQUIRES</b> value of the <tt>content</tt> file.</p>"
          ) +
          # help text for initial data (paragraph title), cont.
          _("<p><b>Add-On Packages</b></p>") +
          # help text for initial data, cont.
          _(
            "<p>Choose the path to the directory containing the RPM packages that should form your add-on product.</p>"
          ) +
          # help text for initial data (paragraph title), cont.
          _("<p><b>Required Product Packages</b></p>") +
          # help text for initial data, cont.
          _(
            "<p>Optionally, choose the path to the directory containing the RPM packages from the product the add-on product should be based on. These packages will not be contained in the add-on product, but could be used for creating the patterns later in the workflow.</p>"
          ),
        # help text for content file editor (<tt>content</tt> is a name of file)
        "content"  => _(
          "<p>Here, edit the values of the <tt>content</tt> file.</p>"
        ) +
          # help text for content file editor, cont.
          _(
            "<p>Enter the information required to identify the add-on product. Deselect <b>Show Only Required Keywords</b> to see all attributes of the <tt>content</tt> file.</p>"
          ) +
          # help text for content file editor, cont.
          _(
            "<p>Use <b>Import</b> to import an existing <tt>content</tt> file.</p>"
          ),
        # help text for package description files
        "packages" => _(
          "<p>Edit the language-specific descriptions of packages (<tt>packages.lang</tt> files) here.</p>"
        ) +
          # help text for package description files, cont.
          _(
            "<p>Use <b>Add Language</b> to add a description file for a new language. The list of available languages is read from the <b>LINGUAS</b> value of the <tt>content</tt> file. Import an existing file with package descriptions with <b>Import</b>. Delete the description file with <b>Delete</b>.</p>"
          ) +
          # help text for package description files, cont.
          _(
            "<p>Use <b>Add</b> and <b>Edit</b> in the second table to modify description entries for the selected package.</p>"
          ) +
          # help text for package description files, cont.
          _(
            "<p>Optionally, choose the path for the file providing <b>Additional Package Dependencies</b> (EXTRA_PROV).</p>"
          ),
        # help text for patterns
        "patterns" => _(
          "<p>Create and edit the patterns for the add-on product here.</p>"
        ) +
          # help text for patterns, cont.
          _(
            "<p>Use <b>New</b> to create a new pattern or <b>Import</b> to import an existing one.</p>"
          ) +
          # help text for patterns, cont.
          _(
            "<p>Use <b>Add</b> and <b>Edit</b> in the second table to modify pattern attributes.</p>"
          ) +
          # help text for patterns, cont.
          _(
            "<p>Check <b>Required pattern</b> to mark the selected pattern as required for\nthe add-on product. Such a pattern will be automatically preselected when the installation of the add-on product is started.</p>"
          ),
        # help text for the 'various settings' dialog
        "output"   => _(
          "<p>Specify the path to the directory in which the add-on product should be created. Select <b>Create ISO Image</b> to create the ISO image of the product in the output directory.</p>"
        ) +
          # help text for the 'various settings' dialog
          _(
            "<p>Use <b>Generate Changelog</b> to generate a changelog file containing all changes of packages on the add-on product made in the last two years.</p>"
          ) +
          # help text for the 'various settings' dialog
          _(
            "<p>Adapt the workflow of the add-on product with <b>Configure Workflow</b>. Use <b>Optional Files</b> to configure texts of <tt>README</tt> files, licenses, and other optional values.</p>"
          ),
        # workflow help text
        "workflow" => _(
          "<p>Here, you can enter the files necessary for customizing your add-on product workflow.</p>"
        ) +
          # workflow help text
          _(
            "<p>Enter the location of the file with the workflow description. This file is an alternative to <tt>control.xml</tt> and is saved as <tt>installation.xml</tt> in the add-on product's base directory.</p>"
          ) +
          # workflow help text
          _(
            "<p>To use custom YaST modules during the installation of the add-on product, enter the path to the <tt>y2update.tgz</tt> archive where these modules are stored or configure the contents of <tt>y2update.tgz</tt> by specifying the YaST RPM packages in <b>Import the Packages</b>.</p>"
          ),
        # help text for expert dialog 1
        "expert"   => _(
          "<p>The optional <tt>info.txt</tt> file gives information about the add-on that should be displayed as a pop-up window with an <b>OK</b> button.</p>"
        ) +
          # help text for expert dialog 1, cont
          _(
            "<p>The text of the license is displayed in a window with <b>Agree</b> and <b>Disagree</b> buttons before the installation starts. The files with the license texts in different languages are compressed to the <tt>license.zip</tt> archive and stored in the <tt>media.1</tt> directory.</p>"
          ),
        # help text for expert dialog 2
        "expert2"  => _(
          "<p>The <tt>COPYRIGHT</tt> and <tt>COPYING</tt> files can have various language modifications and are stored in the root directory of the add-on product.</p>"
        ),
        # help text for signing dialog
        "signing"  => _(
          "<p>Here, configure the signing of the add-on product. Choose a secret key from the list of keys available or create a new one with <b>Create</b>.</p>"
        ) +
          # help text for signing dialog, cont.
          _("<p>Enter the passphrase needed to unlock the secret key.</p>") +
          # help text for signing dialog, cont.
          _(
            "<p>Decide if you want to <b>Sign All Packages</b> of the add-on product with the selected key. All previous package signatures will be removed.</p>"
          ),
        # help text for generating new key dialog
        "generate" => _(
          "<p>Enter the values necessary for generating the new primary key pair.</p>"
        ) +
          # help text for generating new key dialog, cont.
          _(
            "<p>The default size of a DSA key is 1024 bits. RSA keys may be between 1024 and 4096 bits long.</p>"
          ) +
          # help text for generating new key dialog, cont.
          _(
            "<p>As <b>Expiration Date</b>, enter the number of days after which the key expires. If the number is followed by <tt>w</tt>,<tt>m</tt>, or <tt>y</tt>, it indicates the number of weeks, months, or years. Leave the entry empty for a key that never expires.</p>"
          ) +
          # help text for generating new key dialog, cont.
          _(
            "<p>Use <b>Name</b>, <b>Comment</b>, and <b>E-Mail Address</b> to provide the user identification with which the new key should be associated.</p>"
          ),
        # help text for overview dialog
        "overview" => _(
          "<p>Here, see the overview of data for generating the add-on product.</p>"
        ) +
          # help text for overview dialog, cont.
          _(
            "<p>Press <b>Finish</b> to create the add-on product in the output directory.</p>"
          )
      } 

      # EOF
    end
  end
end
