import maya.cmds as cmds
import json
import system.utils as utils
import pymel.core as pm
import os


"""
NOTES
Cant hookup minor translate to more than to major.  Mouth corner
"""
class Face_Rigger:

    def __init__(self):
        self.filepath = 'C:/Users/Griffy/Documents/GitHub/griff_Face_rigger/'
        self.ui()

    def ui(self, *args):
        
        self.UIElements = {}

        self.windowName = "Griff_Face_Rigger"
        if cmds.window(self.windowName, exists=True):
            cmds.deleteUI(self.windowName)

        """ Define UI elements width and height """
        self.windowWidth = 340
        self.windowHeight = 300

        self.buttonWidth = 340
        self.buttonHeight = 30

        self.UIElements["window"] = cmds.window(self.windowName, width=self.windowWidth, height=self.windowHeight,
                                    title="Grif_Face_Rigger", tlb=True, sizeable=True, mxb=False, mnb=False)

        self.UIElements["rowAFlowLayout"] = cmds.flowLayout(v=True, width=self.windowWidth, height=self.windowHeight, bgc=[0.3, 0.3, 0.3], p=self.UIElements["window"])

        self.UIElements['loadlyt_textfield'] = cmds.textField(width=self.windowWidth)
        
        annotation = "Load a face layout object"
        self.UIElements["loadlyt_button"] = cmds.button(label='Load Layout', p=self.UIElements["rowAFlowLayout"],
                                           w=self.buttonWidth,  bgc=[0.3, 0.3, 0.3], ann=annotation, c=self.loadLayout)

        self.UIElements["buildrig_button"] = cmds.button(label='Rig Part', p=self.UIElements["rowAFlowLayout"],
                                           w=self.buttonWidth,  bgc=[0.3, 0.3, 0.3], ann=annotation, c=self.buildRigPart)
        cmds.separator(hr=False, w=5, p=self.UIElements["rowAFlowLayout"])

        self.UIElements["majoraxisMenu"] = cmds.optionMenu('major_transform', label='major transform',
                                                      ann='Choose the major controls transform.',
                                                      p=self.UIElements["rowAFlowLayout"])
        axisOptions = ('.tx', '.ty', '.tz', '.rx', '.ry', '.rz', '.sx', '.sy', '.sz')
        for item in axisOptions:
            self.UIElements[item + "majoraxisMenu"] = cmds.menuItem(label=item, p=self.UIElements["majoraxisMenu"])


        self.UIElements["minoraxisMenu"] = cmds.optionMenu('minor_transform', label='minor transform',
                                                           ann='Choose the major controls transform.',
                                                           p=self.UIElements["rowAFlowLayout"])

        axisOptions = ('.tx', '.ty', '.tz', '.rx', '.ry', '.rz', '.sx', '.sy', '.sz')
        for item in axisOptions:
            self.UIElements[item + "minoraxisMenu"] = cmds.menuItem(label=item, p=self.UIElements["minoraxisMenu"])

        self.UIElements['concb'] = cmds.checkBox( label='Conditional' )

        self.UIElements["pn_axisMenu"] = cmds.optionMenu('pos_neg', label='pos or neg',
                                                           ann='The minor is effected with pos or neg transform',
                                                           p=self.UIElements["rowAFlowLayout"])
        axisOptions = ('+', '-')
        for item in axisOptions:
            self.UIElements[item + "pn_axisMenu"] = cmds.menuItem(label=item, p=self.UIElements["pn_axisMenu"])


        self.UIElements["con_button"] = cmds.button(label='Connect Minor', p=self.UIElements["rowAFlowLayout"],
                                                         w=self.buttonWidth, bgc=[0.3, 0.3, 0.3], ann=annotation,
                                                         c=self.connectMajorToMinor)

        self.UIElements["bindjnt_button"] = cmds.button(label='Make Bind Jnts', p=self.UIElements["rowAFlowLayout"],
                                                         w=self.buttonWidth, bgc=[0.3, 0.3, 0.3], ann=annotation,
                                                         c=self.makeBindJnts)

        self.UIElements["mirrorrig_button"] = cmds.button(label='Mirror Rig Part', p=self.UIElements["rowAFlowLayout"],
                                                         w=self.buttonWidth, bgc=[0.3, 0.3, 0.3], ann=annotation,
                                                         c=self.mirrorRigPart)

        self.UIElements['rootname_textfield'] = cmds.textField(width=self.windowWidth)

        self.UIElements["mirrorrig_button"] = cmds.button(label='Create Minor', p=self.UIElements["rowAFlowLayout"],
                                                         w=self.buttonWidth, bgc=[0.3, 0.3, 0.3], ann=annotation,
                                                         c=self.createFollicleCtrlSetup)

        self.UIElements["mirrorlyt_button"] = cmds.button(label='Mirror Lyt', p=self.UIElements["rowAFlowLayout"],
                                                         w=self.buttonWidth, bgc=[0.3, 0.3, 0.3], ann=annotation,
                                                         c=self.mirrorLyt)

        self.UIElements["mirrormajorvals_button"] = cmds.button(label='Mirror Major Vals', p=self.UIElements["rowAFlowLayout"],
                                                         w=self.buttonWidth, bgc=[0.3, 0.3, 0.3], ann=annotation,
                                                         c=self.mirrorMajorVals)

        self.UIElements["lockhide_button"] = cmds.button(label='Lock Hide Controls', p=self.UIElements["rowAFlowLayout"],
                                                         w=self.buttonWidth, bgc=[0.3, 0.3, 0.3], ann=annotation,
                                                         c=self.lockHideControlAttrs)

        self.UIElements["nullcontrol_button"] = cmds.button(label='Null Control', p=self.UIElements["rowAFlowLayout"],
                                                         w=self.buttonWidth, bgc=[0.3, 0.3, 0.3], ann=annotation,
                                                         c=self.nullControlSetup)

        self.UIElements["consurface_button"] = cmds.button(label='surface To Main', p=self.UIElements["rowAFlowLayout"],
                                                         w=self.buttonWidth, bgc=[0.3, 0.3, 0.3], ann=annotation,
                                                         c=self.connectSurfaceToMajor)



        """ Show the window"""
        cmds.showWindow(self.windowName)

    """
    cmds.select('*_Surface')
surfaces = cmds.ls(sl=True)
cmds.select(d=True)
blendasset = cmds.container(n='blend_Asset')
grp = cmds.group(n='blend_Asset_GRP', em=True)
cmds.container(blendasset, edit=True, an=grp)
for s in surfaces:
    nn = s.replace('Surface', 'SurfaceBlend')
    dup = cmds.duplicate(s, n=nn)
    cmds.container(blendasset, edit=True, an=dup[0], f=True)
    cmds.parent*dup[0], grp)
    print cmds.blendShape(dup[0], s, n='FacTarget_' + dup[0])
    cmds.blendShape('FacTarget_' + dup[0], edit=True, en=1, w=[(0, 1)] ) 
    """
    def connectSurfaceToMajor(self, *args):
        if cmds.ls(sl=True) == []:
            return
        sel = cmds.ls(sl=True)
        if '_GRP' in sel[1]:
            # Get the position of the selected object
            mat = cmds.xform(sel[1], q=True, ws=True, m=True)
            # Make an empty group

            grpname = ('TransNull_' + sel[1])
            cmds.select(d=True)
            if cmds.objExists(grpname) == False:
                grp = cmds.group(n=grpname, em=True)
                cmds.xform(grp, ws=True, m=mat)
                # Get the object parent 
                p = cmds.listRelatives(sel[1], p=True)[0]
                cmds.parent(grp, p)
                cmds.parent(sel[1], grp)
            grp = grpname 
            """
            parcon = cmds.parentConstraint(sel[0], grp, mo=True)
            sccon = cmds.scaleConstraint(sel[0], grp, mo=True)

            attrname = sel[1] 
            if cmds.attributeQuery(attrname, node=sel[0], exists=True) == False:
                cmds.addAttr(sel[0], shortName=attrname, longName=attrname, min=-1, max=1, defaultValue=0.0, k=False)
            cmds.connectAttr(sel[0] +'.' + attrname, parcon[0] + '.' + sel[0] + 'W0')
            cmds.connectAttr(sel[0] +'.' + attrname, sccon[0] + '.' + sel[0] + 'W0')
            """

      
            # Make a multiplyDivide and pma
            pmat = cmds.shadingNode("plusMinusAverage", asUtility=True, n='pmaNode_ctrlNullT_' + sel[0])
            cmds.connectAttr(pmat+'.output3D', grp+'.translate')
            

            mdivt = cmds.shadingNode("multiplyDivide", asUtility=True, n='mdNode_ctrlNullT_' + sel[0])
            cmds.connectAttr(sel[0]+'.translate', mdivt+'.input1')
            
            attrname = sel[0] + '_' + sel[1] + '_Tran'
            if cmds.attributeQuery(attrname, node=sel[0], exists=True) == False:
                cmds.addAttr(sel[0], shortName=attrname, longName=attrname, min=-1, max=1, defaultValue=0.0, k=False)
            cmds.connectAttr(sel[0] + '.' + attrname, mdivt+'.input2X')
            cmds.connectAttr(sel[0] + '.' + attrname, mdivt+'.input2Y')
            cmds.connectAttr(sel[0] + '.' + attrname, mdivt+'.input2Z')

            cmds.connectAttr(mdivt+'.output', pmat + '.input3D[0]')

            # Rotate
            pmar = cmds.shadingNode("plusMinusAverage", asUtility=True, n='pmaNode_ctrlNullR_' + sel[0])
            cmds.connectAttr(pmar+'.output3D', grp+'.rotate')

            mdivr = cmds.shadingNode("multiplyDivide", asUtility=True, n='mdNode_ctrlNullR_' + sel[0])
            cmds.connectAttr(sel[0]+'.rotate', mdivr+'.input1')
            
            attrname = sel[0] + '_' + sel[1] + '_Rot'
            if cmds.attributeQuery(attrname, node=sel[0], exists=True) == False:
                cmds.addAttr(sel[0], shortName=attrname, longName=attrname, min=-1, max=1, defaultValue=0.0, k=False)
            cmds.connectAttr(sel[0] + '.' + attrname, mdivr+'.input2X')
            cmds.connectAttr(sel[0] + '.' + attrname, mdivr+'.input2Y')
            cmds.connectAttr(sel[0] + '.' + attrname, mdivr+'.input2Z')

            cmds.connectAttr(mdivr+'.output', pmar + '.input3D[0]')

            # Scale
            pmas = cmds.shadingNode("plusMinusAverage", asUtility=True, n='pmaNode_ctrlNullS_' + sel[0])
            cmds.connectAttr(pmar+'.output3D', grp+'.scale')

            mdivs = cmds.shadingNode("multiplyDivide", asUtility=True, n='mdNode_ctrlNullS_' + sel[0])
            cmds.connectAttr(sel[0]+'.rotate', mdivs+'.input1')
            
            attrname = sel[0] + '_' + sel[1] + '_Scale'
            if cmds.attributeQuery(attrname, node=sel[0], exists=True) == False:
                cmds.addAttr(sel[0], shortName=attrname, longName=attrname, min=-1, max=1, defaultValue=0.0, k=False)
            cmds.connectAttr(sel[0] + '.' + attrname, mdivs+'.input2X')
            cmds.connectAttr(sel[0] + '.' + attrname, mdivs+'.input2Y')
            cmds.connectAttr(sel[0] + '.' + attrname, mdivs+'.input2Z')

            cmds.connectAttr(mdivs+'.output', pmas + '.input3D[0]')
  
  
            cmds.select(sel[0])
        else:
            return

    def nullControlSetup(self, *args):
        if cmds.ls(sl=True) == []:
            return
        sel = cmds.ls(sl=True)
        # Get the position of the selected object
        for s in sel:
            mat = cmds.xform(s, q=True, ws=True, m=True)
            # Make an empty group
            if cmds.objExists==True:
                pass
            else:
                grpname = ('TransNull_' + s)
                cmds.select(d=True)
                grp = cmds.group(n=grpname, em=True)
                cmds.xform(grp, ws=True, m=mat)
                # Get the object parent 
                p = cmds.listRelatives(s, p=True)[0]
                cmds.parent(grp, p)
                cmds.parent(s, grp)
                # Make a multiplyDivide
                mdivt = cmds.shadingNode("multiplyDivide", asUtility=True, n='mdNode_ctrlNullT_' + s)
                cmds.connectAttr(s+'.translate', mdivt+'.input1')
                cmds.connectAttr(mdivt+'.output', grp+'.translate')
                cmds.setAttr(mdivt+'.input2X', -1)
                cmds.setAttr(mdivt+'.input2Y', -1)
                cmds.setAttr(mdivt+'.input2Z', -1)
                """
                mdivr = cmds.shadingNode("multiplyDivide", asUtility=True, n='mdNode_ctrlNullR_' + s)
                cmds.connectAttr(s+'.rotate', mdivr+'.input1')
                cmds.connectAttr(mdivr+'.output', grp+'.rotate')
                cmds.setAttr(mdivr+'.input2X', -1)
                cmds.setAttr(mdivr+'.input2Y', -1)
                cmds.setAttr(mdivr+'.input2Z', -1)
                """

    def lockHideControlAttrs(self, *args):
        if cmds.ls(sl=True) == []:
            return
        sel = cmds.ls(sl=True)
        for s in sel:
            cmds.transformLimits( s, tx=(-1, 1), ty=(-1, 1), tz=(-1, 1), rx=(-45, 45), ry=(-45, 45), rz=(-45, 45),
                etx=(True, True), ety=(True, True), etz=(True, True), erx=(True, True), ery=(True, True), erz=(True, True) )
            # Check if attribute has connection.
            attrlist = ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz', '.sx', '.sy', '.sz']
            for a in attrlist:
                iscon =  cmds.listConnections(s + a, d=True, s=False)
                if iscon == None:
                    cmds.setAttr(s + a, l=True)

    def mirrorMajorVals(self, *args):
        if len(cmds.ls(sl=True))==0:
            return
        sel = cmds.ls(sl=True)[0] 

        userattrs = cmds.listAttr(sel, ud=True)
        mname = sel.replace('L_', 'R_', 1)
        if cmds.objExists(mname)==True:
            for u in userattrs:
                mattr = u.replace('L_', 'R_', 1)
                val=cmds.getAttr(sel+'.'+u)
                try:
                    cmds.setAttr(mname+'.'+mattr, val)
                except: print mname+'.'+mattr

    def mirrorLyt(self, *args):
        """
        Requires the lyt to be mirrored and
        added to a namespace.
        """
        asset_info = {}
        if len(cmds.ls(sl=True))==0:
            return
        sel = cmds.ls(sl=True)[0]
        if cmds.nodeType(sel) != 'dagContainer':
            return
        assetcontents = cmds.container(sel, q=True, nl=True)
        print sel
        print assetcontents

        # Find the Main_GRP
        for a in assetcontents:
            if 'Main_GRP' in a:
                maingrp = a
        print maingrp        

        mmain = maingrp.replace('L_', 'R_')
        print mmain

        # Determine mirror namespace name
        tv = maingrp.partition(':')[0]
        mns = tv.replace('L_', 'R_')
        cmds.namespace(set=':')
        cmds.namespace(add=mns)
        cmds.namespace(set=mns)
 
        # Duplicate the Main_GRP
        nodedupe = cmds.duplicate(maingrp, ic=True, rc=True, un=True)

        mircon = cmds.container(n='FACE_LYT_01_AST')
        print mmain
        try:
            cmds.container(sel, edit=True, rn=mmain, force=True)
        except: pass

        cmds.container(mircon, edit=True, an=mmain, f=True)

        cmds.namespace(set=':')

        for n in nodedupe:
            cmds.container(mircon, edit=True, an=n, f=True)
            cmds.container(mircon, edit=True, an=n, f=True)

        



    def mirrorRigPart(self, *args):
        """
        Collect the contents of the asset selection
        and find all the hierarchy and connection
        relationships.
        """
        asset_info = {}
        if len(cmds.ls(sl=True))==0:
            return
        sel = cmds.ls(sl=True)[0]
        if cmds.nodeType(sel) != 'dagContainer':
            return
        assetcontents = cmds.container(sel, q=True, nl=True)

        # Find the Main_GRP
        for a in assetcontents:
            if 'Main_GRP' in a:
                maingrp = a
 
        # Duplicate the Main_GRP
        nodedupe = cmds.duplicate(maingrp, ic=True, rc=True, un=True)

        dupmajor = [] 
        namereplace = []
        attrconnect = []
 
        for node in nodedupe:
            if node.endswith('1') == True:
                nn = node.replace('L_', 'R_')[:-1]
            else:
                nn = node.replace('L_', 'R_')
            namereplace.append([node, nn])

            if '_Major_CTRL' in node:
                if cmds.nodeType(node) == 'transform':
                    if cmds.objExists(nn) == True:
                        attrs = cmds.listAttr(node, ud=True)
                        for a in attrs:
                            acons = cmds.listConnections(node + '.' + a, d=True, p=True)
                            if acons != None:
                                acon = acons[0].replace('_L_', '_R_')
                                attrconnect.append([nn[0] + '.' + a, acon])
                                try:
                                    cmds.connectAttr(nn + '.' + a, acons[0])
                                except: print (nn + '.' + a, acons[0])

                                try:
                                    cmds.connectAttr(nn + '.' + a, acon)
                                except: print (nn + '.' + a, acon)

                                
                        cmds.delete(node)
                    else:
                        attrs = cmds.listAttr(node, ud=True)
                        for a in attrs:
                            attrname = a.replace('L_', 'R_', 1)
                            cmds.renameAttr(node + '.' + a, attrname )

                        dupmajor.append(nn)

            if cmds.objExists(node) == True:  
                cmds.rename(node, nn)

        mirmaingrp = maingrp.replace('L_', 'R_')
        if cmds.objExists(mirmaingrp)==True:
            cmds.container(sel, edit=True, ish=True, it=True, rn=mirmaingrp)
            cmds.setAttr(mirmaingrp + '.sx', -1)
        else:
            print mirmaingrp

        if dupmajor != []:
            for d in dupmajor:
                if cmds.objExists(d) == True:
                    rot = cmds.xform(d, q=True, ws=True, ro=True)
                    pos = cmds.xform(d, q=True, ws=True, t=True)
                    grp = cmds.group(n=nn+'_GRP', em=True)
                    cmds.xform(grp, ws=True, ro=rot)
                    cmds.xform(grp, ws=True, t=pos)

                    mrot = [rot[0], -rot[1], rot[2]]
                    mpos = [-pos[0], pos[1], pos[2]]

                    nn = d.replace('L_', 'R_')
         
                    cmds.parent(nn, grp)
                    cmds.xform(grp, ws=True, ro=mrot)
                    cmds.xform(grp, ws=True, t=mpos)
                    cmds.setAttr(grp + '.sx', -1)




    def makeBindJnts(self, *args):
        cmds.select(d=True)
        cmds.select('*_RIGJNT')
        jntsel = cmds.ls(sl=True, type='joint')
        cmds.select(d=True)
        for j in jntsel:
            mat = cmds.xform(j, q=True, ws=True, m=True)
            bindname = j.replace('_RIGJNT', '_BINDJNT')
            if cmds.objExists(bindname)==False:     
                jnt = cmds.joint(n=bindname)
                cmds.select(d=True)
                cmds.xform(jnt, ws=True, m=mat)
                cmds.parentConstraint(j, jnt, mo=True)

    def loadLayout(self, *args):
        namespace = cmds.textField(self.UIElements['loadlyt_textfield'], q=True, tx=True)
        #NOTE: Check for namespace
        importfile = cmds.file(self.filepath+'facelyt/face_layout2.ma', i=True, namespace=namespace)
        if cmds.objExists(namespace+':'+'FACE_Main_CTRL'):
            cmds.select(namespace+':'+'FACE_Main_CTRL')
            try:
                w = cmds.camera('persp', q=True, wci=True)
                cmds.xform(namespace+':'+'FACE_Main_CTRL', ws=True, t=w)
            except: pass

    def buildRigPart(self, *args):
        # Find the layouts namespace
        sel = cmds.ls(sl=True)
        selcontainer = cmds.container(q=True, fc=sel[0])
        if cmds.nodeType(sel[0]) == 'dagContainer':
            selcontainer = sel[0]
        lytnamespace = selcontainer.partition(':')[0]

        # Delete history on the surface
        cmds.delete(lytnamespace + ':FACE_Surface', ch=True)
        cmds.setAttr(lytnamespace + ':FACE_SurfaceShape.overrideEnabled', 0)

        # Remove DELETE nodes
        cmds.select(lytnamespace + ":DELETE*")
        dnodes = cmds.ls(sl=True)
        cmds.delete(dnodes)

        # Turn off minor control drawing override
        cmds.setAttr(lytnamespace +':FACE_Minor_CTRL.overrideEnabled', 0)

        # Find and rename remaning nodes.
        containednodes = cmds.namespaceInfo(lytnamespace, lod=True)

        for n in containednodes:
            newname = n.replace('FACE', lytnamespace)
            try:
                cmds.rename(n, newname)
            except: pass

        cmds.namespace(mv=[lytnamespace, ':'], force=True)
        cmds.namespace(set=':')
        try:
            cmds.namespace(lytnamespace, rm=True, force=True)
        except: pass


    def connectMajorToMinor(self, *args):
        if len(cmds.ls(sl=True)) != 2:
            cmds.headsUpMessage("Please select a major control then shift select a minor control.")
            return
        sel = cmds.ls(sl=True)
        majorcontrol = sel[0]

        if 'Major_CTRL' not in majorcontrol:
            cmds.headsUpMessage('You must select a major control first')

        minorcontrol = sel[1]
        if 'Minor_CTRL' not in minorcontrol:
            cmds.headsUpMessage('You must select a minor control second')

        offsettrans = sel[1].replace('Minor_CTRL', 'OffsetLCTR_translation')
        offsetrot = sel[1].replace('Minor_CTRL', 'OffsetLCTR_rotation')
        offsetscale = sel[1].replace('Minor_CTRL', 'OffsetLCTR_scale')
        follicle = sel[1].replace('Minor_CTRL', 'Surface_Follicle') + 'Shape'

        # Query the input and output values from the ui
        inputattrs = cmds.optionMenu(self.UIElements["majoraxisMenu"], q=True, value=True)
        outputattrs = cmds.optionMenu(self.UIElements["minoraxisMenu"], q=True, value=True)
        inputname = inputattrs.replace('.', '')
        outputname = outputattrs.replace('.', '')

        rotvals = ('.rx', '.ry', '.rz')
        travalues = ('.tz')
        uvvals = ('.ty', '.tx')
        scalevals = ('.sx', '.sy', '.sz')

        # Define the attributes to connect to
        if outputattrs in rotvals:
            channel = outputattrs
            ingrp = offsetrot
            outsuffix = outputattrs
        if outputattrs in travalues:
            channel = outputattrs
            ingrp = offsettrans
            outsuffix = outputattrs
        if outputattrs == '.ty':
            channel = '.parameterV'
            ingrp = follicle
            outsuffix = '.ty'
        if outputattrs == '.tx':
            channel = '.parameterU'
            ingrp = follicle
            outsuffix = '.tx'
        if outputattrs in scalevals:
            channel = outputattrs
            ingrp = offsetscale
            outsuffix = outputattrs

        if cmds.checkBox(self.UIElements['concb'], q=True, v=True) == True:
            posneg = cmds.optionMenu(self.UIElements["pn_axisMenu"], q=True, value=True)
            if posneg == '+':
                pn = '_pos'
            if posneg == '-':
                pn = '_neg'
        else:
            pn = ""

        # Make an mdiv to offset the input value
        mdivname = "mdiv_offset_" + sel[0] + '.' + outputname + pn + "_" + sel[1]
        mdiv = cmds.shadingNode("multiplyDivide", asUtility=True, n=mdivname)

        # Determine the mdiv input to be connected
        inputsuffix = outsuffix[-1:].upper()

        pmanode = []
        # find the connected pma________________________________________.
        if outputattrs in uvvals:
            mnode = follicle
            #shape = cmds.listRelatives(mnode, s=True)
            cons = cmds.listConnections(mnode, scn=True)
            print "follicle has connection"
            print cons

            for c in cons:
                if 'pma_' in c:
                    pmanode = c
                    print "PMA Found"
                    print pmanode
            if pmanode == []:
                print "Make a PMA"
                # Make a pma node
                pmaname = "pma_blend_" + ingrp
                pmanode = cmds.shadingNode("plusMinusAverage", asUtility=True, n=pmaname)
                # Get the current uv of the follicle
                uv = cmds.getAttr(mnode + '.parameterU')
                vv = cmds.getAttr(mnode + '.parameterV')
                cmds.setAttr(pmanode + '.input3D[0].input3Dx', uv)
                cmds.setAttr(pmanode + '.input3D[0].input3Dy', vv)
        else:
            if outputattrs in travalues:
                mnode = offsettrans
            if outputattrs in rotvals:
                mnode = offsetrot
            if outputattrs in scalevals:
                mnode = offsetscale

            if cmds.nodeType(sel[1]) == 'transform':
                cons = cmds.listConnections(sel[1], scn=True)
                print cons
                if cons != None:                
                    for c in cons:
                        if 'pma_' in c:
                            print "PMA Found"
                            pmanode = c
                            print pmanode
                if pmanode == []:
                    print "Make a PMA"
                    # Make a pma node
                    pmaname = "pma_blend_" + ingrp
                    pmanode = cmds.shadingNode("plusMinusAverage", asUtility=True, n=pmaname)
        print pmanode
        # Find the next open pma input_______________________________.
        closed = [0]
        cons = cmds.listConnections(pmanode)
        print cons
        conattrs = []
        for c in cons:    
            if 'mdiv_' in c or 'con_' in c:
                possibleattrs = ['.outputX', '.outputY', '.outputZ', '.outColorR', '.outColorG', '.outColorB']
                a = None
                for p in possibleattrs:
                    print c
                    try:
                        a = cmds.listConnections(c+p, p=True)
                    except: pass
 
                    if a != None:
                        conattrs.append(a[0])
                
            if conattrs != []:   
                pmacon = []
                for each in conattrs:
                    if 'pma_' in each:
                        if each not in pmacon:
                            pmacon.append(each)
                for each in pmacon:
                    conattrnum = each.partition('.input3D[')[2][0]
                    if conattrnum not in closed:
                        closed.append(int(conattrnum))
        print conattrs
        newval = max(closed) + 1
        input = '[' + str(newval) + ']'
        print input

        # Add an attribute to the major control for effect amount.
        tvar = sel[1].replace('ctrl_', '')
        
        attrname = tvar + '_' + inputname + pn + '_' + outputname
        if cmds.attributeQuery(attrname, node=sel[0], exists=True) == False:
            cmds.addAttr(sel[0], shortName=attrname, longName=attrname, defaultValue=0.0, k=False)
        cmds.connectAttr(sel[0] + '.' + attrname, mdiv + '.input2' + inputsuffix)

        if cmds.checkBox(self.UIElements['concb'], q=True, v=True) == True:
            conname = "con_blend" + pn +'_' + sel[1]
            connode = cmds.shadingNode("condition", asUtility=True, n=conname)
            cmds.setAttr(connode + '.colorIfFalseB', 0)
            cmds.setAttr(connode + '.colorIfFalseR', 0)
            cmds.setAttr(connode + '.colorIfFalseG', 0)
            cmds.connectAttr(sel[0] + inputattrs, mdiv + '.input1' + inputsuffix)

            posneg = cmds.optionMenu(self.UIElements["pn_axisMenu"], q=True, value=True)

            if outsuffix[-1:] == 'x':
                consuffix = 'R'
            if outsuffix[-1:] == 'y':
                consuffix = 'G'
            if outsuffix[-1:] == 'z':
                consuffix = 'B'

            #Set the condition operation
            if posneg == '+':
                cmds.setAttr(connode + '.operation', 2)
            if posneg == '-':
                cmds.setAttr(connode + '.operation', 4)

            cmds.connectAttr(mdiv + '.output' + inputsuffix, connode + '.colorIfTrue' + consuffix)
            # connect the control to the mdiv
            cmds.connectAttr(sel[0] + inputattrs, connode + '.firstTerm')
            cmds.connectAttr(connode + '.outColor' + consuffix, pmanode + '.input3D' + input+ '.input3D' + outsuffix[-1:])
        else:
            # connect the control to the mdiv
            cmds.connectAttr(sel[0] + inputattrs, mdiv + '.input1' + inputsuffix)
            cmds.connectAttr(mdiv+'.output' + inputsuffix, pmanode + '.input3D' + input+ '.input3D' + outsuffix[-1:])

        print mdiv+'.output'
        print pmanode + '.input3D' + input + '.input3D' + outsuffix[-1:]
        # Connect the pma node to the appropriate sub control
        #if cmds.listConnections( ingrp + '.' + channel, d=False, s=True) == []:
        print pmanode + '.output3D' + outsuffix[-1:]
        print ingrp  + channel
        try:
            cmds.connectAttr(pmanode + '.output3D' + outsuffix[-1:], ingrp +  channel)
        except: print "Connection May Have Failed"


    def createFollicleCtrlSetup(self, *args):
        if cmds.ls(sl=True) == []:
            return cmds.headsUpMessage( 'Select a surface' )
        rootname =  cmds.textField(self.UIElements['rootname_textfield'], q=True, text=True)
        fol = self.create_follicle(pm.selected()[0], rootname +'_Surface_Follicle', 0.5, 0.5)
        self.createControlStructure(rootname, fol, rootname +'_Surface_Follicle')

    def create_follicle(self, oNurbs, name, uPos=0.0, vPos=0.0, *args):
        # manually place and connect a follicle onto a nurbs surface.
        if oNurbs.type() == 'transform':
            oNurbs = oNurbs.getShape()
        elif oNurbs.type() == 'nurbsSurface':
            pass
        else:
            'Warning: Input must be a nurbs surface.'
            return False

        # create a name with frame padding
        if name == 'None':
            pName = '_'.join((oNurbs.name(),'follicle','#'.zfill(2)))
        else:
            pName = name

        if "Shape" in pName:
            pName = pName.replace("Shape", "")

        oFoll = pm.createNode('follicle', name=pName+'Shape')

        try:
            cmds.setAttr(pName+'Shape.visibility', 0)
        except: pass

        oNurbs.local.connect(oFoll.inputSurface)
        # if using a polygon mesh, use this line instead.
        # (The polygons will need to have UVs in order to work.)
        #oMesh.outMesh.connect(oFoll.inMesh)

        oNurbs.worldMatrix[0].connect(oFoll.inputWorldMatrix)
        oFoll.outRotate.connect(oFoll.getParent().rotate)
        oFoll.outTranslate.connect(oFoll.getParent().translate)
        oFoll.parameterU.set(uPos)
        oFoll.parameterV.set(vPos)
        oFoll.getParent().t.lock()
        oFoll.getParent().r.lock()

        try:
            params =  cmds.listAttr(oFoll, k=True)
            oFoll = oFoll.replace('Shape', '')
            paramList = ('parameterU', 'parameterV')
            for p in params:
                if p not in paramList:
                    try:
                        cmds.setAttr(oFoll+'.'+p, k=False)
                    except:
                        print p
        except: pass

        fol = oFoll.replace('Shape', '')

        return (oFoll, fol)

    def createControlStructure(self, rootname, fol, orient, *args):
        folpos = cmds.xform(fol[1], q=True, ws=True, t=True)
        uv = cmds.getAttr('%s.parameterU' % fol[0])
        vv = cmds.getAttr('%s.parameterV' % fol[0])

        pma = cmds.shadingNode("plusMinusAverage", asUtility=True, n='pma_surf_%s' % rootname)
        cmds.setAttr('%s.input3D[0].input3Dx' % pma, vv)
        cmds.setAttr('%s.input3D[0].input3Dy' % pma, uv)

        lctroffset = cmds.spaceLocator(n=rootname+'_lctrOffset')
        lctroffsettrans = cmds.spaceLocator(n=rootname+'_OffsetLCTR_translation')
        lctroffsetrot = cmds.spaceLocator(n=rootname+'_OffsetLCTR_rotation')
        lctroffsetscale = cmds.spaceLocator(n=rootname+'_OffsetLCTR_scale')
        lctrsdk = cmds.spaceLocator(n=rootname+'_lctrSDK')

        locs = [lctroffset, lctroffsettrans, lctroffsetrot, lctroffsetscale, lctrsdk]
        for l in locs:
            cmds.setAttr('%sShape.visibility' % l[0], 0)

        grp = cmds.group(n=rootname+'_ZERO', em=True)

        jnt = cmds.joint(n=rootname+'_RIGJNT')
        cmds.setAttr('%s.visibility' % jnt, 0)

        importfile = cmds.file(self.filepath+'/controls/minor_control.ma', i=True, namespace=':')
        ctrl = 'FACE_Minor_CTRL'.replace('FACE', rootname) 
        ctrlgrp = 'FACE_Minor_CTRL_GRP'.replace('FACE', rootname) 
        cmds.rename('FACE_Minor_CTRL', ctrl)
        cmds.rename('FACE_Minor_CTRL_GRP', ctrlgrp)
        #ctrlshape = cmds.createNode('clCircle', n='ctrl_%s' % rootname +'Shape')
        #ctrlsp = cmds.listRelatives(ctrlshape, p=True)[0]
        #ctrl = 'ctrl_%s' % rootname
        #cmds.rename(ctrlsp, ctrl)
        try:
            cmds.setAttr(ctrl + '.ovverideEnabled', 0)
        except: pass
        cmds.parent(jnt, ctrl)
        cmds.parent(ctrlgrp, lctrsdk)
        cmds.parent(lctrsdk, lctroffsetscale)
        cmds.parent(lctroffsetscale, lctroffsetrot)
        cmds.parent(lctroffsetrot, lctroffsettrans)
        cmds.parent(lctroffsettrans, lctroffset)
        cmds.parent(lctroffset, grp)
        cmds.parent(grp, fol[1])

        cmds.xform(grp, ws=True, t=folpos)
        # HACK
        tmpcon = cmds.pointConstraint(fol, grp, mo=False)
        cmds.delete(tmpcon)
        cmds.connectAttr('%s.output3D.output3Dx' % pma, '%s.parameterU' % fol[0] )
        cmds.connectAttr('%s.output3D.output3Dy' % pma, '%s.parameterV' % fol[0] )

        if orient != 'None':
            #cmds.xform(grp, ws=True, ro=orient)
            tmpcon = cmds.parentConstraint(orient, grp, mo=False)
            cmds.delete(tmpcon)

        return([pma, locs, grp, jnt, ctrlgrp])


