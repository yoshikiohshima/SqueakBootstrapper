SystemOrganization removeCategoriesMatching: 'Tweak*'.
SystemOrganization removeCategoriesMatching: 'Sugar*'.
SystemOrganization removeCategoriesMatching: 'VideoForSqueak*'.
SystemOrganization removeCategoriesMatching: 'WS-*'.
SystemOrganization removeCategoriesMatching: 'Meta-*'.
SystemOrganization removeCategoriesMatching: 'SISS-*'.
SystemOrganization removeCategoriesMatching: 'Sound-Ogg*'.
SystemOrganization removeCategoriesMatching: 'Etoys-Scheduling*'.
SystemOrganization removeCategoriesMatching: 'Morphic-NumberRod*'.
SystemOrganization removeCategoriesMatching: 'OmniUser'.
SystemOrganization removeCategoriesMatching: 'AnIDE-*'.
SystemOrganization removeCategoriesMatching: 'OMeta'.
SystemOrganization removeCategoriesMatching: 'CodeWorks'.
SystemOrganization removeCategoriesMatching: 'IObjects*'.
SystemOrganization removeCategoriesMatching: 'BUI*'.
SystemOrganization removeCategoriesMatching: 'Undo*'.
SystemOrganization removeCategoriesMatching: '*Pepsi*'.
SystemOrganization removeCategoriesMatching: 'Specification*'.
SystemOrganization removeCategoriesMatching: 'OMeta-reverse*'.
SystemOrganization removeCategoriesMatching: 'RCCola*'.
SystemOrganization removeCategoriesMatching: 'LObjects*'.
SystemOrganization removeCategoriesMatching: 'LDBJr'.
SystemOrganization removeCategoriesMatching: 'TMP-LObjects'.
SystemOrganization removeCategoriesMatching: 'GeziraBindings-*'.
SystemOrganization removeCategoriesMatching: 'Nile*'.
SystemOrganization removeCategoriesMatching: 'W2Prims*'.
SystemOrganization removeCategoriesMatching: 'ForAll*'.
SystemOrganization removeCategoriesMatching: 'EPub*'.
SystemOrganization removeCategoriesMatching: 'LLL*'.
SystemOrganization removeCategoriesMatching: 'Quarantined-*'.

SystemOrganization removeCategoriesMatching: 'MSqueak-Gezira*'.
SystemOrganization removeCategoriesMatching: 'MSqueak-LObjects*'.
SystemOrganization removeCategoriesMatching: 'MSqueak-Fonts*'.
SystemOrganization removeCategoriesMatching: 'MSqueak-Streams-Test'.
SystemOrganization removeCategoriesMatching: 'MSqueak-Classes-Test'.
SystemOrganization removeCategoriesMatching: 'MSqueak-Test'.
SystemOrganization removeCategoriesMatching: 'MicroSqueak-Collections-Support'.

Utilities classPool at: #UpdateUrlLists put: nil.
Smalltalk zapAllOtherProjects.
ReleaseBuilder new cleanUpChanges.
ChangeSet noChanges
