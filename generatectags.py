from subprocess import call
import sys
import os

if __name__ == '__main__':
    targets = sys.argv[1:]
    if len( targets ) == 0:
       targets=['External', 'Applications', 'Components', 'Libraries']
    generalParams = [ 
        '--exclude=*win32*', 
        '--exclude=*win64*', 
        '--exclude=*.dll', 
        '--exclude=*.lib', 
        '--exclude=*.man',
        '--exclude=*.syn',
        '--exclude=*.ui',
        '--exclude=*.in',
        '--exclude=*/jam*',
        '--exclude=*/res*',
        '--exclude=*CVS*',
        '--exclude=*IDESupport*',
        '--exclude=*~',
        '--exclude=*.dep',
        '--exclude=*.swp',
        '--exclude=*.xml',
        '--exclude=*.exe',
        '--exclude=*.rc',
        '--exclude=*.txt',
        '--exclude=Jamfile',
        '--exclude=itestresult',
        '--exclude=*.conf',
        '--exclude=*.chm',
        '--languages=c++', 
        '-h', '.h.hpp', 
        '--fields=+l',
        '-R' ]
    wdBackup = os.getcwd()
    os.chdir( os.path.join( os.getenv('REPOSITORY_BASE'), 'source/cpp' ) )
    print "Working in: " + os.getcwd()
    for target in targets:
       print """Generating tags for """ + target + """ direcotry ..."""
       tagsFile = target + '.ctags'
       newTagsFile = tagsFile + '.tmp'
       params = ['C:\\Users\\tma\\vimfiles\\ctags', '-f', newTagsFile ] + generalParams
       params.append( './' + target )
       call( params )
       if os.path.exists( tagsFile ):
           os.remove( tagsFile )
       os.rename( newTagsFile, tagsFile )
    os.chdir( wdBackup )
