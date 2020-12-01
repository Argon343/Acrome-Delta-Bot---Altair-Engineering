<?xml version="1.0" encoding="UTF-8"?>
<model name="InverseKinematicsAndMotorDriver2">
  <header formatversion="2" hwxversion="2020.0" script="oml"/>
  <edition>
    <properties>
      <property name="creator" value="waap"/>
      <property name="creationdate" value="11/30/20 09:14:16"/>
      <property name="revision" value="0"/>
      <property name="lastmodifieddate" value="11/30/20 09:15:03"/>
      <property name="comments" value=""/>
    </properties>
  </edition>
  <initialization/>
  <finalization/>
  <diagram>
    <block name="InverseKinematics" type="block">
      <diagram>
        <block name="inverse kinematics" type="block">
          <template name="system/CustomBlocks/OmlCustomBlock"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="151,56,54,254"/>
            <position x="-49.73492431640625" y="-381.4035949707031"/>
            <size width="192" height="228"/>
            <rotate angle="0"/>
            <texts>
              <text name="text" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Oml&#xA;Block</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;theta1&quot; &quot;theta2&quot; &quot;theta3&quot;" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nout"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;u1&quot; &quot;u2&quot; &quot;u3&quot; &quot;u4&quot; &quot;x0&quot; &quot;y0&quot; &quot;z0&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="nevin"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="nevout"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Ports">
              <parameter name="nin" value="7"/>
              <parametertable name="inports">
                <columns number="5">
                  <parameter name="inrow" value="1"/>
                  <parameter name="incol" value="1"/>
                  <parameter name="it" value="&apos;double&apos;"/>
                  <parameter name="depu" value="1"/>
                  <parameter name="name" value="&apos;&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>1</value>
                    <value>1</value>
                    <value>&apos;double&apos;</value>
                    <value>1</value>
                    <value>&apos;&apos;</value>
                  </row>
                  <row>
                    <value>1</value>
                    <value>1</value>
                    <value>&apos;double&apos;</value>
                    <value>1</value>
                    <value>&apos;&apos;</value>
                  </row>
                  <row>
                    <value>1</value>
                    <value>1</value>
                    <value>&apos;double&apos;</value>
                    <value>1</value>
                    <value>&apos;&apos;</value>
                  </row>
                  <row>
                    <value>1</value>
                    <value>1</value>
                    <value>&apos;double&apos;</value>
                    <value>1</value>
                    <value>&apos;&apos;</value>
                  </row>
                  <row>
                    <value>1</value>
                    <value>1</value>
                    <value>&apos;double&apos;</value>
                    <value>1</value>
                    <value>&apos;x0&apos;</value>
                  </row>
                  <row>
                    <value>1</value>
                    <value>1</value>
                    <value>&apos;double&apos;</value>
                    <value>1</value>
                    <value>&apos;y0&apos;</value>
                  </row>
                  <row>
                    <value>1</value>
                    <value>1</value>
                    <value>&apos;double&apos;</value>
                    <value>1</value>
                    <value>&apos;z0&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="nevin" value="0"/>
              <parameter name="nout" value="3"/>
              <parametertable name="outports">
                <columns number="4">
                  <parameter name="outrow" value="1"/>
                  <parameter name="outcol" value="1"/>
                  <parameter name="ot" value="&apos;double&apos;"/>
                  <parameter name="name" value="&apos;&apos;"/>
                </columns>
                <rows number="nout">
                  <row>
                    <value>1</value>
                    <value>1</value>
                    <value>&apos;double&apos;</value>
                    <value>&apos;theta1&apos;</value>
                  </row>
                  <row>
                    <value>1</value>
                    <value>1</value>
                    <value>&apos;double&apos;</value>
                    <value>&apos;theta2&apos;</value>
                  </row>
                  <row>
                    <value>1</value>
                    <value>1</value>
                    <value>&apos;double&apos;</value>
                    <value>&apos;theta3&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="nevout" value="0"/>
              <parametertable name="evoutports">
                <columns number="1">
                  <parameter name="fir" value="-1"/>
                </columns>
                <rows number="nevout">
                </rows>
              </parametertable>
            </section>
            <section name="States">
              <parameter name="xx" value="[]"/>
              <parameter name="xd" value="[]"/>
              <parameter name="z" value="[]"/>
              <parameter name="noz" value="0"/>
              <parametertable name="ozparams">
                <columns number="3">
                  <parameter name="oztyp" value="&apos;double&apos;"/>
                  <parameter name="ozvalue" value="1"/>
                  <parameter name="name" value="&apos;&apos;"/>
                </columns>
                <rows number="noz">
                </rows>
              </parametertable>
            </section>
            <section name="Parameters">
              <parameter name="rpar" value="[]"/>
              <parameter name="ipar" value="[]"/>
              <parameter name="nopar" value="0"/>
              <parametertable name="oparparams">
                <columns number="3">
                  <parameter name="opartyp" value="&apos;double&apos;"/>
                  <parameter name="oparvalue" value="1"/>
                  <parameter name="name" value="&apos;&apos;"/>
                </columns>
                <rows number="nopar">
                </rows>
              </parametertable>
            </section>
            <section name="SimFunction">
              <parameter name="inlined" value="1"/>
              <parameter name="code" value="[&apos;function OmlBlockFunction(block,flag)&apos;,char(10),char(9),char(10),char(9),&apos;f =vssGetInputData(block,1);&apos;,char(10),char(9),&apos;et=vssGetInputData(block,2);&apos;,char(10),char(9),&apos;rf=vssGetInputData(block,3);&apos;,char(10),char(9),&apos;re=vssGetInputData(block,4);&apos;,char(10),char(9),char(10),char(9),&apos;x0=vssGetInputData(block,5);&apos;,char(10),char(9),&apos;y0=vssGetInputData(block,6);&apos;,char(10),char(9),&apos;z0=vssGetInputData(block,7);&apos;,char(10),char(9),char(10),char(9),&apos;nevprt=vssGetEventCode(block);&apos;,char(10),char(9),char(10),char(9),&apos;if flag == vssBlockInitializeFlag&apos;,char(10),char(10),char(9),&apos;elseif flag == vssBlockReinitializeFlag&apos;,char(10),char(10),char(9),&apos;elseif flag == vssBlockTerminateFlag&apos;,char(10),char(10),char(9),&apos;elseif flag == vssBlockOutputUpdateFlag&apos;,char(10),char(9),char(9),char(10),char(9),char(9),&apos;f =vssGetInputData(block,1);&apos;,char(10),char(9),char(9),&apos;et=vssGetInputData(block,2);&apos;,char(10),char(9),char(9),&apos;rf=vssGetInputData(block,3);&apos;,char(10),char(9),char(9),&apos;re=vssGetInputData(block,4);&apos;,char(10),char(9),char(10),char(9),char(9),&apos;x0=vssGetInputData(block,5);&apos;,char(10),char(9),char(9),&apos;y0=vssGetInputData(block,6);&apos;,char(10),char(9),char(9),&apos;z0=vssGetInputData(block,7);&apos;,char(10),char(9),char(9),char(10),char(9),char(9),&apos;theta1= 0.0;&apos;,char(10),char(9),char(9),&apos;theta2= 0.0;&apos;,char(10),char(9),char(9),&apos;theta3= 0.0;&apos;,char(10),char(10),char(9),char(9),&apos;for i= 0:2&apos;,char(10),char(10),char(9),char(9),char(9),&apos;if(i == 0)&apos;,char(10),char(9),char(9),char(9),char(9),&apos;x0_1 = x0;&apos;,char(10),char(9),char(9),char(9),char(9),&apos;y0_1 = y0;&apos;,char(10),char(9),char(9),char(9),&apos;elseif(i==1)&apos;,char(10),char(9),char(9),char(9),char(9),&apos;x0_1 = x0 * cos(pi/3*2) + y0 * sin(pi/3*2);&apos;,char(10),char(9),char(9),char(9),char(9),&apos;y0_1 = y0 * cos(pi/3*2) - x0 * sin(pi/3*2);&apos;,char(10),char(10),char(9),char(9),char(9),&apos;elseif (i == 2)&apos;,char(10),char(9),char(9),char(9),char(9),&apos;x0_1 = x0 * cos(pi/3*2) - y0 * sin(pi/3*2);&apos;,char(10),char(9),char(9),char(9),char(9),&apos;y0_1 = y0 * cos(pi/3*2) + x0 * sin(pi/3*2);&apos;,char(10),char(9),char(9),char(9),&apos;end&apos;,char(10),char(10),char(9),char(9),char(9),&apos;y1 = -0.5 * f * tan(pi / 6);&apos;,char(10),char(9),char(9),char(9),&apos;y0_1 =y0_1 -(0.5 * tan(pi / 6)* et);&apos;,char(10),char(10),char(9),char(9),char(9),&apos;a = (x0_1 * x0_1 + y0_1 * y0_1 + z0 * z0 + rf * rf - re * re - y1 * y1) / (2 * z0);&apos;,char(10),char(9),char(9),char(9),&apos;b = (y1 - y0_1) / z0;&apos;,char(10),char(9),char(9),char(9),&apos;%discriminant&apos;,char(10),char(9),char(9),char(9),&apos;d = -( a + b * y1) * (a + b * y1) + rf * (b * b * rf + rf);&apos;,char(10),char(9),char(9),char(9),&apos;disp(d);&apos;,char(10),char(9),char(9),char(9),&apos;yj = (y1 - a * b - sqrt(d)) / (b * b + 1);&apos;,char(10),char(9),char(9),char(9),&apos;zj = a + b * yj;&apos;,char(10),char(9),char(9),char(9),&apos;if(i==0)&apos;,char(10),char(9),char(9),char(9),char(9),&apos;if (yj&gt;y1)&apos;,char(10),char(9),char(9),char(9),char(9),char(9),&apos;max=180;&apos;,char(10),char(9),char(9),char(9),char(9),&apos;else&apos;,char(10),char(9),char(9),char(9),char(9),char(9),&apos;max=0;&apos;,char(10),char(9),char(9),char(9),char(9),&apos;end&apos;,char(10),char(9),char(9),char(9),char(9),&apos;theta1 =( atan(-zj /(y1 - yj)) * 180) / pi + max;&apos;,char(10),char(9),char(9),char(9),&apos;elseif(i == 1)&apos;,char(10),char(9),char(9),char(9),char(9),&apos;if (yj&gt;y1)&apos;,char(10),char(9),char(9),char(9),char(9),char(9),&apos;max=180;&apos;,char(10),char(9),char(9),char(9),char(9),&apos;else&apos;,char(10),char(9),char(9),char(9),char(9),char(9),&apos;max=0;&apos;,char(10),char(9),char(9),char(9),char(9),&apos;end&apos;,char(10),char(9),char(9),char(9),char(9),&apos;theta2 =(atan(-zj / (y1 - yj)) * 180) / pi + max;&apos;,char(10),char(9),char(9),char(9),&apos;elseif(i == 2)&apos;,char(10),char(9),char(9),char(9),char(9),&apos;if (yj&gt;y1)&apos;,char(10),char(9),char(9),char(9),char(9),char(9),&apos;max=180;&apos;,char(10),char(9),char(9),char(9),char(9),&apos;else&apos;,char(10),char(9),char(9),char(9),char(9),char(9),&apos;max=0;&apos;,char(10),char(9),char(9),char(9),char(9),&apos;end&apos;,char(10),char(9),char(9),char(9),char(9),&apos;theta3 = (atan(-zj /(y1 - yj)) * 180) / pi + max;&apos;,char(10),char(9),char(9),char(9),&apos;end&apos;,char(10),char(9),char(9),char(9),char(10),char(9),char(9),char(9),&apos;disp(zj);&apos;,char(10),char(9),char(9),char(9),&apos;disp(yj);&apos;,char(10),char(9),char(9),char(9),&apos;disp(y1);&apos;,char(10),char(9),char(9),char(9),char(10),char(9),char(9),char(9),&apos;disp(theta1);&apos;,char(10),char(9),char(9),char(9),&apos;disp(theta2);&apos;,char(10),char(9),char(9),char(9),&apos;disp(theta3);&apos;,char(10),char(9),char(9),char(9),&apos;vssSetOutputData(block,1,theta1,vssGetOutputDataType(block,1));&apos;,char(10),char(9),char(9),char(9),&apos;vssSetOutputData(block,2,theta2,vssGetOutputDataType(block,2));&apos;,char(10),char(9),char(9),char(9),&apos;vssSetOutputData(block,3,theta3,vssGetOutputDataType(block,3));&apos;,char(10),char(10),char(9),char(9),&apos;end&apos;,char(10),char(9),&apos;end&apos;,char(10),&apos;end&apos;]"/>
              <parametertable name="fcn">
                <columns number="2">
                  <parameter name="slib" value="&apos;&apos;"/>
                  <parameter name="epoint" value="&apos;&apos;"/>
                </columns>
                <rows number="1">
                  <row>
                    <value>&apos;&apos;</value>
                    <value>&apos;&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="impl" value="0"/>
            </section>
            <section name="Advanced">
              <parameter name="nmode" value="0"/>
              <parameter name="nzcr" value="0"/>
              <parameter name="dept" value="&apos;Standard mode&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Demux" type="block">
          <template name="system/Routing/Demux"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-113.4090576171875" y="-346.40706634521484"/>
            <size width="10" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nout"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nout" value="4"/>
              <parametertable name="outports">
                <columns number="1">
                  <parameter name="size" value="1"/>
                </columns>
                <rows number="nout">
                  <row>
                    <value>1</value>
                  </row>
                  <row>
                    <value>1</value>
                  </row>
                  <row>
                    <value>1</value>
                  </row>
                  <row>
                    <value>1</value>
                  </row>
                </rows>
              </parametertable>
            </section>
          </parameters>
        </block>
        <block name="parameters" type="block">
          <diagram>
            <block name="r_e" type="block">
              <template name="system/SignalGenerators/Constant"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-1111.0234375" y="122.08456420898438"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">r_e</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="C" value="r_e"/>
                  <parameter name="typ" value="&apos;double&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="r_f" type="block">
              <template name="system/SignalGenerators/Constant"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-1111.34326171875" y="65.24763488769531"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">r_f</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="C" value="r_f"/>
                  <parameter name="typ" value="&apos;double&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="f" type="block">
              <template name="system/SignalGenerators/Constant"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-1110.0234375" y="-53.04273986816406"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">f</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="C" value="f"/>
                  <parameter name="typ" value="&apos;double&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="e_t" type="block">
              <template name="system/SignalGenerators/Constant"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-1109.595947265625" y="4.6526031494140625"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">e_t</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="C" value="e_t"/>
                  <parameter name="typ" value="&apos;double&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Mux_1" type="block">
              <template name="system/Routing/Mux"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-957.133544921875" y="29.427215576171868"/>
                <size width="10" height="60.00000000000001"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <size width="4.5" height="4.499999999999999"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <size width="4.5" height="4.4999999999999964"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="4"/>
                  <parametertable name="inports">
                    <columns number="1">
                      <parameter name="size" value="1"/>
                    </columns>
                    <rows number="nin">
                      <row>
                        <value>1</value>
                      </row>
                      <row>
                        <value>1</value>
                      </row>
                      <row>
                        <value>1</value>
                      </row>
                      <row>
                        <value>1</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="Output" type="regular_out_port">
              <template name="system/Ports/Output"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-847.133544921875" y="49.427215576171875"/>
                <size width="20" height="20"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="1"/>
                  <parameter name="insize" value="[-1;-2]"/>
                  <parameter name="intyp" value="&apos;inherit&apos;"/>
                </section>
              </parameters>
            </block>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="r_e" port="1" iotype="out"/>
              <to block="Mux_1" port="4" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="-985.6362304687501" y="142.0845642089842"/>
                <point x="-985.63623046875" y="81.92721557617188"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="r_f" port="1" iotype="out"/>
              <to block="Mux_1" port="3" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="-1014.2384033203125" y="85.24763488769531"/>
                <point x="-1014.2384033203125" y="66.92721557617188"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="f" port="1" iotype="out"/>
              <to block="Mux_1" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="-979.8369750976564" y="-33.04273986816406"/>
                <point x="-979.8369750976561" y="36.927215576171875"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="e_t" port="1" iotype="out"/>
              <to block="Mux_1" port="2" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="-1042.904296875" y="24.65260314941406"/>
                <point x="-1042.904296875" y="51.927215576171875"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Mux_1" port="1" iotype="out"/>
              <to block="Output" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <context/>
            <graphics>
              <viewport width="800" height="800" topleftx="0" toplefty="0"/>
              <window width="800" height="800" topleftx="0" toplefty="0"/>
            </graphics>
          </diagram>
          <properties>
            <property name="masked" value="0"/>
            <property name="inlinable" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-218.1021728515625" y="-340.40706634521484"/>
            <size width="72" height="48"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">parameters</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters title="new block definition">
            <callback>
              <pre/>
              <post/>
            </callback>
          </parameters>
        </block>
        <block name="X" type="regular_in_port">
          <template name="system/Ports/Input"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-138.8135986328125" y="-244.83216639927457"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="1"/>
              <parameter name="outsize" value="[-1;-2]"/>
              <parameter name="outtyp" value="&apos;inherit&apos;"/>
              <parameter name="dept" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Y" type="regular_in_port">
          <template name="system/Ports/Input"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-138.1390380859375" y="-212.26073782784601"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="2"/>
              <parameter name="outsize" value="[-1;-2]"/>
              <parameter name="outtyp" value="&apos;inherit&apos;"/>
              <parameter name="dept" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Z" type="regular_in_port">
          <template name="system/Ports/Input"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-137.55767822265625" y="-179.68930925641746"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">3</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="3"/>
              <parameter name="outsize" value="[-1;-2]"/>
              <parameter name="outtyp" value="&apos;inherit&apos;"/>
              <parameter name="dept" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Theta1" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="194" y="-353.4035949707031"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="1"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Theta2" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="194" y="-277.4035949707031"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="2"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Theta3" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="194" y="-201.40359497070335"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">3</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="3"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Theta1" port="1" iotype="in"/>
          <to block="inverse kinematics" port="1" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="inverse kinematics" port="2" iotype="out"/>
          <to block="Theta2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="inverse kinematics" port="3" iotype="out"/>
          <to block="Theta3" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="inverse kinematics" port="7" iotype="in"/>
          <to block="Z" port="1" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Y" port="1" iotype="out"/>
          <to block="inverse kinematics" port="6" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="X" port="1" iotype="out"/>
          <to block="inverse kinematics" port="5" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="parameters" port="1" iotype="out"/>
          <to block="Demux" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Demux" port="1" iotype="out"/>
          <to block="inverse kinematics" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="-67.76348876953125" y="-338.90706634521473"/>
            <point x="-67.76348876953232" y="-365.11788068498896"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Demux" port="2" iotype="out"/>
          <to block="inverse kinematics" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="-59.73492431640666" y="-323.90706634521433"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Demux" port="3" iotype="out"/>
          <to block="inverse kinematics" port="3" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="-59.734924316406186" y="-308.90706634521456"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Demux" port="4" iotype="out"/>
          <to block="inverse kinematics" port="4" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="-67.66648864746094" y="-293.90706634521484"/>
            <point x="-67.66648864746094" y="-267.4035949707031"/>
          </points>
        </link>
        <context/>
        <graphics>
          <viewport width="800" height="800" topleftx="0" toplefty="0"/>
          <window width="800" height="800" topleftx="0" toplefty="0"/>
        </graphics>
      </diagram>
      <properties>
        <property name="masked" value="0"/>
        <property name="inlinable" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-319.82997131347656" y="-280.8666687011719"/>
        <size width="228" height="204"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="X" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="Y" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="Z" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="3"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="Theta1" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="Theta2" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="Theta3" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="3"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters title="new block definition">
        <callback>
          <pre/>
          <post/>
        </callback>
      </parameters>
    </block>
    <block name="SetMotors" type="block">
      <diagram>
        <block name="Mux" type="block">
          <template name="system/Routing/Mux"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="109.43435668945313" y="-208.23666381835938"/>
            <size width="12" height="144"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="3"/>
              <parametertable name="inports">
                <columns number="1">
                  <parameter name="size" value="1"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>1</value>
                  </row>
                  <row>
                    <value>1</value>
                  </row>
                  <row>
                    <value>1</value>
                  </row>
                </rows>
              </parametertable>
            </section>
          </parameters>
        </block>
        <block name="CCustomBlock" type="block">
          <template name="system/CustomBlocks/CCustomBlock"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="141.43435668945313" y="-214.23666381835938"/>
            <size width="168" height="156"/>
            <rotate angle="0"/>
            <texts>
              <text name="text" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">C&#xA;Block</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;realPos&quot;" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nout"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;theta&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="nevin"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="nevout"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Ports">
              <parameter name="nin" value="1"/>
              <parametertable name="inports">
                <columns number="5">
                  <parameter name="inrow" value="1"/>
                  <parameter name="incol" value="1"/>
                  <parameter name="it" value="&apos;double&apos;"/>
                  <parameter name="depu" value="1"/>
                  <parameter name="name" value="&apos;&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>3</value>
                    <value>1</value>
                    <value>&apos;double&apos;</value>
                    <value>1</value>
                    <value>&apos;theta&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="nevin" value="0"/>
              <parameter name="nout" value="1"/>
              <parametertable name="outports">
                <columns number="4">
                  <parameter name="outrow" value="1"/>
                  <parameter name="outcol" value="1"/>
                  <parameter name="ot" value="&apos;double&apos;"/>
                  <parameter name="name" value="&apos;&apos;"/>
                </columns>
                <rows number="nout">
                  <row>
                    <value>3</value>
                    <value>1</value>
                    <value>&apos;double&apos;</value>
                    <value>&apos;realPos&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="nevout" value="0"/>
              <parametertable name="evoutports">
                <columns number="1">
                  <parameter name="fir" value="-1"/>
                </columns>
                <rows number="nevout">
                </rows>
              </parametertable>
            </section>
            <section name="States">
              <parameter name="xx" value="[]"/>
              <parameter name="xd" value="[]"/>
              <parameter name="z" value="[]"/>
              <parameter name="noz" value="0"/>
              <parametertable name="ozparams">
                <columns number="3">
                  <parameter name="oztyp" value="&apos;double&apos;"/>
                  <parameter name="ozvalue" value="1"/>
                  <parameter name="name" value="&apos;&apos;"/>
                </columns>
                <rows number="noz">
                </rows>
              </parametertable>
            </section>
            <section name="Parameters">
              <parameter name="rpar" value="[]"/>
              <parameter name="ipar" value="[]"/>
              <parameter name="nopar" value="0"/>
              <parametertable name="oparparams">
                <columns number="3">
                  <parameter name="opartyp" value="&apos;double&apos;"/>
                  <parameter name="oparvalue" value="1"/>
                  <parameter name="name" value="&apos;&apos;"/>
                </columns>
                <rows number="nopar">
                </rows>
              </parametertable>
            </section>
            <section name="SimFunction">
              <parameter name="inlined" value="1"/>
              <parameter name="code" value="[&apos;#define __AVR_ATmega2560__&apos;,char(10),char(10),&apos;#include &quot;vss_block4.h&quot;&apos;,char(10),&apos;#include &quot;Herkulex.h&quot;&apos;,char(10),char(10),&apos;VSS_EXPORT void CBlockFunction(vss_block *block,int flag)&apos;,char(10),&apos;{&apos;,char(10),char(9),&apos;SCSREAL_COP *t1=GetRealInPortPtrs(block,1);&apos;,char(10),char(9),&apos;SCSREAL_COP *t2=GetRealInPortPtrs(block,2);&apos;,char(10),char(9),&apos;SCSREAL_COP *t3=GetRealInPortPtrs(block,3);&apos;,char(10),char(9),&apos;const int led = 1;&apos;,char(10),char(9),char(10),char(9),&apos;switch (flag){&apos;,char(10),char(9),&apos;case VssFlag_Initialize:&apos;,char(10),char(9),char(9),char(10),char(9),char(9),&apos;// this may not be the correct serial port to use&apos;,char(10),char(9),char(9),&apos;// baud rate was specified in Herkulex.cpp&apos;,char(10),char(9),char(9),&apos;Herkulex.beginSerial1(115200);&apos;,char(10),char(9),char(9),&apos;Herkulex.initialize();&apos;,char(10),char(9),char(9),char(9),char(10),char(9),char(9),&apos;break;&apos;,char(10),char(9),&apos;case VssFlag_Reinitialize:&apos;,char(10),char(10),char(9),char(9),&apos;break;&apos;,char(10),char(9),&apos;case VssFlag_OutputUpdate:&apos;,char(10),char(9),char(9),char(10),char(9),char(9),&apos;// iterate over motors&apos;,char(10),char(9),char(9),&apos;for (int i = 0; i &lt; numMotors; ++i) {&apos;,char(10),char(9),char(9),char(9),&apos;Herkulex.clearError(i); //Deletes errors of the motor whose ID is written&apos;,char(10),char(9),char(9),char(9),&apos;int pos = (int)(-theta[i])/0.32612 + 512; //conversion from angle to position&apos;,char(10),char(9),char(9),char(9),&apos;Herkulex.moveOne(i, pos, 200, led); //Moves the motor whose ID is written&apos;,char(10),char(9),char(9),char(9),&apos;realPos[i]=Herkulex.getPosition(i); //Measures the actual position&apos;,char(10),char(9),char(9),&apos;}&apos;,char(10),char(10),char(9),char(9),&apos;break;&apos;,char(10),char(9),&apos;case VssFlag_Terminate:&apos;,char(10),char(10),char(9),char(9),&apos;break;&apos;,char(10),char(9),&apos;}&apos;,char(10),&apos;}&apos;,char(10)]"/>
              <parametertable name="fcn">
                <columns number="2">
                  <parameter name="slib" value="&apos;&apos;"/>
                  <parameter name="epoint" value="&apos;&apos;"/>
                </columns>
                <rows number="1">
                  <row>
                    <value>&apos;&apos;</value>
                    <value>&apos;&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="impl" value="0"/>
              <parameter name="nincludepath" value="4"/>
              <parametertable name="includepath">
                <columns number="1">
                  <parameter name="path" value="&apos;&apos;"/>
                </columns>
                <rows number="nincludepath">
                  <row>
                    <value>&apos;D:/DeltaBot&apos;</value>
                  </row>
                  <row>
                    <value>&apos;D:/DeltaBot/avr-libc&apos;</value>
                  </row>
                  <row>
                    <value>&apos;C:&#x5C;Users&#x5C;jstraetmans&#x5C;Desktop&#x5C;Acrome-Delta-Bot---Altair-Engineering&apos;</value>
                  </row>
                  <row>
                    <value>&apos;C:&#x5C;Users&#x5C;jstraetmans&#x5C;Desktop&#x5C;Acrome-Delta-Bot---Altair-Engineering&#x5C;avr-libc&#x5C;avr-libc&#x5C;include&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="ndefine" value="0"/>
              <parametertable name="define">
                <columns number="1">
                  <parameter name="path" value="&apos;&apos;"/>
                </columns>
                <rows number="ndefine">
                </rows>
              </parametertable>
              <parameter name="ncompileflags" value="0"/>
              <parametertable name="compileflags">
                <columns number="1">
                  <parameter name="path" value="&apos;&apos;"/>
                </columns>
                <rows number="ncompileflags">
                </rows>
              </parametertable>
              <parameter name="nlibpath" value="0"/>
              <parametertable name="libpath">
                <columns number="1">
                  <parameter name="path" value="&apos;&apos;"/>
                </columns>
                <rows number="nlibpath">
                </rows>
              </parametertable>
              <parameter name="nlibs" value="0"/>
              <parametertable name="libs">
                <columns number="1">
                  <parameter name="path" value="&apos;&apos;"/>
                </columns>
                <rows number="nlibs">
                </rows>
              </parametertable>
            </section>
            <section name="Advanced">
              <parameter name="nmode" value="0"/>
              <parameter name="nzcr" value="0"/>
              <parameter name="dept" value="&apos;Standard mode&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Theta1" type="regular_in_port">
          <template name="system/Ports/Input"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="10.63604736328125" y="-279.6187286376953"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="1"/>
              <parameter name="outsize" value="[-1;-2]"/>
              <parameter name="outtyp" value="&apos;inherit&apos;"/>
              <parameter name="dept" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Theta2" type="regular_in_port">
          <template name="system/Ports/Input"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="10.63604736328125" y="-146.23666381835938"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="2"/>
              <parameter name="outsize" value="[-1;-2]"/>
              <parameter name="outtyp" value="&apos;inherit&apos;"/>
              <parameter name="dept" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Theta3" type="regular_in_port">
          <template name="system/Ports/Input"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="10.63604736328125" y="-8.43084716796875"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">3</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="3"/>
              <parameter name="outsize" value="[-1;-2]"/>
              <parameter name="outtyp" value="&apos;inherit&apos;"/>
              <parameter name="dept" value="0"/>
            </section>
          </parameters>
        </block>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Mux" port="1" iotype="in"/>
          <to block="Theta1" port="1" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="72.94313049316406" y="-184.23666381835938"/>
            <point x="72.94313049316406" y="-269.6187286376953"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Mux" port="2" iotype="in"/>
          <to block="Theta2" port="1" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Mux" port="3" iotype="in"/>
          <to block="Theta3" port="1" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="72.94313049316406" y="-88.2366638183594"/>
            <point x="72.94313049316406" y="1.56915283203125"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Mux" port="1" iotype="out"/>
          <to block="CCustomBlock" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <context/>
        <graphics>
          <viewport width="800" height="800" topleftx="0" toplefty="0"/>
          <window width="800" height="800" topleftx="0" toplefty="0"/>
        </graphics>
      </diagram>
      <properties>
        <property name="masked" value="0"/>
        <property name="inlinable" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="19.099105834960938" y="-244.86666870117188"/>
        <size width="168" height="132"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="Theta1" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="Theta2" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="Theta3" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="3"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters title="new block definition">
        <callback>
          <pre/>
          <post/>
        </callback>
      </parameters>
    </block>
    <block name="Constant" type="block">
      <template name="system/SignalGenerators/Constant"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-464.1801452636719" y="-266.8666687011719"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">30</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="C" value="30"/>
          <parameter name="typ" value="&apos;double&apos;"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Constant_1" type="block">
      <template name="system/SignalGenerators/Constant"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-464.18792724609375" y="-198.86666870117188"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">30</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="C" value="30"/>
          <parameter name="typ" value="&apos;double&apos;"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Constant_2" type="block">
      <template name="system/SignalGenerators/Constant"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-462.1436462402344" y="-130.8666687011719"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">-200</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="C" value="-200"/>
          <parameter name="typ" value="&apos;double&apos;"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="SetMotors" port="3" iotype="in"/>
      <to block="InverseKinematics" port="3" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="-35.16764831542969" y="-134.8666687011719"/>
        <point x="-35.16764831542969" y="-110.8666687011719"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="SetMotors" port="2" iotype="in"/>
      <to block="InverseKinematics" port="2" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="SetMotors" port="1" iotype="in"/>
      <to block="InverseKinematics" port="1" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="-33.19935607910156" y="-222.86666870117188"/>
        <point x="-33.19935607910156" y="-246.86666870117188"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Constant" port="1" iotype="out"/>
      <to block="InverseKinematics" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Constant_1" port="1" iotype="out"/>
      <to block="InverseKinematics" port="2" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Constant_2" port="1" iotype="out"/>
      <to block="InverseKinematics" port="3" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <context/>
    <graphics>
      <viewport width="800" height="800" topleftx="0" toplefty="0"/>
      <window width="800" height="800" topleftx="0" toplefty="0"/>
    </graphics>
  </diagram>
  <simulation>
    <properties>
      <property name="InitialTime" value="0"/>
      <property name="FinalTime" value="30"/>
      <property name="RealTimeScale" value="0"/>
      <property name="AbsoluteErrorTolerance" value="0.000001"/>
      <property name="RelativeErrorTolerance" value="0.000001"/>
      <property name="MaxTimeInterval" value="-1"/>
      <property name="TimeTolerance" value="-1"/>
      <property name="Solver" value="lsodar"/>
      <property name="MaxStepSize" value="-1"/>
      <property name="InitialStepSize" value="-1"/>
      <property name="MinimalStepSize" value="-1"/>
      <property name="ZeroCrossingThreshold" value="-1"/>
      <property name="NumberOfConsecutiveZeroCrossing" value="-1"/>
      <property name="TimeToleranceZeroCrossing" value="-1"/>
      <property name="AlgebraicSolver" value="idacalc"/>
      <property name="JacobianMethod" value="1"/>
    </properties>
  </simulation>
</model>
