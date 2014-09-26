import os
import subprocess

def cleanfiles(targetdir,auxfiletypes):
    liste = []
    [[liste.append(os.path.join(targetdir,m)) for m in os.listdir(targetdir) if m[-4:] == x] for x in auxfiletypes]
    #print liste
    return liste


#auxilary files to delete when cleaning up
auxfiletypes = ['.log','.bak', '.aux','.bbl', '.blg' ,'.idx' ,'.brf' ,'.out' ,'.nlo' ,'.nls' ,'.ilg' ,'.ind' ,'.lof', '.lot','.toc']


# creating environment
env = Environment(ENV = os.environ, PDFLATEX = 'xelatex')

# Look in main-directory for .sty files
env['ENV']['TEXINPUTS'] = ":.:" + os.getcwd()

# debug output..
print "BUILD_TARGETS is", map(str, BUILD_TARGETS)



# build environments for the units
quick = env.PDF('quicksheet.tex')
Alias ('quick',quick)
    
script = env.PDF('script/script.tex')
Alias ('script',script)


targets =  ['einheit01','einheit02','einheit03','einheit04','einheit05','einheit06','einheit07','einheit08']
for t in targets:    
  # files for units
  lect = t + '/' + t + '.tex'
  env.PDF(lect)
  exer = t + '/uebung/aufgaben_einh' + t[-2:] + '.tex'
  env.PDF(exer)
  files = Glob(t+'/*.m') + Glob(t+'/*.py') + Glob(t+'/uebung/*.pdf') + Glob(t+'/*.pdf') + Glob(t+'/*.c') + Glob(t+'/uebung/*.dat')
  zipper = env.Zip(t+'/'+t+'.zip',files)
  #dir = os.path.dirname(lect)
  #if dir == '': 
  #    dir = '.'
  #print dir
  #env.Clean(t, cleanfiles(dir,auxfiletypes))

def PhonyTargets(env = None, **kw):
  if not env: env = DefaultEnvironment()
  for target,action in kw.items():
    env.AlwaysBuild(env.Alias(target, [], action))

PhonyTargets(ZIPS = 'zip ')

#TODO: nachbearbeitung pdf2pdf damit drucken funktioniert..

#xhtml : $(FILE).tex $(SRC) $(BIB)
#    #bibtex aufrufen?
#    htlatex $(FILE).tex "xhtml,jsmath,charset=utf-8" " -cunihtf -utf8" "-cvalidate"

#The other environment variables that control the executables (and their default values) are:
#    env['TEX']      = 'tex'
#    env['TEXFLAGS'] = SCons.Util.CLVar('-interaction=nonstopmode -recorder')
#
#    env['PDFTEX']      = 'pdftex'
#    env['PDFTEXFLAGS'] = SCons.Util.CLVar('-interaction=nonstopmode -recorder')
#
#    env['LATEX']        = 'latex'
#    env['LATEXFLAGS']   = SCons.Util.CLVar('-interaction=nonstopmode -recorder')
#
#    env['PDFLATEX']      = 'pdflatex'
#    env['PDFLATEXFLAGS'] = SCons.Util.CLVar('-interaction=nonstopmode -recorder')
#
#    env['BIBTEX']      = 'bibtex'
#
#    env['MAKEINDEX']      = 'makeindex'


