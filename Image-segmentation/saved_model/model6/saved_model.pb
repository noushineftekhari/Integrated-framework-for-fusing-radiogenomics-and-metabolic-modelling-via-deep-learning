©Ë
×¨
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
E
AssignSubVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

À
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
º
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
\
	LeakyRelu
features"T
activations"T"
alphafloat%ÍÌL>"
Ttype0:
2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
À
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
9
VarIsInitializedOp
resource
is_initialized
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8ó¶

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 

global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
p
PlaceholderPlaceholder*(
_output_shapes
:*
dtype0*
shape:
f
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿ         
a
ReshapeReshapePlaceholderReshape/shape*
T0*(
_output_shapes
:
©
.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*
_output_shapes
:*
dtype0*%
valueB"            

,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *íãg¾

,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *íãg>
×
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
Ò
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ì
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
à
(conv2d/kernel/Initializer/random_uniformAddV2,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
 
conv2d/kernelVarHandleOp* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
n
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
dtype0
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0

conv2d/bias/Initializer/zerosConst*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d/biasVarHandleOp*
_class
loc:@conv2d/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 
_
conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
dtype0
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0

conv2d/Conv2DConv2DReshapeconv2d/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
z
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
l
leaky_re_lu/LeakyRelu	LeakyReluconv2d/BiasAdd*(
_output_shapes
:*
alpha%>
­
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:*
dtype0*%
valueB"            

.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í¿

.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í?
Ý
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:*
dtype0
Ú
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
ô
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
è
*conv2d_1/kernel/Initializer/random_uniformAddV2.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
¦
conv2d_1/kernelVarHandleOp*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_1/kernel
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
t
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0

conv2d_1/bias/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_1/biasVarHandleOp* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
e
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros*
dtype0
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
«
conv2d_1/Conv2DConv2Dleaky_re_lu/LeakyReluconv2d_1/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0

conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
p
leaky_re_lu_1/LeakyRelu	LeakyReluconv2d_1/BiasAdd*(
_output_shapes
:*
alpha%>
¥
*batch_normalization/gamma/Initializer/onesConst*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:*
dtype0*
valueB*  ?
¸
batch_normalization/gammaVarHandleOp*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: *
dtype0*
shape:**
shared_namebatch_normalization/gamma

:batch_normalization/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/gamma*
_output_shapes
: 

 batch_normalization/gamma/AssignAssignVariableOpbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
dtype0

-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:*
dtype0
¤
*batch_normalization/beta/Initializer/zerosConst*+
_class!
loc:@batch_normalization/beta*
_output_shapes
:*
dtype0*
valueB*    
µ
batch_normalization/betaVarHandleOp*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: *
dtype0*
shape:*)
shared_namebatch_normalization/beta

9batch_normalization/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/beta*
_output_shapes
: 

batch_normalization/beta/AssignAssignVariableOpbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
dtype0

,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0
²
1batch_normalization/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
Ê
batch_normalization/moving_meanVarHandleOp*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean

@batch_normalization/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/moving_mean*
_output_shapes
: 

&batch_normalization/moving_mean/AssignAssignVariableOpbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
dtype0

3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0
¹
4batch_normalization/moving_variance/Initializer/onesConst*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:*
dtype0*
valueB*  ?
Ö
#batch_normalization/moving_varianceVarHandleOp*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance

Dbatch_normalization/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#batch_normalization/moving_variance*
_output_shapes
: 
¦
*batch_normalization/moving_variance/AssignAssignVariableOp#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
dtype0

7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0
\
keras_learning_phase/inputConst*
_output_shapes
: *
dtype0
*
value	B
 Z 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
_output_shapes
: *
dtype0
*
shape: 
º
batch_normalization/condIfkeras_learning_phasebatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceleaky_re_lu_1/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*B
_output_shapes0
.:::: : : : : : : *&
_read_only_resource_inputs
*4
else_branch%R#
!batch_normalization_cond_false_65*A
output_shapes0
.:::: : : : : : : *3
then_branch$R"
 batch_normalization_cond_true_64
z
!batch_normalization/cond/IdentityIdentitybatch_normalization/cond*
T0*(
_output_shapes
:
p
#batch_normalization/cond/Identity_1Identitybatch_normalization/cond:1*
T0*
_output_shapes
:
p
#batch_normalization/cond/Identity_2Identitybatch_normalization/cond:2*
T0*
_output_shapes
:
l
#batch_normalization/cond/Identity_3Identitybatch_normalization/cond:3*
T0*
_output_shapes
: 
l
#batch_normalization/cond/Identity_4Identitybatch_normalization/cond:4*
T0*
_output_shapes
: 
l
#batch_normalization/cond/Identity_5Identitybatch_normalization/cond:5*
T0*
_output_shapes
: 
l
#batch_normalization/cond/Identity_6Identitybatch_normalization/cond:6*
T0*
_output_shapes
: 
l
#batch_normalization/cond/Identity_7Identitybatch_normalization/cond:7*
T0*
_output_shapes
: 
l
#batch_normalization/cond/Identity_8Identitybatch_normalization/cond:8*
T0*
_output_shapes
: 
l
#batch_normalization/cond/Identity_9Identitybatch_normalization/cond:9*
T0*
_output_shapes
: 
É
batch_normalization/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *7
else_branch(R&
$batch_normalization_cond_1_false_133*
output_shapes
: *6
then_branch'R%
#batch_normalization_cond_1_true_132
l
#batch_normalization/cond_1/IdentityIdentitybatch_normalization/cond_1*
T0*
_output_shapes
: 
¢
)batch_normalization/AssignMovingAvg/sub/xConst*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ó
'batch_normalization/AssignMovingAvg/subSub)batch_normalization/AssignMovingAvg/sub/x#batch_normalization/cond_1/Identity*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 

2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0
â
)batch_normalization/AssignMovingAvg/sub_1Sub2batch_normalization/AssignMovingAvg/ReadVariableOp#batch_normalization/cond/Identity_1*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:
Û
'batch_normalization/AssignMovingAvg/mulMul)batch_normalization/AssignMovingAvg/sub_1'batch_normalization/AssignMovingAvg/sub*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:
Ù
7batch_normalization/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpbatch_normalization/moving_mean'batch_normalization/AssignMovingAvg/mul*2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0
þ
4batch_normalization/AssignMovingAvg/ReadVariableOp_1ReadVariableOpbatch_normalization/moving_mean8^batch_normalization/AssignMovingAvg/AssignSubVariableOp*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:*
dtype0
¨
+batch_normalization/AssignMovingAvg_1/sub/xConst*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
Û
)batch_normalization/AssignMovingAvg_1/subSub+batch_normalization/AssignMovingAvg_1/sub/x#batch_normalization/cond_1/Identity*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 

4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0
ê
+batch_normalization/AssignMovingAvg_1/sub_1Sub4batch_normalization/AssignMovingAvg_1/ReadVariableOp#batch_normalization/cond/Identity_2*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
å
)batch_normalization/AssignMovingAvg_1/mulMul+batch_normalization/AssignMovingAvg_1/sub_1)batch_normalization/AssignMovingAvg_1/sub*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
å
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp#batch_normalization/moving_variance)batch_normalization/AssignMovingAvg_1/mul*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0

6batch_normalization/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp#batch_normalization/moving_variance:^batch_normalization/AssignMovingAvg_1/AssignSubVariableOp*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:*
dtype0
­
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:*
dtype0*%
valueB"            

.conv2d_2/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *£E¾

.conv2d_2/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *£E>
Ý
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:*
dtype0
Ú
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
ô
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
è
*conv2d_2/kernel/Initializer/random_uniformAddV2.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
¦
conv2d_2/kernelVarHandleOp*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_2/kernel
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
t
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0

conv2d_2/bias/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_2/biasVarHandleOp* 
_class
loc:@conv2d_2/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
e
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros*
dtype0
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
·
conv2d_2/Conv2DConv2D!batch_normalization/cond/Identityconv2d_2/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0

conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
p
leaky_re_lu_2/LeakyRelu	LeakyReluconv2d_2/BiasAdd*(
_output_shapes
:*
alpha%>
­
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
:*
dtype0*%
valueB"            

.conv2d_3/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í¿

.conv2d_3/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í?
Ý
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:*
dtype0
Ú
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
ô
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
è
*conv2d_3/kernel/Initializer/random_uniformAddV2.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
¦
conv2d_3/kernelVarHandleOp*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
o
0conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
t
conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0

conv2d_3/bias/Initializer/zerosConst* 
_class
loc:@conv2d_3/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_3/biasVarHandleOp* 
_class
loc:@conv2d_3/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
.conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
e
conv2d_3/bias/AssignAssignVariableOpconv2d_3/biasconv2d_3/bias/Initializer/zeros*
dtype0
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
v
conv2d_3/Conv2D/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
­
conv2d_3/Conv2DConv2Dleaky_re_lu_2/LeakyReluconv2d_3/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

i
conv2d_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0

conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
p
leaky_re_lu_3/LeakyRelu	LeakyReluconv2d_3/BiasAdd*(
_output_shapes
:*
alpha%>
©
,batch_normalization_1/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:*
dtype0*
valueB*  ?
¾
batch_normalization_1/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_1/gamma

<batch_normalization_1/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_1/gamma*
_output_shapes
: 

"batch_normalization_1/gamma/AssignAssignVariableOpbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
dtype0

/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:*
dtype0
¨
,batch_normalization_1/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:*
dtype0*
valueB*    
»
batch_normalization_1/betaVarHandleOp*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_1/beta

;batch_normalization_1/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_1/beta*
_output_shapes
: 

!batch_normalization_1/beta/AssignAssignVariableOpbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
dtype0

.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:*
dtype0
¶
3batch_normalization_1/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
Ð
!batch_normalization_1/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_1/moving_mean

Bbatch_normalization_1/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_1/moving_mean*
_output_shapes
: 
¡
(batch_normalization_1/moving_mean/AssignAssignVariableOp!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0
½
6batch_normalization_1/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0*
valueB*  ?
Ü
%batch_normalization_1/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_1/moving_variance

Fbatch_normalization_1/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_1/moving_variance*
_output_shapes
: 
¬
,batch_normalization_1/moving_variance/AssignAssignVariableOp%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
dtype0

9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0
Ê
batch_normalization_1/condIfkeras_learning_phasebatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceleaky_re_lu_3/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*B
_output_shapes0
.:::: : : : : : : *&
_read_only_resource_inputs
*7
else_branch(R&
$batch_normalization_1_cond_false_207*A
output_shapes0
.:::: : : : : : : *6
then_branch'R%
#batch_normalization_1_cond_true_206
~
#batch_normalization_1/cond/IdentityIdentitybatch_normalization_1/cond*
T0*(
_output_shapes
:
t
%batch_normalization_1/cond/Identity_1Identitybatch_normalization_1/cond:1*
T0*
_output_shapes
:
t
%batch_normalization_1/cond/Identity_2Identitybatch_normalization_1/cond:2*
T0*
_output_shapes
:
p
%batch_normalization_1/cond/Identity_3Identitybatch_normalization_1/cond:3*
T0*
_output_shapes
: 
p
%batch_normalization_1/cond/Identity_4Identitybatch_normalization_1/cond:4*
T0*
_output_shapes
: 
p
%batch_normalization_1/cond/Identity_5Identitybatch_normalization_1/cond:5*
T0*
_output_shapes
: 
p
%batch_normalization_1/cond/Identity_6Identitybatch_normalization_1/cond:6*
T0*
_output_shapes
: 
p
%batch_normalization_1/cond/Identity_7Identitybatch_normalization_1/cond:7*
T0*
_output_shapes
: 
p
%batch_normalization_1/cond/Identity_8Identitybatch_normalization_1/cond:8*
T0*
_output_shapes
: 
p
%batch_normalization_1/cond/Identity_9Identitybatch_normalization_1/cond:9*
T0*
_output_shapes
: 
Ï
batch_normalization_1/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *9
else_branch*R(
&batch_normalization_1_cond_1_false_275*
output_shapes
: *8
then_branch)R'
%batch_normalization_1_cond_1_true_274
p
%batch_normalization_1/cond_1/IdentityIdentitybatch_normalization_1/cond_1*
T0*
_output_shapes
: 
¦
+batch_normalization_1/AssignMovingAvg/sub/xConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
Û
)batch_normalization_1/AssignMovingAvg/subSub+batch_normalization_1/AssignMovingAvg/sub/x%batch_normalization_1/cond_1/Identity*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: 

4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0
ê
+batch_normalization_1/AssignMovingAvg/sub_1Sub4batch_normalization_1/AssignMovingAvg/ReadVariableOp%batch_normalization_1/cond/Identity_1*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:
ã
)batch_normalization_1/AssignMovingAvg/mulMul+batch_normalization_1/AssignMovingAvg/sub_1)batch_normalization_1/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:
á
9batch_normalization_1/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_1/moving_mean)batch_normalization_1/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0

6batch_normalization_1/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_1/moving_mean:^batch_normalization_1/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0
¬
-batch_normalization_1/AssignMovingAvg_1/sub/xConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ã
+batch_normalization_1/AssignMovingAvg_1/subSub-batch_normalization_1/AssignMovingAvg_1/sub/x%batch_normalization_1/cond_1/Identity*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: 

6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0
ò
-batch_normalization_1/AssignMovingAvg_1/sub_1Sub6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp%batch_normalization_1/cond/Identity_2*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
í
+batch_normalization_1/AssignMovingAvg_1/mulMul-batch_normalization_1/AssignMovingAvg_1/sub_1+batch_normalization_1/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
í
;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_1/moving_variance+batch_normalization_1/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0

8batch_normalization_1/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_1/moving_variance<^batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0
­
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
:*
dtype0*%
valueB"            

.conv2d_4/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *¦¾

.conv2d_4/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *¦>
Ý
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:*
dtype0
Ú
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
ô
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:
è
*conv2d_4/kernel/Initializer/random_uniformAddV2.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:
¦
conv2d_4/kernelVarHandleOp*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_4/kernel
o
0conv2d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
t
conv2d_4/kernel/AssignAssignVariableOpconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:*
dtype0

conv2d_4/bias/Initializer/zerosConst* 
_class
loc:@conv2d_4/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_4/biasVarHandleOp* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
k
.conv2d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
e
conv2d_4/bias/AssignAssignVariableOpconv2d_4/biasconv2d_4/bias/Initializer/zeros*
dtype0
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0
v
conv2d_4/Conv2D/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:*
dtype0
¹
conv2d_4/Conv2DConv2D#batch_normalization_1/cond/Identityconv2d_4/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

i
conv2d_4/BiasAdd/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0

conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
p
leaky_re_lu_4/LeakyRelu	LeakyReluconv2d_4/BiasAdd*(
_output_shapes
:*
alpha%>
­
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
:*
dtype0*%
valueB"            

.conv2d_5/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìÑ¾

.conv2d_5/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìÑ>
Ý
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:*
dtype0
Ú
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
ô
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:
è
*conv2d_5/kernel/Initializer/random_uniformAddV2.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:
¦
conv2d_5/kernelVarHandleOp*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_5/kernel
o
0conv2d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
t
conv2d_5/kernel/AssignAssignVariableOpconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:*
dtype0

conv2d_5/bias/Initializer/zerosConst* 
_class
loc:@conv2d_5/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_5/biasVarHandleOp* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_5/bias
k
.conv2d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
e
conv2d_5/bias/AssignAssignVariableOpconv2d_5/biasconv2d_5/bias/Initializer/zeros*
dtype0
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:*
dtype0
v
conv2d_5/Conv2D/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:*
dtype0
­
conv2d_5/Conv2DConv2Dleaky_re_lu_4/LeakyReluconv2d_5/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

i
conv2d_5/BiasAdd/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:*
dtype0

conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
p
leaky_re_lu_5/LeakyRelu	LeakyReluconv2d_5/BiasAdd*(
_output_shapes
:*
alpha%>
©
,batch_normalization_2/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:*
dtype0*
valueB*  ?
¾
batch_normalization_2/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_2/gamma

<batch_normalization_2/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_2/gamma*
_output_shapes
: 

"batch_normalization_2/gamma/AssignAssignVariableOpbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
dtype0

/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:*
dtype0
¨
,batch_normalization_2/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:*
dtype0*
valueB*    
»
batch_normalization_2/betaVarHandleOp*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_2/beta

;batch_normalization_2/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_2/beta*
_output_shapes
: 

!batch_normalization_2/beta/AssignAssignVariableOpbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
dtype0

.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:*
dtype0
¶
3batch_normalization_2/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
Ð
!batch_normalization_2/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_2/moving_mean

Bbatch_normalization_2/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_2/moving_mean*
_output_shapes
: 
¡
(batch_normalization_2/moving_mean/AssignAssignVariableOp!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:*
dtype0
½
6batch_normalization_2/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:*
dtype0*
valueB*  ?
Ü
%batch_normalization_2/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_2/moving_variance

Fbatch_normalization_2/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_2/moving_variance*
_output_shapes
: 
¬
,batch_normalization_2/moving_variance/AssignAssignVariableOp%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
dtype0

9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:*
dtype0
Ê
batch_normalization_2/condIfkeras_learning_phasebatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceleaky_re_lu_5/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*B
_output_shapes0
.:::: : : : : : : *&
_read_only_resource_inputs
*7
else_branch(R&
$batch_normalization_2_cond_false_349*A
output_shapes0
.:::: : : : : : : *6
then_branch'R%
#batch_normalization_2_cond_true_348
~
#batch_normalization_2/cond/IdentityIdentitybatch_normalization_2/cond*
T0*(
_output_shapes
:
t
%batch_normalization_2/cond/Identity_1Identitybatch_normalization_2/cond:1*
T0*
_output_shapes
:
t
%batch_normalization_2/cond/Identity_2Identitybatch_normalization_2/cond:2*
T0*
_output_shapes
:
p
%batch_normalization_2/cond/Identity_3Identitybatch_normalization_2/cond:3*
T0*
_output_shapes
: 
p
%batch_normalization_2/cond/Identity_4Identitybatch_normalization_2/cond:4*
T0*
_output_shapes
: 
p
%batch_normalization_2/cond/Identity_5Identitybatch_normalization_2/cond:5*
T0*
_output_shapes
: 
p
%batch_normalization_2/cond/Identity_6Identitybatch_normalization_2/cond:6*
T0*
_output_shapes
: 
p
%batch_normalization_2/cond/Identity_7Identitybatch_normalization_2/cond:7*
T0*
_output_shapes
: 
p
%batch_normalization_2/cond/Identity_8Identitybatch_normalization_2/cond:8*
T0*
_output_shapes
: 
p
%batch_normalization_2/cond/Identity_9Identitybatch_normalization_2/cond:9*
T0*
_output_shapes
: 
Ï
batch_normalization_2/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *9
else_branch*R(
&batch_normalization_2_cond_1_false_417*
output_shapes
: *8
then_branch)R'
%batch_normalization_2_cond_1_true_416
p
%batch_normalization_2/cond_1/IdentityIdentitybatch_normalization_2/cond_1*
T0*
_output_shapes
: 
¦
+batch_normalization_2/AssignMovingAvg/sub/xConst*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
Û
)batch_normalization_2/AssignMovingAvg/subSub+batch_normalization_2/AssignMovingAvg/sub/x%batch_normalization_2/cond_1/Identity*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
: 

4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:*
dtype0
ê
+batch_normalization_2/AssignMovingAvg/sub_1Sub4batch_normalization_2/AssignMovingAvg/ReadVariableOp%batch_normalization_2/cond/Identity_1*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:
ã
)batch_normalization_2/AssignMovingAvg/mulMul+batch_normalization_2/AssignMovingAvg/sub_1)batch_normalization_2/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:
á
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_2/moving_mean)batch_normalization_2/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0

6batch_normalization_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_2/moving_mean:^batch_normalization_2/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:*
dtype0
¬
-batch_normalization_2/AssignMovingAvg_1/sub/xConst*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ã
+batch_normalization_2/AssignMovingAvg_1/subSub-batch_normalization_2/AssignMovingAvg_1/sub/x%batch_normalization_2/cond_1/Identity*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
: 

6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:*
dtype0
ò
-batch_normalization_2/AssignMovingAvg_1/sub_1Sub6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp%batch_normalization_2/cond/Identity_2*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:
í
+batch_normalization_2/AssignMovingAvg_1/mulMul-batch_normalization_2/AssignMovingAvg_1/sub_1+batch_normalization_2/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:
í
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_2/moving_variance+batch_normalization_2/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0

8batch_normalization_2/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_2/moving_variance<^batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:*
dtype0
­
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
:*
dtype0*%
valueB"         0   

.conv2d_6/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ïà×½

.conv2d_6/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ïà×=
Ý
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:0*
dtype0
Ú
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
ô
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:0
è
*conv2d_6/kernel/Initializer/random_uniformAddV2.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:0
¦
conv2d_6/kernelVarHandleOp*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_6/kernel
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
t
conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:0*
dtype0

conv2d_6/bias/Initializer/zerosConst* 
_class
loc:@conv2d_6/bias*
_output_shapes
:0*
dtype0*
valueB0*    

conv2d_6/biasVarHandleOp* 
_class
loc:@conv2d_6/bias*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv2d_6/bias
k
.conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
e
conv2d_6/bias/AssignAssignVariableOpconv2d_6/biasconv2d_6/bias/Initializer/zeros*
dtype0
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:0*
dtype0
v
conv2d_6/Conv2D/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:0*
dtype0
¹
conv2d_6/Conv2DConv2D#batch_normalization_2/cond/Identityconv2d_6/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:0*
paddingSAME*
strides

i
conv2d_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:0*
dtype0

conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:0
p
leaky_re_lu_6/LeakyRelu	LeakyReluconv2d_6/BiasAdd*(
_output_shapes
:0*
alpha%>
­
0conv2d_7/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
:*
dtype0*%
valueB"      0      

.conv2d_7/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í¾

.conv2d_7/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í>
Ý
8conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_7/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:0*
dtype0
Ú
.conv2d_7/kernel/Initializer/random_uniform/subSub.conv2d_7/kernel/Initializer/random_uniform/max.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
ô
.conv2d_7/kernel/Initializer/random_uniform/mulMul8conv2d_7/kernel/Initializer/random_uniform/RandomUniform.conv2d_7/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:0
è
*conv2d_7/kernel/Initializer/random_uniformAddV2.conv2d_7/kernel/Initializer/random_uniform/mul.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:0
¦
conv2d_7/kernelVarHandleOp*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_7/kernel
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
t
conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel*conv2d_7/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:0*
dtype0

conv2d_7/bias/Initializer/zerosConst* 
_class
loc:@conv2d_7/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_7/biasVarHandleOp* 
_class
loc:@conv2d_7/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_7/bias
k
.conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
e
conv2d_7/bias/AssignAssignVariableOpconv2d_7/biasconv2d_7/bias/Initializer/zeros*
dtype0
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:*
dtype0
v
conv2d_7/Conv2D/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:0*
dtype0
­
conv2d_7/Conv2DConv2Dleaky_re_lu_6/LeakyReluconv2d_7/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

i
conv2d_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:*
dtype0

conv2d_7/BiasAddBiasAddconv2d_7/Conv2Dconv2d_7/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
p
leaky_re_lu_7/LeakyRelu	LeakyReluconv2d_7/BiasAdd*(
_output_shapes
:*
alpha%>
©
,batch_normalization_3/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes
:*
dtype0*
valueB*  ?
¾
batch_normalization_3/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_3/gamma

<batch_normalization_3/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_3/gamma*
_output_shapes
: 

"batch_normalization_3/gamma/AssignAssignVariableOpbatch_normalization_3/gamma,batch_normalization_3/gamma/Initializer/ones*
dtype0

/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:*
dtype0
¨
,batch_normalization_3/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes
:*
dtype0*
valueB*    
»
batch_normalization_3/betaVarHandleOp*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_3/beta

;batch_normalization_3/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_3/beta*
_output_shapes
: 

!batch_normalization_3/beta/AssignAssignVariableOpbatch_normalization_3/beta,batch_normalization_3/beta/Initializer/zeros*
dtype0

.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:*
dtype0
¶
3batch_normalization_3/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
Ð
!batch_normalization_3/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/moving_mean

Bbatch_normalization_3/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_3/moving_mean*
_output_shapes
: 
¡
(batch_normalization_3/moving_mean/AssignAssignVariableOp!batch_normalization_3/moving_mean3batch_normalization_3/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0
½
6batch_normalization_3/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0*
valueB*  ?
Ü
%batch_normalization_3/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_3/moving_variance

Fbatch_normalization_3/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_3/moving_variance*
_output_shapes
: 
¬
,batch_normalization_3/moving_variance/AssignAssignVariableOp%batch_normalization_3/moving_variance6batch_normalization_3/moving_variance/Initializer/ones*
dtype0

9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0
Ê
batch_normalization_3/condIfkeras_learning_phasebatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceleaky_re_lu_7/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*B
_output_shapes0
.:::: : : : : : : *&
_read_only_resource_inputs
*7
else_branch(R&
$batch_normalization_3_cond_false_491*A
output_shapes0
.:::: : : : : : : *6
then_branch'R%
#batch_normalization_3_cond_true_490
~
#batch_normalization_3/cond/IdentityIdentitybatch_normalization_3/cond*
T0*(
_output_shapes
:
t
%batch_normalization_3/cond/Identity_1Identitybatch_normalization_3/cond:1*
T0*
_output_shapes
:
t
%batch_normalization_3/cond/Identity_2Identitybatch_normalization_3/cond:2*
T0*
_output_shapes
:
p
%batch_normalization_3/cond/Identity_3Identitybatch_normalization_3/cond:3*
T0*
_output_shapes
: 
p
%batch_normalization_3/cond/Identity_4Identitybatch_normalization_3/cond:4*
T0*
_output_shapes
: 
p
%batch_normalization_3/cond/Identity_5Identitybatch_normalization_3/cond:5*
T0*
_output_shapes
: 
p
%batch_normalization_3/cond/Identity_6Identitybatch_normalization_3/cond:6*
T0*
_output_shapes
: 
p
%batch_normalization_3/cond/Identity_7Identitybatch_normalization_3/cond:7*
T0*
_output_shapes
: 
p
%batch_normalization_3/cond/Identity_8Identitybatch_normalization_3/cond:8*
T0*
_output_shapes
: 
p
%batch_normalization_3/cond/Identity_9Identitybatch_normalization_3/cond:9*
T0*
_output_shapes
: 
Ï
batch_normalization_3/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *9
else_branch*R(
&batch_normalization_3_cond_1_false_559*
output_shapes
: *8
then_branch)R'
%batch_normalization_3_cond_1_true_558
p
%batch_normalization_3/cond_1/IdentityIdentitybatch_normalization_3/cond_1*
T0*
_output_shapes
: 
¦
+batch_normalization_3/AssignMovingAvg/sub/xConst*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
Û
)batch_normalization_3/AssignMovingAvg/subSub+batch_normalization_3/AssignMovingAvg/sub/x%batch_normalization_3/cond_1/Identity*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
: 

4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0
ê
+batch_normalization_3/AssignMovingAvg/sub_1Sub4batch_normalization_3/AssignMovingAvg/ReadVariableOp%batch_normalization_3/cond/Identity_1*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:
ã
)batch_normalization_3/AssignMovingAvg/mulMul+batch_normalization_3/AssignMovingAvg/sub_1)batch_normalization_3/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:
á
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_3/moving_mean)batch_normalization_3/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0

6batch_normalization_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_3/moving_mean:^batch_normalization_3/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0
¬
-batch_normalization_3/AssignMovingAvg_1/sub/xConst*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ã
+batch_normalization_3/AssignMovingAvg_1/subSub-batch_normalization_3/AssignMovingAvg_1/sub/x%batch_normalization_3/cond_1/Identity*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
: 

6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0
ò
-batch_normalization_3/AssignMovingAvg_1/sub_1Sub6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp%batch_normalization_3/cond/Identity_2*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:
í
+batch_normalization_3/AssignMovingAvg_1/mulMul-batch_normalization_3/AssignMovingAvg_1/sub_1+batch_normalization_3/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:
í
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_3/moving_variance+batch_normalization_3/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0

8batch_normalization_3/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_3/moving_variance<^batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0
­
0conv2d_8/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
:*
dtype0*%
valueB"         `   

.conv2d_8/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
valueB
 *¦½

.conv2d_8/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
valueB
 *¦=
Ý
8conv2d_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_8/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
:`*
dtype0
Ú
.conv2d_8/kernel/Initializer/random_uniform/subSub.conv2d_8/kernel/Initializer/random_uniform/max.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
ô
.conv2d_8/kernel/Initializer/random_uniform/mulMul8conv2d_8/kernel/Initializer/random_uniform/RandomUniform.conv2d_8/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
:`
è
*conv2d_8/kernel/Initializer/random_uniformAddV2.conv2d_8/kernel/Initializer/random_uniform/mul.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
:`
¦
conv2d_8/kernelVarHandleOp*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_8/kernel
o
0conv2d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
t
conv2d_8/kernel/AssignAssignVariableOpconv2d_8/kernel*conv2d_8/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:`*
dtype0

conv2d_8/bias/Initializer/zerosConst* 
_class
loc:@conv2d_8/bias*
_output_shapes
:`*
dtype0*
valueB`*    

conv2d_8/biasVarHandleOp* 
_class
loc:@conv2d_8/bias*
_output_shapes
: *
dtype0*
shape:`*
shared_nameconv2d_8/bias
k
.conv2d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
e
conv2d_8/bias/AssignAssignVariableOpconv2d_8/biasconv2d_8/bias/Initializer/zeros*
dtype0
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:`*
dtype0
v
conv2d_8/Conv2D/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:`*
dtype0
·
conv2d_8/Conv2DConv2D#batch_normalization_3/cond/Identityconv2d_8/Conv2D/ReadVariableOp*
T0*&
_output_shapes
:@@`*
paddingSAME*
strides

i
conv2d_8/BiasAdd/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:`*
dtype0
~
conv2d_8/BiasAddBiasAddconv2d_8/Conv2Dconv2d_8/BiasAdd/ReadVariableOp*
T0*&
_output_shapes
:@@`
n
leaky_re_lu_8/LeakyRelu	LeakyReluconv2d_8/BiasAdd*&
_output_shapes
:@@`*
alpha%>
­
0conv2d_9/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
:*
dtype0*%
valueB"      `   0   

.conv2d_9/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìQ¾

.conv2d_9/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìQ>
Ý
8conv2d_9/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_9/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_9/kernel*&
_output_shapes
:`0*
dtype0
Ú
.conv2d_9/kernel/Initializer/random_uniform/subSub.conv2d_9/kernel/Initializer/random_uniform/max.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: 
ô
.conv2d_9/kernel/Initializer/random_uniform/mulMul8conv2d_9/kernel/Initializer/random_uniform/RandomUniform.conv2d_9/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_9/kernel*&
_output_shapes
:`0
è
*conv2d_9/kernel/Initializer/random_uniformAddV2.conv2d_9/kernel/Initializer/random_uniform/mul.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*&
_output_shapes
:`0
¦
conv2d_9/kernelVarHandleOp*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
shape:`0* 
shared_nameconv2d_9/kernel
o
0conv2d_9/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
t
conv2d_9/kernel/AssignAssignVariableOpconv2d_9/kernel*conv2d_9/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:`0*
dtype0

conv2d_9/bias/Initializer/zerosConst* 
_class
loc:@conv2d_9/bias*
_output_shapes
:0*
dtype0*
valueB0*    

conv2d_9/biasVarHandleOp* 
_class
loc:@conv2d_9/bias*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv2d_9/bias
k
.conv2d_9/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/bias*
_output_shapes
: 
e
conv2d_9/bias/AssignAssignVariableOpconv2d_9/biasconv2d_9/bias/Initializer/zeros*
dtype0
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:0*
dtype0
v
conv2d_9/Conv2D/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:`0*
dtype0
«
conv2d_9/Conv2DConv2Dleaky_re_lu_8/LeakyReluconv2d_9/Conv2D/ReadVariableOp*
T0*&
_output_shapes
:@@0*
paddingSAME*
strides

i
conv2d_9/BiasAdd/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:0*
dtype0
~
conv2d_9/BiasAddBiasAddconv2d_9/Conv2Dconv2d_9/BiasAdd/ReadVariableOp*
T0*&
_output_shapes
:@@0
n
leaky_re_lu_9/LeakyRelu	LeakyReluconv2d_9/BiasAdd*&
_output_shapes
:@@0*
alpha%>
©
,batch_normalization_4/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
:0*
dtype0*
valueB0*  ?
¾
batch_normalization_4/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
: *
dtype0*
shape:0*,
shared_namebatch_normalization_4/gamma

<batch_normalization_4/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_4/gamma*
_output_shapes
: 

"batch_normalization_4/gamma/AssignAssignVariableOpbatch_normalization_4/gamma,batch_normalization_4/gamma/Initializer/ones*
dtype0

/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:0*
dtype0
¨
,batch_normalization_4/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
:0*
dtype0*
valueB0*    
»
batch_normalization_4/betaVarHandleOp*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
: *
dtype0*
shape:0*+
shared_namebatch_normalization_4/beta

;batch_normalization_4/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_4/beta*
_output_shapes
: 

!batch_normalization_4/beta/AssignAssignVariableOpbatch_normalization_4/beta,batch_normalization_4/beta/Initializer/zeros*
dtype0

.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
:0*
dtype0
¶
3batch_normalization_4/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:0*
dtype0*
valueB0*    
Ð
!batch_normalization_4/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
: *
dtype0*
shape:0*2
shared_name#!batch_normalization_4/moving_mean

Bbatch_normalization_4/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_4/moving_mean*
_output_shapes
: 
¡
(batch_normalization_4/moving_mean/AssignAssignVariableOp!batch_normalization_4/moving_mean3batch_normalization_4/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:0*
dtype0
½
6batch_normalization_4/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:0*
dtype0*
valueB0*  ?
Ü
%batch_normalization_4/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
: *
dtype0*
shape:0*6
shared_name'%batch_normalization_4/moving_variance

Fbatch_normalization_4/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_4/moving_variance*
_output_shapes
: 
¬
,batch_normalization_4/moving_variance/AssignAssignVariableOp%batch_normalization_4/moving_variance6batch_normalization_4/moving_variance/Initializer/ones*
dtype0

9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:0*
dtype0
Æ
batch_normalization_4/condIfkeras_learning_phasebatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceleaky_re_lu_9/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*@
_output_shapes.
,:@@0:0:0: : : : : : : *&
_read_only_resource_inputs
*7
else_branch(R&
$batch_normalization_4_cond_false_633*?
output_shapes.
,:@@0:0:0: : : : : : : *6
then_branch'R%
#batch_normalization_4_cond_true_632
|
#batch_normalization_4/cond/IdentityIdentitybatch_normalization_4/cond*
T0*&
_output_shapes
:@@0
t
%batch_normalization_4/cond/Identity_1Identitybatch_normalization_4/cond:1*
T0*
_output_shapes
:0
t
%batch_normalization_4/cond/Identity_2Identitybatch_normalization_4/cond:2*
T0*
_output_shapes
:0
p
%batch_normalization_4/cond/Identity_3Identitybatch_normalization_4/cond:3*
T0*
_output_shapes
: 
p
%batch_normalization_4/cond/Identity_4Identitybatch_normalization_4/cond:4*
T0*
_output_shapes
: 
p
%batch_normalization_4/cond/Identity_5Identitybatch_normalization_4/cond:5*
T0*
_output_shapes
: 
p
%batch_normalization_4/cond/Identity_6Identitybatch_normalization_4/cond:6*
T0*
_output_shapes
: 
p
%batch_normalization_4/cond/Identity_7Identitybatch_normalization_4/cond:7*
T0*
_output_shapes
: 
p
%batch_normalization_4/cond/Identity_8Identitybatch_normalization_4/cond:8*
T0*
_output_shapes
: 
p
%batch_normalization_4/cond/Identity_9Identitybatch_normalization_4/cond:9*
T0*
_output_shapes
: 
Ï
batch_normalization_4/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *9
else_branch*R(
&batch_normalization_4_cond_1_false_701*
output_shapes
: *8
then_branch)R'
%batch_normalization_4_cond_1_true_700
p
%batch_normalization_4/cond_1/IdentityIdentitybatch_normalization_4/cond_1*
T0*
_output_shapes
: 
¦
+batch_normalization_4/AssignMovingAvg/sub/xConst*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
Û
)batch_normalization_4/AssignMovingAvg/subSub+batch_normalization_4/AssignMovingAvg/sub/x%batch_normalization_4/cond_1/Identity*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
: 

4batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:0*
dtype0
ê
+batch_normalization_4/AssignMovingAvg/sub_1Sub4batch_normalization_4/AssignMovingAvg/ReadVariableOp%batch_normalization_4/cond/Identity_1*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:0
ã
)batch_normalization_4/AssignMovingAvg/mulMul+batch_normalization_4/AssignMovingAvg/sub_1)batch_normalization_4/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:0
á
9batch_normalization_4/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_4/moving_mean)batch_normalization_4/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_4/moving_mean*
dtype0

6batch_normalization_4/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_4/moving_mean:^batch_normalization_4/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:0*
dtype0
¬
-batch_normalization_4/AssignMovingAvg_1/sub/xConst*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ã
+batch_normalization_4/AssignMovingAvg_1/subSub-batch_normalization_4/AssignMovingAvg_1/sub/x%batch_normalization_4/cond_1/Identity*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
: 

6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:0*
dtype0
ò
-batch_normalization_4/AssignMovingAvg_1/sub_1Sub6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp%batch_normalization_4/cond/Identity_2*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:0
í
+batch_normalization_4/AssignMovingAvg_1/mulMul-batch_normalization_4/AssignMovingAvg_1/sub_1+batch_normalization_4/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:0
í
;batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_4/moving_variance+batch_normalization_4/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_4/moving_variance*
dtype0

8batch_normalization_4/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_4/moving_variance<^batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:0*
dtype0
¯
1conv2d_10/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_10/kernel*
_output_shapes
:*
dtype0*%
valueB"      0     

/conv2d_10/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_10/kernel*
_output_shapes
: *
dtype0*
valueB
 *õç ½

/conv2d_10/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_10/kernel*
_output_shapes
: *
dtype0*
valueB
 *õç =
á
9conv2d_10/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_10/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_10/kernel*'
_output_shapes
:0*
dtype0
Þ
/conv2d_10/kernel/Initializer/random_uniform/subSub/conv2d_10/kernel/Initializer/random_uniform/max/conv2d_10/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_10/kernel*
_output_shapes
: 
ù
/conv2d_10/kernel/Initializer/random_uniform/mulMul9conv2d_10/kernel/Initializer/random_uniform/RandomUniform/conv2d_10/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_10/kernel*'
_output_shapes
:0
í
+conv2d_10/kernel/Initializer/random_uniformAddV2/conv2d_10/kernel/Initializer/random_uniform/mul/conv2d_10/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_10/kernel*'
_output_shapes
:0
ª
conv2d_10/kernelVarHandleOp*#
_class
loc:@conv2d_10/kernel*
_output_shapes
: *
dtype0*
shape:0*!
shared_nameconv2d_10/kernel
q
1conv2d_10/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_10/kernel*
_output_shapes
: 
w
conv2d_10/kernel/AssignAssignVariableOpconv2d_10/kernel+conv2d_10/kernel/Initializer/random_uniform*
dtype0
~
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*'
_output_shapes
:0*
dtype0

 conv2d_10/bias/Initializer/zerosConst*!
_class
loc:@conv2d_10/bias*
_output_shapes	
:*
dtype0*
valueB*    

conv2d_10/biasVarHandleOp*!
_class
loc:@conv2d_10/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_10/bias
m
/conv2d_10/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_10/bias*
_output_shapes
: 
h
conv2d_10/bias/AssignAssignVariableOpconv2d_10/bias conv2d_10/bias/Initializer/zeros*
dtype0
n
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes	
:*
dtype0
y
conv2d_10/Conv2D/ReadVariableOpReadVariableOpconv2d_10/kernel*'
_output_shapes
:0*
dtype0
º
conv2d_10/Conv2DConv2D#batch_normalization_4/cond/Identityconv2d_10/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:  *
paddingSAME*
strides

l
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes	
:*
dtype0

conv2d_10/BiasAddBiasAddconv2d_10/Conv2D conv2d_10/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:  
q
leaky_re_lu_10/LeakyRelu	LeakyReluconv2d_10/BiasAdd*'
_output_shapes
:  *
alpha%>
¯
1conv2d_11/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_11/kernel*
_output_shapes
:*
dtype0*%
valueB"        À   

/conv2d_11/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_11/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìÑ½

/conv2d_11/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_11/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìÑ=
â
9conv2d_11/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_11/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_11/kernel*(
_output_shapes
:À*
dtype0
Þ
/conv2d_11/kernel/Initializer/random_uniform/subSub/conv2d_11/kernel/Initializer/random_uniform/max/conv2d_11/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_11/kernel*
_output_shapes
: 
ú
/conv2d_11/kernel/Initializer/random_uniform/mulMul9conv2d_11/kernel/Initializer/random_uniform/RandomUniform/conv2d_11/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_11/kernel*(
_output_shapes
:À
î
+conv2d_11/kernel/Initializer/random_uniformAddV2/conv2d_11/kernel/Initializer/random_uniform/mul/conv2d_11/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_11/kernel*(
_output_shapes
:À
«
conv2d_11/kernelVarHandleOp*#
_class
loc:@conv2d_11/kernel*
_output_shapes
: *
dtype0*
shape:À*!
shared_nameconv2d_11/kernel
q
1conv2d_11/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_11/kernel*
_output_shapes
: 
w
conv2d_11/kernel/AssignAssignVariableOpconv2d_11/kernel+conv2d_11/kernel/Initializer/random_uniform*
dtype0

$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*(
_output_shapes
:À*
dtype0

 conv2d_11/bias/Initializer/zerosConst*!
_class
loc:@conv2d_11/bias*
_output_shapes	
:À*
dtype0*
valueBÀ*    

conv2d_11/biasVarHandleOp*!
_class
loc:@conv2d_11/bias*
_output_shapes
: *
dtype0*
shape:À*
shared_nameconv2d_11/bias
m
/conv2d_11/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_11/bias*
_output_shapes
: 
h
conv2d_11/bias/AssignAssignVariableOpconv2d_11/bias conv2d_11/bias/Initializer/zeros*
dtype0
n
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes	
:À*
dtype0
z
conv2d_11/Conv2D/ReadVariableOpReadVariableOpconv2d_11/kernel*(
_output_shapes
:À*
dtype0
¯
conv2d_11/Conv2DConv2Dleaky_re_lu_10/LeakyReluconv2d_11/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:  À*
paddingSAME*
strides

l
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes	
:À*
dtype0

conv2d_11/BiasAddBiasAddconv2d_11/Conv2D conv2d_11/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:  À
q
leaky_re_lu_11/LeakyRelu	LeakyReluconv2d_11/BiasAdd*'
_output_shapes
:  À*
alpha%>
«
,batch_normalization_5/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes	
:À*
dtype0*
valueBÀ*  ?
¿
batch_normalization_5/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes
: *
dtype0*
shape:À*,
shared_namebatch_normalization_5/gamma

<batch_normalization_5/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_5/gamma*
_output_shapes
: 

"batch_normalization_5/gamma/AssignAssignVariableOpbatch_normalization_5/gamma,batch_normalization_5/gamma/Initializer/ones*
dtype0

/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes	
:À*
dtype0
ª
,batch_normalization_5/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes	
:À*
dtype0*
valueBÀ*    
¼
batch_normalization_5/betaVarHandleOp*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes
: *
dtype0*
shape:À*+
shared_namebatch_normalization_5/beta

;batch_normalization_5/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_5/beta*
_output_shapes
: 

!batch_normalization_5/beta/AssignAssignVariableOpbatch_normalization_5/beta,batch_normalization_5/beta/Initializer/zeros*
dtype0

.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes	
:À*
dtype0
¸
3batch_normalization_5/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes	
:À*
dtype0*
valueBÀ*    
Ñ
!batch_normalization_5/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
: *
dtype0*
shape:À*2
shared_name#!batch_normalization_5/moving_mean

Bbatch_normalization_5/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_5/moving_mean*
_output_shapes
: 
¡
(batch_normalization_5/moving_mean/AssignAssignVariableOp!batch_normalization_5/moving_mean3batch_normalization_5/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:À*
dtype0
¿
6batch_normalization_5/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes	
:À*
dtype0*
valueBÀ*  ?
Ý
%batch_normalization_5/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
: *
dtype0*
shape:À*6
shared_name'%batch_normalization_5/moving_variance

Fbatch_normalization_5/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_5/moving_variance*
_output_shapes
: 
¬
,batch_normalization_5/moving_variance/AssignAssignVariableOp%batch_normalization_5/moving_variance6batch_normalization_5/moving_variance/Initializer/ones*
dtype0

9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes	
:À*
dtype0
Í
batch_normalization_5/condIfkeras_learning_phasebatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceleaky_re_lu_11/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*C
_output_shapes1
/:  À:À:À: : : : : : : *&
_read_only_resource_inputs
*7
else_branch(R&
$batch_normalization_5_cond_false_775*B
output_shapes1
/:  À:À:À: : : : : : : *6
then_branch'R%
#batch_normalization_5_cond_true_774
}
#batch_normalization_5/cond/IdentityIdentitybatch_normalization_5/cond*
T0*'
_output_shapes
:  À
u
%batch_normalization_5/cond/Identity_1Identitybatch_normalization_5/cond:1*
T0*
_output_shapes	
:À
u
%batch_normalization_5/cond/Identity_2Identitybatch_normalization_5/cond:2*
T0*
_output_shapes	
:À
p
%batch_normalization_5/cond/Identity_3Identitybatch_normalization_5/cond:3*
T0*
_output_shapes
: 
p
%batch_normalization_5/cond/Identity_4Identitybatch_normalization_5/cond:4*
T0*
_output_shapes
: 
p
%batch_normalization_5/cond/Identity_5Identitybatch_normalization_5/cond:5*
T0*
_output_shapes
: 
p
%batch_normalization_5/cond/Identity_6Identitybatch_normalization_5/cond:6*
T0*
_output_shapes
: 
p
%batch_normalization_5/cond/Identity_7Identitybatch_normalization_5/cond:7*
T0*
_output_shapes
: 
p
%batch_normalization_5/cond/Identity_8Identitybatch_normalization_5/cond:8*
T0*
_output_shapes
: 
p
%batch_normalization_5/cond/Identity_9Identitybatch_normalization_5/cond:9*
T0*
_output_shapes
: 
Ï
batch_normalization_5/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *9
else_branch*R(
&batch_normalization_5_cond_1_false_843*
output_shapes
: *8
then_branch)R'
%batch_normalization_5_cond_1_true_842
p
%batch_normalization_5/cond_1/IdentityIdentitybatch_normalization_5/cond_1*
T0*
_output_shapes
: 
¦
+batch_normalization_5/AssignMovingAvg/sub/xConst*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
Û
)batch_normalization_5/AssignMovingAvg/subSub+batch_normalization_5/AssignMovingAvg/sub/x%batch_normalization_5/cond_1/Identity*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
: 

4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:À*
dtype0
ë
+batch_normalization_5/AssignMovingAvg/sub_1Sub4batch_normalization_5/AssignMovingAvg/ReadVariableOp%batch_normalization_5/cond/Identity_1*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes	
:À
ä
)batch_normalization_5/AssignMovingAvg/mulMul+batch_normalization_5/AssignMovingAvg/sub_1)batch_normalization_5/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes	
:À
á
9batch_normalization_5/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_5/moving_mean)batch_normalization_5/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_5/moving_mean*
dtype0

6batch_normalization_5/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_5/moving_mean:^batch_normalization_5/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes	
:À*
dtype0
¬
-batch_normalization_5/AssignMovingAvg_1/sub/xConst*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ã
+batch_normalization_5/AssignMovingAvg_1/subSub-batch_normalization_5/AssignMovingAvg_1/sub/x%batch_normalization_5/cond_1/Identity*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
: 

6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes	
:À*
dtype0
ó
-batch_normalization_5/AssignMovingAvg_1/sub_1Sub6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp%batch_normalization_5/cond/Identity_2*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes	
:À
î
+batch_normalization_5/AssignMovingAvg_1/mulMul-batch_normalization_5/AssignMovingAvg_1/sub_1+batch_normalization_5/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes	
:À
í
;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_5/moving_variance+batch_normalization_5/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_5/moving_variance*
dtype0

8batch_normalization_5/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_5/moving_variance<^batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes	
:À*
dtype0
½
8conv2d_transpose/kernel/Initializer/random_uniform/shapeConst**
_class 
loc:@conv2d_transpose/kernel*
_output_shapes
:*
dtype0*%
valueB"      À   À   
§
6conv2d_transpose/kernel/Initializer/random_uniform/minConst**
_class 
loc:@conv2d_transpose/kernel*
_output_shapes
: *
dtype0*
valueB
 *«ª*½
§
6conv2d_transpose/kernel/Initializer/random_uniform/maxConst**
_class 
loc:@conv2d_transpose/kernel*
_output_shapes
: *
dtype0*
valueB
 *«ª*=
÷
@conv2d_transpose/kernel/Initializer/random_uniform/RandomUniformRandomUniform8conv2d_transpose/kernel/Initializer/random_uniform/shape*
T0**
_class 
loc:@conv2d_transpose/kernel*(
_output_shapes
:ÀÀ*
dtype0
ú
6conv2d_transpose/kernel/Initializer/random_uniform/subSub6conv2d_transpose/kernel/Initializer/random_uniform/max6conv2d_transpose/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@conv2d_transpose/kernel*
_output_shapes
: 

6conv2d_transpose/kernel/Initializer/random_uniform/mulMul@conv2d_transpose/kernel/Initializer/random_uniform/RandomUniform6conv2d_transpose/kernel/Initializer/random_uniform/sub*
T0**
_class 
loc:@conv2d_transpose/kernel*(
_output_shapes
:ÀÀ

2conv2d_transpose/kernel/Initializer/random_uniformAddV26conv2d_transpose/kernel/Initializer/random_uniform/mul6conv2d_transpose/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@conv2d_transpose/kernel*(
_output_shapes
:ÀÀ
À
conv2d_transpose/kernelVarHandleOp**
_class 
loc:@conv2d_transpose/kernel*
_output_shapes
: *
dtype0*
shape:ÀÀ*(
shared_nameconv2d_transpose/kernel

8conv2d_transpose/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose/kernel*
_output_shapes
: 

conv2d_transpose/kernel/AssignAssignVariableOpconv2d_transpose/kernel2conv2d_transpose/kernel/Initializer/random_uniform*
dtype0

+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*(
_output_shapes
:ÀÀ*
dtype0
 
'conv2d_transpose/bias/Initializer/zerosConst*(
_class
loc:@conv2d_transpose/bias*
_output_shapes	
:À*
dtype0*
valueBÀ*    
­
conv2d_transpose/biasVarHandleOp*(
_class
loc:@conv2d_transpose/bias*
_output_shapes
: *
dtype0*
shape:À*&
shared_nameconv2d_transpose/bias
{
6conv2d_transpose/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose/bias*
_output_shapes
: 
}
conv2d_transpose/bias/AssignAssignVariableOpconv2d_transpose/bias'conv2d_transpose/bias/Initializer/zeros*
dtype0
|
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes	
:À*
dtype0
o
conv2d_transpose/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"           À   
n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape$conv2d_transpose/strided_slice/stack&conv2d_transpose/strided_slice/stack_1&conv2d_transpose/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Z
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@
Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@
[
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :À
º
conv2d_transpose/stackPackconv2d_transpose/strided_sliceconv2d_transpose/stack/1conv2d_transpose/stack/2conv2d_transpose/stack/3*
N*
T0*
_output_shapes
:
p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack&conv2d_transpose/strided_slice_1/stack(conv2d_transpose/strided_slice_1/stack_1(conv2d_transpose/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose/kernel*(
_output_shapes
:ÀÀ*
dtype0

!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack0conv2d_transpose/conv2d_transpose/ReadVariableOp#batch_normalization_5/cond/Identity*
T0*'
_output_shapes
:@@À*
paddingSAME*
strides

z
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes	
:À*
dtype0
¡
conv2d_transpose/BiasAddBiasAdd!conv2d_transpose/conv2d_transpose'conv2d_transpose/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:@@À
x
leaky_re_lu_12/LeakyRelu	LeakyReluconv2d_transpose/BiasAdd*'
_output_shapes
:@@À*
alpha%>
¯
1conv2d_12/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_12/kernel*
_output_shapes
:*
dtype0*%
valueB"      À   `   

/conv2d_12/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_12/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í¾

/conv2d_12/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_12/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í>
á
9conv2d_12/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_12/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_12/kernel*'
_output_shapes
:À`*
dtype0
Þ
/conv2d_12/kernel/Initializer/random_uniform/subSub/conv2d_12/kernel/Initializer/random_uniform/max/conv2d_12/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_12/kernel*
_output_shapes
: 
ù
/conv2d_12/kernel/Initializer/random_uniform/mulMul9conv2d_12/kernel/Initializer/random_uniform/RandomUniform/conv2d_12/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_12/kernel*'
_output_shapes
:À`
í
+conv2d_12/kernel/Initializer/random_uniformAddV2/conv2d_12/kernel/Initializer/random_uniform/mul/conv2d_12/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_12/kernel*'
_output_shapes
:À`
ª
conv2d_12/kernelVarHandleOp*#
_class
loc:@conv2d_12/kernel*
_output_shapes
: *
dtype0*
shape:À`*!
shared_nameconv2d_12/kernel
q
1conv2d_12/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_12/kernel*
_output_shapes
: 
w
conv2d_12/kernel/AssignAssignVariableOpconv2d_12/kernel+conv2d_12/kernel/Initializer/random_uniform*
dtype0
~
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*'
_output_shapes
:À`*
dtype0

 conv2d_12/bias/Initializer/zerosConst*!
_class
loc:@conv2d_12/bias*
_output_shapes
:`*
dtype0*
valueB`*    

conv2d_12/biasVarHandleOp*!
_class
loc:@conv2d_12/bias*
_output_shapes
: *
dtype0*
shape:`*
shared_nameconv2d_12/bias
m
/conv2d_12/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_12/bias*
_output_shapes
: 
h
conv2d_12/bias/AssignAssignVariableOpconv2d_12/bias conv2d_12/bias/Initializer/zeros*
dtype0
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
:`*
dtype0
y
conv2d_12/Conv2D/ReadVariableOpReadVariableOpconv2d_12/kernel*'
_output_shapes
:À`*
dtype0
®
conv2d_12/Conv2DConv2Dleaky_re_lu_12/LeakyReluconv2d_12/Conv2D/ReadVariableOp*
T0*&
_output_shapes
:@@`*
paddingSAME*
strides

k
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
:`*
dtype0

conv2d_12/BiasAddBiasAddconv2d_12/Conv2D conv2d_12/BiasAdd/ReadVariableOp*
T0*&
_output_shapes
:@@`
p
leaky_re_lu_13/LeakyRelu	LeakyReluconv2d_12/BiasAdd*&
_output_shapes
:@@`*
alpha%>
©
,batch_normalization_6/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes
:`*
dtype0*
valueB`*  ?
¾
batch_normalization_6/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes
: *
dtype0*
shape:`*,
shared_namebatch_normalization_6/gamma

<batch_normalization_6/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_6/gamma*
_output_shapes
: 

"batch_normalization_6/gamma/AssignAssignVariableOpbatch_normalization_6/gamma,batch_normalization_6/gamma/Initializer/ones*
dtype0

/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes
:`*
dtype0
¨
,batch_normalization_6/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes
:`*
dtype0*
valueB`*    
»
batch_normalization_6/betaVarHandleOp*-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes
: *
dtype0*
shape:`*+
shared_namebatch_normalization_6/beta

;batch_normalization_6/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_6/beta*
_output_shapes
: 

!batch_normalization_6/beta/AssignAssignVariableOpbatch_normalization_6/beta,batch_normalization_6/beta/Initializer/zeros*
dtype0

.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes
:`*
dtype0
¶
3batch_normalization_6/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes
:`*
dtype0*
valueB`*    
Ð
!batch_normalization_6/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes
: *
dtype0*
shape:`*2
shared_name#!batch_normalization_6/moving_mean

Bbatch_normalization_6/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_6/moving_mean*
_output_shapes
: 
¡
(batch_normalization_6/moving_mean/AssignAssignVariableOp!batch_normalization_6/moving_mean3batch_normalization_6/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes
:`*
dtype0
½
6batch_normalization_6/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes
:`*
dtype0*
valueB`*  ?
Ü
%batch_normalization_6/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes
: *
dtype0*
shape:`*6
shared_name'%batch_normalization_6/moving_variance

Fbatch_normalization_6/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_6/moving_variance*
_output_shapes
: 
¬
,batch_normalization_6/moving_variance/AssignAssignVariableOp%batch_normalization_6/moving_variance6batch_normalization_6/moving_variance/Initializer/ones*
dtype0

9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes
:`*
dtype0
Ç
batch_normalization_6/condIfkeras_learning_phasebatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceleaky_re_lu_13/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*@
_output_shapes.
,:@@`:`:`: : : : : : : *&
_read_only_resource_inputs
*7
else_branch(R&
$batch_normalization_6_cond_false_930*?
output_shapes.
,:@@`:`:`: : : : : : : *6
then_branch'R%
#batch_normalization_6_cond_true_929
|
#batch_normalization_6/cond/IdentityIdentitybatch_normalization_6/cond*
T0*&
_output_shapes
:@@`
t
%batch_normalization_6/cond/Identity_1Identitybatch_normalization_6/cond:1*
T0*
_output_shapes
:`
t
%batch_normalization_6/cond/Identity_2Identitybatch_normalization_6/cond:2*
T0*
_output_shapes
:`
p
%batch_normalization_6/cond/Identity_3Identitybatch_normalization_6/cond:3*
T0*
_output_shapes
: 
p
%batch_normalization_6/cond/Identity_4Identitybatch_normalization_6/cond:4*
T0*
_output_shapes
: 
p
%batch_normalization_6/cond/Identity_5Identitybatch_normalization_6/cond:5*
T0*
_output_shapes
: 
p
%batch_normalization_6/cond/Identity_6Identitybatch_normalization_6/cond:6*
T0*
_output_shapes
: 
p
%batch_normalization_6/cond/Identity_7Identitybatch_normalization_6/cond:7*
T0*
_output_shapes
: 
p
%batch_normalization_6/cond/Identity_8Identitybatch_normalization_6/cond:8*
T0*
_output_shapes
: 
p
%batch_normalization_6/cond/Identity_9Identitybatch_normalization_6/cond:9*
T0*
_output_shapes
: 
Ï
batch_normalization_6/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *9
else_branch*R(
&batch_normalization_6_cond_1_false_998*
output_shapes
: *8
then_branch)R'
%batch_normalization_6_cond_1_true_997
p
%batch_normalization_6/cond_1/IdentityIdentitybatch_normalization_6/cond_1*
T0*
_output_shapes
: 
¦
+batch_normalization_6/AssignMovingAvg/sub/xConst*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
Û
)batch_normalization_6/AssignMovingAvg/subSub+batch_normalization_6/AssignMovingAvg/sub/x%batch_normalization_6/cond_1/Identity*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes
: 

4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes
:`*
dtype0
ê
+batch_normalization_6/AssignMovingAvg/sub_1Sub4batch_normalization_6/AssignMovingAvg/ReadVariableOp%batch_normalization_6/cond/Identity_1*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes
:`
ã
)batch_normalization_6/AssignMovingAvg/mulMul+batch_normalization_6/AssignMovingAvg/sub_1)batch_normalization_6/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes
:`
á
9batch_normalization_6/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_6/moving_mean)batch_normalization_6/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_6/moving_mean*
dtype0

6batch_normalization_6/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_6/moving_mean:^batch_normalization_6/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes
:`*
dtype0
¬
-batch_normalization_6/AssignMovingAvg_1/sub/xConst*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ã
+batch_normalization_6/AssignMovingAvg_1/subSub-batch_normalization_6/AssignMovingAvg_1/sub/x%batch_normalization_6/cond_1/Identity*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes
: 

6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes
:`*
dtype0
ò
-batch_normalization_6/AssignMovingAvg_1/sub_1Sub6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp%batch_normalization_6/cond/Identity_2*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes
:`
í
+batch_normalization_6/AssignMovingAvg_1/mulMul-batch_normalization_6/AssignMovingAvg_1/sub_1+batch_normalization_6/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes
:`
í
;batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_6/moving_variance+batch_normalization_6/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0

8batch_normalization_6/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_6/moving_variance<^batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes
:`*
dtype0
Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
¼
concatenate/concatConcatV2#batch_normalization_4/cond/Identity#batch_normalization_6/cond/Identityconcatenate/concat/axis*
N*
T0*'
_output_shapes
:@@
¯
1conv2d_13/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_13/kernel*
_output_shapes
:*
dtype0*%
valueB"         À   

/conv2d_13/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_13/kernel*
_output_shapes
: *
dtype0*
valueB
 *Js6½

/conv2d_13/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_13/kernel*
_output_shapes
: *
dtype0*
valueB
 *Js6=
â
9conv2d_13/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_13/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_13/kernel*(
_output_shapes
:À*
dtype0
Þ
/conv2d_13/kernel/Initializer/random_uniform/subSub/conv2d_13/kernel/Initializer/random_uniform/max/conv2d_13/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_13/kernel*
_output_shapes
: 
ú
/conv2d_13/kernel/Initializer/random_uniform/mulMul9conv2d_13/kernel/Initializer/random_uniform/RandomUniform/conv2d_13/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_13/kernel*(
_output_shapes
:À
î
+conv2d_13/kernel/Initializer/random_uniformAddV2/conv2d_13/kernel/Initializer/random_uniform/mul/conv2d_13/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_13/kernel*(
_output_shapes
:À
«
conv2d_13/kernelVarHandleOp*#
_class
loc:@conv2d_13/kernel*
_output_shapes
: *
dtype0*
shape:À*!
shared_nameconv2d_13/kernel
q
1conv2d_13/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_13/kernel*
_output_shapes
: 
w
conv2d_13/kernel/AssignAssignVariableOpconv2d_13/kernel+conv2d_13/kernel/Initializer/random_uniform*
dtype0

$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*(
_output_shapes
:À*
dtype0

 conv2d_13/bias/Initializer/zerosConst*!
_class
loc:@conv2d_13/bias*
_output_shapes	
:À*
dtype0*
valueBÀ*    

conv2d_13/biasVarHandleOp*!
_class
loc:@conv2d_13/bias*
_output_shapes
: *
dtype0*
shape:À*
shared_nameconv2d_13/bias
m
/conv2d_13/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_13/bias*
_output_shapes
: 
h
conv2d_13/bias/AssignAssignVariableOpconv2d_13/bias conv2d_13/bias/Initializer/zeros*
dtype0
n
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes	
:À*
dtype0
z
conv2d_13/Conv2D/ReadVariableOpReadVariableOpconv2d_13/kernel*(
_output_shapes
:À*
dtype0
©
conv2d_13/Conv2DConv2Dconcatenate/concatconv2d_13/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:@@À*
paddingSAME*
strides

l
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes	
:À*
dtype0

conv2d_13/BiasAddBiasAddconv2d_13/Conv2D conv2d_13/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:@@À
q
leaky_re_lu_14/LeakyRelu	LeakyReluconv2d_13/BiasAdd*'
_output_shapes
:@@À*
alpha%>
¯
1conv2d_14/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_14/kernel*
_output_shapes
:*
dtype0*%
valueB"      À   `   

/conv2d_14/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_14/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í¾

/conv2d_14/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_14/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í>
á
9conv2d_14/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_14/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_14/kernel*'
_output_shapes
:À`*
dtype0
Þ
/conv2d_14/kernel/Initializer/random_uniform/subSub/conv2d_14/kernel/Initializer/random_uniform/max/conv2d_14/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_14/kernel*
_output_shapes
: 
ù
/conv2d_14/kernel/Initializer/random_uniform/mulMul9conv2d_14/kernel/Initializer/random_uniform/RandomUniform/conv2d_14/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_14/kernel*'
_output_shapes
:À`
í
+conv2d_14/kernel/Initializer/random_uniformAddV2/conv2d_14/kernel/Initializer/random_uniform/mul/conv2d_14/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_14/kernel*'
_output_shapes
:À`
ª
conv2d_14/kernelVarHandleOp*#
_class
loc:@conv2d_14/kernel*
_output_shapes
: *
dtype0*
shape:À`*!
shared_nameconv2d_14/kernel
q
1conv2d_14/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_14/kernel*
_output_shapes
: 
w
conv2d_14/kernel/AssignAssignVariableOpconv2d_14/kernel+conv2d_14/kernel/Initializer/random_uniform*
dtype0
~
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*'
_output_shapes
:À`*
dtype0

 conv2d_14/bias/Initializer/zerosConst*!
_class
loc:@conv2d_14/bias*
_output_shapes
:`*
dtype0*
valueB`*    

conv2d_14/biasVarHandleOp*!
_class
loc:@conv2d_14/bias*
_output_shapes
: *
dtype0*
shape:`*
shared_nameconv2d_14/bias
m
/conv2d_14/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_14/bias*
_output_shapes
: 
h
conv2d_14/bias/AssignAssignVariableOpconv2d_14/bias conv2d_14/bias/Initializer/zeros*
dtype0
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:`*
dtype0
y
conv2d_14/Conv2D/ReadVariableOpReadVariableOpconv2d_14/kernel*'
_output_shapes
:À`*
dtype0
®
conv2d_14/Conv2DConv2Dleaky_re_lu_14/LeakyReluconv2d_14/Conv2D/ReadVariableOp*
T0*&
_output_shapes
:@@`*
paddingSAME*
strides

k
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:`*
dtype0

conv2d_14/BiasAddBiasAddconv2d_14/Conv2D conv2d_14/BiasAdd/ReadVariableOp*
T0*&
_output_shapes
:@@`
p
leaky_re_lu_15/LeakyRelu	LeakyReluconv2d_14/BiasAdd*&
_output_shapes
:@@`*
alpha%>
©
,batch_normalization_7/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_7/gamma*
_output_shapes
:`*
dtype0*
valueB`*  ?
¾
batch_normalization_7/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_7/gamma*
_output_shapes
: *
dtype0*
shape:`*,
shared_namebatch_normalization_7/gamma

<batch_normalization_7/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_7/gamma*
_output_shapes
: 

"batch_normalization_7/gamma/AssignAssignVariableOpbatch_normalization_7/gamma,batch_normalization_7/gamma/Initializer/ones*
dtype0

/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes
:`*
dtype0
¨
,batch_normalization_7/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes
:`*
dtype0*
valueB`*    
»
batch_normalization_7/betaVarHandleOp*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes
: *
dtype0*
shape:`*+
shared_namebatch_normalization_7/beta

;batch_normalization_7/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_7/beta*
_output_shapes
: 

!batch_normalization_7/beta/AssignAssignVariableOpbatch_normalization_7/beta,batch_normalization_7/beta/Initializer/zeros*
dtype0

.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes
:`*
dtype0
¶
3batch_normalization_7/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes
:`*
dtype0*
valueB`*    
Ð
!batch_normalization_7/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes
: *
dtype0*
shape:`*2
shared_name#!batch_normalization_7/moving_mean

Bbatch_normalization_7/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_7/moving_mean*
_output_shapes
: 
¡
(batch_normalization_7/moving_mean/AssignAssignVariableOp!batch_normalization_7/moving_mean3batch_normalization_7/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
:`*
dtype0
½
6batch_normalization_7/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes
:`*
dtype0*
valueB`*  ?
Ü
%batch_normalization_7/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes
: *
dtype0*
shape:`*6
shared_name'%batch_normalization_7/moving_variance

Fbatch_normalization_7/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_7/moving_variance*
_output_shapes
: 
¬
,batch_normalization_7/moving_variance/AssignAssignVariableOp%batch_normalization_7/moving_variance6batch_normalization_7/moving_variance/Initializer/ones*
dtype0

9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes
:`*
dtype0
É
batch_normalization_7/condIfkeras_learning_phasebatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceleaky_re_lu_15/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*@
_output_shapes.
,:@@`:`:`: : : : : : : *&
_read_only_resource_inputs
*8
else_branch)R'
%batch_normalization_7_cond_false_1074*?
output_shapes.
,:@@`:`:`: : : : : : : *7
then_branch(R&
$batch_normalization_7_cond_true_1073
|
#batch_normalization_7/cond/IdentityIdentitybatch_normalization_7/cond*
T0*&
_output_shapes
:@@`
t
%batch_normalization_7/cond/Identity_1Identitybatch_normalization_7/cond:1*
T0*
_output_shapes
:`
t
%batch_normalization_7/cond/Identity_2Identitybatch_normalization_7/cond:2*
T0*
_output_shapes
:`
p
%batch_normalization_7/cond/Identity_3Identitybatch_normalization_7/cond:3*
T0*
_output_shapes
: 
p
%batch_normalization_7/cond/Identity_4Identitybatch_normalization_7/cond:4*
T0*
_output_shapes
: 
p
%batch_normalization_7/cond/Identity_5Identitybatch_normalization_7/cond:5*
T0*
_output_shapes
: 
p
%batch_normalization_7/cond/Identity_6Identitybatch_normalization_7/cond:6*
T0*
_output_shapes
: 
p
%batch_normalization_7/cond/Identity_7Identitybatch_normalization_7/cond:7*
T0*
_output_shapes
: 
p
%batch_normalization_7/cond/Identity_8Identitybatch_normalization_7/cond:8*
T0*
_output_shapes
: 
p
%batch_normalization_7/cond/Identity_9Identitybatch_normalization_7/cond:9*
T0*
_output_shapes
: 
Ñ
batch_normalization_7/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *:
else_branch+R)
'batch_normalization_7_cond_1_false_1142*
output_shapes
: *9
then_branch*R(
&batch_normalization_7_cond_1_true_1141
p
%batch_normalization_7/cond_1/IdentityIdentitybatch_normalization_7/cond_1*
T0*
_output_shapes
: 
¦
+batch_normalization_7/AssignMovingAvg/sub/xConst*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
Û
)batch_normalization_7/AssignMovingAvg/subSub+batch_normalization_7/AssignMovingAvg/sub/x%batch_normalization_7/cond_1/Identity*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes
: 

4batch_normalization_7/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
:`*
dtype0
ê
+batch_normalization_7/AssignMovingAvg/sub_1Sub4batch_normalization_7/AssignMovingAvg/ReadVariableOp%batch_normalization_7/cond/Identity_1*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes
:`
ã
)batch_normalization_7/AssignMovingAvg/mulMul+batch_normalization_7/AssignMovingAvg/sub_1)batch_normalization_7/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes
:`
á
9batch_normalization_7/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_7/moving_mean)batch_normalization_7/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_7/moving_mean*
dtype0

6batch_normalization_7/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_7/moving_mean:^batch_normalization_7/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes
:`*
dtype0
¬
-batch_normalization_7/AssignMovingAvg_1/sub/xConst*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ã
+batch_normalization_7/AssignMovingAvg_1/subSub-batch_normalization_7/AssignMovingAvg_1/sub/x%batch_normalization_7/cond_1/Identity*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes
: 

6batch_normalization_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes
:`*
dtype0
ò
-batch_normalization_7/AssignMovingAvg_1/sub_1Sub6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp%batch_normalization_7/cond/Identity_2*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes
:`
í
+batch_normalization_7/AssignMovingAvg_1/mulMul-batch_normalization_7/AssignMovingAvg_1/sub_1+batch_normalization_7/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes
:`
í
;batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_7/moving_variance+batch_normalization_7/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_7/moving_variance*
dtype0

8batch_normalization_7/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_7/moving_variance<^batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes
:`*
dtype0
Á
:conv2d_transpose_1/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@conv2d_transpose_1/kernel*
_output_shapes
:*
dtype0*%
valueB"      `   `   
«
8conv2d_transpose_1/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@conv2d_transpose_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *ï[q½
«
8conv2d_transpose_1/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@conv2d_transpose_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *ï[q=
û
Bconv2d_transpose_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv2d_transpose_1/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@conv2d_transpose_1/kernel*&
_output_shapes
:``*
dtype0

8conv2d_transpose_1/kernel/Initializer/random_uniform/subSub8conv2d_transpose_1/kernel/Initializer/random_uniform/max8conv2d_transpose_1/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_1/kernel*
_output_shapes
: 

8conv2d_transpose_1/kernel/Initializer/random_uniform/mulMulBconv2d_transpose_1/kernel/Initializer/random_uniform/RandomUniform8conv2d_transpose_1/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@conv2d_transpose_1/kernel*&
_output_shapes
:``

4conv2d_transpose_1/kernel/Initializer/random_uniformAddV28conv2d_transpose_1/kernel/Initializer/random_uniform/mul8conv2d_transpose_1/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_1/kernel*&
_output_shapes
:``
Ä
conv2d_transpose_1/kernelVarHandleOp*,
_class"
 loc:@conv2d_transpose_1/kernel*
_output_shapes
: *
dtype0*
shape:``**
shared_nameconv2d_transpose_1/kernel

:conv2d_transpose_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_1/kernel*
_output_shapes
: 

 conv2d_transpose_1/kernel/AssignAssignVariableOpconv2d_transpose_1/kernel4conv2d_transpose_1/kernel/Initializer/random_uniform*
dtype0

-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*&
_output_shapes
:``*
dtype0
¢
)conv2d_transpose_1/bias/Initializer/zerosConst**
_class 
loc:@conv2d_transpose_1/bias*
_output_shapes
:`*
dtype0*
valueB`*    
²
conv2d_transpose_1/biasVarHandleOp**
_class 
loc:@conv2d_transpose_1/bias*
_output_shapes
: *
dtype0*
shape:`*(
shared_nameconv2d_transpose_1/bias

8conv2d_transpose_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_1/bias*
_output_shapes
: 

conv2d_transpose_1/bias/AssignAssignVariableOpconv2d_transpose_1/bias)conv2d_transpose_1/bias/Initializer/zeros*
dtype0

+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes
:`*
dtype0
q
conv2d_transpose_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   @   @   `   
p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

 conv2d_transpose_1/strided_sliceStridedSliceconv2d_transpose_1/Shape&conv2d_transpose_1/strided_slice/stack(conv2d_transpose_1/strided_slice/stack_1(conv2d_transpose_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
]
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :
]
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :
\
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :`
Ä
conv2d_transpose_1/stackPack conv2d_transpose_1/strided_sliceconv2d_transpose_1/stack/1conv2d_transpose_1/stack/2conv2d_transpose_1/stack/3*
N*
T0*
_output_shapes
:
r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

"conv2d_transpose_1/strided_slice_1StridedSliceconv2d_transpose_1/stack(conv2d_transpose_1/strided_slice_1/stack*conv2d_transpose_1/strided_slice_1/stack_1*conv2d_transpose_1/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*&
_output_shapes
:``*
dtype0

#conv2d_transpose_1/conv2d_transposeConv2DBackpropInputconv2d_transpose_1/stack2conv2d_transpose_1/conv2d_transpose/ReadVariableOp#batch_normalization_7/cond/Identity*
T0*(
_output_shapes
:`*
paddingSAME*
strides

}
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes
:`*
dtype0
¨
conv2d_transpose_1/BiasAddBiasAdd#conv2d_transpose_1/conv2d_transpose)conv2d_transpose_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:`
{
leaky_re_lu_16/LeakyRelu	LeakyReluconv2d_transpose_1/BiasAdd*(
_output_shapes
:`*
alpha%>
¯
1conv2d_15/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_15/kernel*
_output_shapes
:*
dtype0*%
valueB"      `   0   

/conv2d_15/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_15/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìQ¾

/conv2d_15/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_15/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìQ>
à
9conv2d_15/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_15/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_15/kernel*&
_output_shapes
:`0*
dtype0
Þ
/conv2d_15/kernel/Initializer/random_uniform/subSub/conv2d_15/kernel/Initializer/random_uniform/max/conv2d_15/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_15/kernel*
_output_shapes
: 
ø
/conv2d_15/kernel/Initializer/random_uniform/mulMul9conv2d_15/kernel/Initializer/random_uniform/RandomUniform/conv2d_15/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_15/kernel*&
_output_shapes
:`0
ì
+conv2d_15/kernel/Initializer/random_uniformAddV2/conv2d_15/kernel/Initializer/random_uniform/mul/conv2d_15/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_15/kernel*&
_output_shapes
:`0
©
conv2d_15/kernelVarHandleOp*#
_class
loc:@conv2d_15/kernel*
_output_shapes
: *
dtype0*
shape:`0*!
shared_nameconv2d_15/kernel
q
1conv2d_15/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_15/kernel*
_output_shapes
: 
w
conv2d_15/kernel/AssignAssignVariableOpconv2d_15/kernel+conv2d_15/kernel/Initializer/random_uniform*
dtype0
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
:`0*
dtype0

 conv2d_15/bias/Initializer/zerosConst*!
_class
loc:@conv2d_15/bias*
_output_shapes
:0*
dtype0*
valueB0*    

conv2d_15/biasVarHandleOp*!
_class
loc:@conv2d_15/bias*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv2d_15/bias
m
/conv2d_15/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_15/bias*
_output_shapes
: 
h
conv2d_15/bias/AssignAssignVariableOpconv2d_15/bias conv2d_15/bias/Initializer/zeros*
dtype0
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
:0*
dtype0
x
conv2d_15/Conv2D/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
:`0*
dtype0
°
conv2d_15/Conv2DConv2Dleaky_re_lu_16/LeakyReluconv2d_15/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:0*
paddingSAME*
strides

k
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
:0*
dtype0

conv2d_15/BiasAddBiasAddconv2d_15/Conv2D conv2d_15/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:0
r
leaky_re_lu_17/LeakyRelu	LeakyReluconv2d_15/BiasAdd*(
_output_shapes
:0*
alpha%>
©
,batch_normalization_8/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes
:0*
dtype0*
valueB0*  ?
¾
batch_normalization_8/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes
: *
dtype0*
shape:0*,
shared_namebatch_normalization_8/gamma

<batch_normalization_8/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_8/gamma*
_output_shapes
: 

"batch_normalization_8/gamma/AssignAssignVariableOpbatch_normalization_8/gamma,batch_normalization_8/gamma/Initializer/ones*
dtype0

/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes
:0*
dtype0
¨
,batch_normalization_8/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes
:0*
dtype0*
valueB0*    
»
batch_normalization_8/betaVarHandleOp*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes
: *
dtype0*
shape:0*+
shared_namebatch_normalization_8/beta

;batch_normalization_8/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_8/beta*
_output_shapes
: 

!batch_normalization_8/beta/AssignAssignVariableOpbatch_normalization_8/beta,batch_normalization_8/beta/Initializer/zeros*
dtype0

.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes
:0*
dtype0
¶
3batch_normalization_8/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes
:0*
dtype0*
valueB0*    
Ð
!batch_normalization_8/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes
: *
dtype0*
shape:0*2
shared_name#!batch_normalization_8/moving_mean

Bbatch_normalization_8/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_8/moving_mean*
_output_shapes
: 
¡
(batch_normalization_8/moving_mean/AssignAssignVariableOp!batch_normalization_8/moving_mean3batch_normalization_8/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
:0*
dtype0
½
6batch_normalization_8/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes
:0*
dtype0*
valueB0*  ?
Ü
%batch_normalization_8/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes
: *
dtype0*
shape:0*6
shared_name'%batch_normalization_8/moving_variance

Fbatch_normalization_8/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_8/moving_variance*
_output_shapes
: 
¬
,batch_normalization_8/moving_variance/AssignAssignVariableOp%batch_normalization_8/moving_variance6batch_normalization_8/moving_variance/Initializer/ones*
dtype0

9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
:0*
dtype0
Í
batch_normalization_8/condIfkeras_learning_phasebatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceleaky_re_lu_17/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*B
_output_shapes0
.:0:0:0: : : : : : : *&
_read_only_resource_inputs
*8
else_branch)R'
%batch_normalization_8_cond_false_1229*A
output_shapes0
.:0:0:0: : : : : : : *7
then_branch(R&
$batch_normalization_8_cond_true_1228
~
#batch_normalization_8/cond/IdentityIdentitybatch_normalization_8/cond*
T0*(
_output_shapes
:0
t
%batch_normalization_8/cond/Identity_1Identitybatch_normalization_8/cond:1*
T0*
_output_shapes
:0
t
%batch_normalization_8/cond/Identity_2Identitybatch_normalization_8/cond:2*
T0*
_output_shapes
:0
p
%batch_normalization_8/cond/Identity_3Identitybatch_normalization_8/cond:3*
T0*
_output_shapes
: 
p
%batch_normalization_8/cond/Identity_4Identitybatch_normalization_8/cond:4*
T0*
_output_shapes
: 
p
%batch_normalization_8/cond/Identity_5Identitybatch_normalization_8/cond:5*
T0*
_output_shapes
: 
p
%batch_normalization_8/cond/Identity_6Identitybatch_normalization_8/cond:6*
T0*
_output_shapes
: 
p
%batch_normalization_8/cond/Identity_7Identitybatch_normalization_8/cond:7*
T0*
_output_shapes
: 
p
%batch_normalization_8/cond/Identity_8Identitybatch_normalization_8/cond:8*
T0*
_output_shapes
: 
p
%batch_normalization_8/cond/Identity_9Identitybatch_normalization_8/cond:9*
T0*
_output_shapes
: 
Ñ
batch_normalization_8/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *:
else_branch+R)
'batch_normalization_8_cond_1_false_1297*
output_shapes
: *9
then_branch*R(
&batch_normalization_8_cond_1_true_1296
p
%batch_normalization_8/cond_1/IdentityIdentitybatch_normalization_8/cond_1*
T0*
_output_shapes
: 
¦
+batch_normalization_8/AssignMovingAvg/sub/xConst*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
Û
)batch_normalization_8/AssignMovingAvg/subSub+batch_normalization_8/AssignMovingAvg/sub/x%batch_normalization_8/cond_1/Identity*
T0*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes
: 

4batch_normalization_8/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
:0*
dtype0
ê
+batch_normalization_8/AssignMovingAvg/sub_1Sub4batch_normalization_8/AssignMovingAvg/ReadVariableOp%batch_normalization_8/cond/Identity_1*
T0*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes
:0
ã
)batch_normalization_8/AssignMovingAvg/mulMul+batch_normalization_8/AssignMovingAvg/sub_1)batch_normalization_8/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes
:0
á
9batch_normalization_8/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_8/moving_mean)batch_normalization_8/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_8/moving_mean*
dtype0

6batch_normalization_8/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_8/moving_mean:^batch_normalization_8/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes
:0*
dtype0
¬
-batch_normalization_8/AssignMovingAvg_1/sub/xConst*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ã
+batch_normalization_8/AssignMovingAvg_1/subSub-batch_normalization_8/AssignMovingAvg_1/sub/x%batch_normalization_8/cond_1/Identity*
T0*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes
: 

6batch_normalization_8/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
:0*
dtype0
ò
-batch_normalization_8/AssignMovingAvg_1/sub_1Sub6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp%batch_normalization_8/cond/Identity_2*
T0*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes
:0
í
+batch_normalization_8/AssignMovingAvg_1/mulMul-batch_normalization_8/AssignMovingAvg_1/sub_1+batch_normalization_8/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes
:0
í
;batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_8/moving_variance+batch_normalization_8/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_8/moving_variance*
dtype0

8batch_normalization_8/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_8/moving_variance<^batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes
:0*
dtype0
[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
Á
concatenate_1/concatConcatV2#batch_normalization_3/cond/Identity#batch_normalization_8/cond/Identityconcatenate_1/concat/axis*
N*
T0*(
_output_shapes
:H
¯
1conv2d_16/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_16/kernel*
_output_shapes
:*
dtype0*%
valueB"      H   `   

/conv2d_16/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_16/kernel*
_output_shapes
: *
dtype0*
valueB
 *
½

/conv2d_16/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_16/kernel*
_output_shapes
: *
dtype0*
valueB
 *
=
à
9conv2d_16/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_16/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_16/kernel*&
_output_shapes
:H`*
dtype0
Þ
/conv2d_16/kernel/Initializer/random_uniform/subSub/conv2d_16/kernel/Initializer/random_uniform/max/conv2d_16/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_16/kernel*
_output_shapes
: 
ø
/conv2d_16/kernel/Initializer/random_uniform/mulMul9conv2d_16/kernel/Initializer/random_uniform/RandomUniform/conv2d_16/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_16/kernel*&
_output_shapes
:H`
ì
+conv2d_16/kernel/Initializer/random_uniformAddV2/conv2d_16/kernel/Initializer/random_uniform/mul/conv2d_16/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_16/kernel*&
_output_shapes
:H`
©
conv2d_16/kernelVarHandleOp*#
_class
loc:@conv2d_16/kernel*
_output_shapes
: *
dtype0*
shape:H`*!
shared_nameconv2d_16/kernel
q
1conv2d_16/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_16/kernel*
_output_shapes
: 
w
conv2d_16/kernel/AssignAssignVariableOpconv2d_16/kernel+conv2d_16/kernel/Initializer/random_uniform*
dtype0
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
:H`*
dtype0

 conv2d_16/bias/Initializer/zerosConst*!
_class
loc:@conv2d_16/bias*
_output_shapes
:`*
dtype0*
valueB`*    

conv2d_16/biasVarHandleOp*!
_class
loc:@conv2d_16/bias*
_output_shapes
: *
dtype0*
shape:`*
shared_nameconv2d_16/bias
m
/conv2d_16/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_16/bias*
_output_shapes
: 
h
conv2d_16/bias/AssignAssignVariableOpconv2d_16/bias conv2d_16/bias/Initializer/zeros*
dtype0
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:`*
dtype0
x
conv2d_16/Conv2D/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
:H`*
dtype0
¬
conv2d_16/Conv2DConv2Dconcatenate_1/concatconv2d_16/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:`*
paddingSAME*
strides

k
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:`*
dtype0

conv2d_16/BiasAddBiasAddconv2d_16/Conv2D conv2d_16/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:`
r
leaky_re_lu_18/LeakyRelu	LeakyReluconv2d_16/BiasAdd*(
_output_shapes
:`*
alpha%>
¯
1conv2d_17/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_17/kernel*
_output_shapes
:*
dtype0*%
valueB"      `   0   

/conv2d_17/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_17/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìQ¾

/conv2d_17/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_17/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìQ>
à
9conv2d_17/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_17/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_17/kernel*&
_output_shapes
:`0*
dtype0
Þ
/conv2d_17/kernel/Initializer/random_uniform/subSub/conv2d_17/kernel/Initializer/random_uniform/max/conv2d_17/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_17/kernel*
_output_shapes
: 
ø
/conv2d_17/kernel/Initializer/random_uniform/mulMul9conv2d_17/kernel/Initializer/random_uniform/RandomUniform/conv2d_17/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_17/kernel*&
_output_shapes
:`0
ì
+conv2d_17/kernel/Initializer/random_uniformAddV2/conv2d_17/kernel/Initializer/random_uniform/mul/conv2d_17/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_17/kernel*&
_output_shapes
:`0
©
conv2d_17/kernelVarHandleOp*#
_class
loc:@conv2d_17/kernel*
_output_shapes
: *
dtype0*
shape:`0*!
shared_nameconv2d_17/kernel
q
1conv2d_17/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_17/kernel*
_output_shapes
: 
w
conv2d_17/kernel/AssignAssignVariableOpconv2d_17/kernel+conv2d_17/kernel/Initializer/random_uniform*
dtype0
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
:`0*
dtype0

 conv2d_17/bias/Initializer/zerosConst*!
_class
loc:@conv2d_17/bias*
_output_shapes
:0*
dtype0*
valueB0*    

conv2d_17/biasVarHandleOp*!
_class
loc:@conv2d_17/bias*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv2d_17/bias
m
/conv2d_17/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_17/bias*
_output_shapes
: 
h
conv2d_17/bias/AssignAssignVariableOpconv2d_17/bias conv2d_17/bias/Initializer/zeros*
dtype0
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:0*
dtype0
x
conv2d_17/Conv2D/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
:`0*
dtype0
°
conv2d_17/Conv2DConv2Dleaky_re_lu_18/LeakyReluconv2d_17/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:0*
paddingSAME*
strides

k
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:0*
dtype0

conv2d_17/BiasAddBiasAddconv2d_17/Conv2D conv2d_17/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:0
r
leaky_re_lu_19/LeakyRelu	LeakyReluconv2d_17/BiasAdd*(
_output_shapes
:0*
alpha%>
©
,batch_normalization_9/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_9/gamma*
_output_shapes
:0*
dtype0*
valueB0*  ?
¾
batch_normalization_9/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_9/gamma*
_output_shapes
: *
dtype0*
shape:0*,
shared_namebatch_normalization_9/gamma

<batch_normalization_9/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_9/gamma*
_output_shapes
: 

"batch_normalization_9/gamma/AssignAssignVariableOpbatch_normalization_9/gamma,batch_normalization_9/gamma/Initializer/ones*
dtype0

/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes
:0*
dtype0
¨
,batch_normalization_9/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_9/beta*
_output_shapes
:0*
dtype0*
valueB0*    
»
batch_normalization_9/betaVarHandleOp*-
_class#
!loc:@batch_normalization_9/beta*
_output_shapes
: *
dtype0*
shape:0*+
shared_namebatch_normalization_9/beta

;batch_normalization_9/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_9/beta*
_output_shapes
: 

!batch_normalization_9/beta/AssignAssignVariableOpbatch_normalization_9/beta,batch_normalization_9/beta/Initializer/zeros*
dtype0

.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes
:0*
dtype0
¶
3batch_normalization_9/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_9/moving_mean*
_output_shapes
:0*
dtype0*
valueB0*    
Ð
!batch_normalization_9/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_9/moving_mean*
_output_shapes
: *
dtype0*
shape:0*2
shared_name#!batch_normalization_9/moving_mean

Bbatch_normalization_9/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_9/moving_mean*
_output_shapes
: 
¡
(batch_normalization_9/moving_mean/AssignAssignVariableOp!batch_normalization_9/moving_mean3batch_normalization_9/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes
:0*
dtype0
½
6batch_normalization_9/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_9/moving_variance*
_output_shapes
:0*
dtype0*
valueB0*  ?
Ü
%batch_normalization_9/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_9/moving_variance*
_output_shapes
: *
dtype0*
shape:0*6
shared_name'%batch_normalization_9/moving_variance

Fbatch_normalization_9/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_9/moving_variance*
_output_shapes
: 
¬
,batch_normalization_9/moving_variance/AssignAssignVariableOp%batch_normalization_9/moving_variance6batch_normalization_9/moving_variance/Initializer/ones*
dtype0

9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes
:0*
dtype0
Í
batch_normalization_9/condIfkeras_learning_phasebatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_varianceleaky_re_lu_19/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*B
_output_shapes0
.:0:0:0: : : : : : : *&
_read_only_resource_inputs
*8
else_branch)R'
%batch_normalization_9_cond_false_1373*A
output_shapes0
.:0:0:0: : : : : : : *7
then_branch(R&
$batch_normalization_9_cond_true_1372
~
#batch_normalization_9/cond/IdentityIdentitybatch_normalization_9/cond*
T0*(
_output_shapes
:0
t
%batch_normalization_9/cond/Identity_1Identitybatch_normalization_9/cond:1*
T0*
_output_shapes
:0
t
%batch_normalization_9/cond/Identity_2Identitybatch_normalization_9/cond:2*
T0*
_output_shapes
:0
p
%batch_normalization_9/cond/Identity_3Identitybatch_normalization_9/cond:3*
T0*
_output_shapes
: 
p
%batch_normalization_9/cond/Identity_4Identitybatch_normalization_9/cond:4*
T0*
_output_shapes
: 
p
%batch_normalization_9/cond/Identity_5Identitybatch_normalization_9/cond:5*
T0*
_output_shapes
: 
p
%batch_normalization_9/cond/Identity_6Identitybatch_normalization_9/cond:6*
T0*
_output_shapes
: 
p
%batch_normalization_9/cond/Identity_7Identitybatch_normalization_9/cond:7*
T0*
_output_shapes
: 
p
%batch_normalization_9/cond/Identity_8Identitybatch_normalization_9/cond:8*
T0*
_output_shapes
: 
p
%batch_normalization_9/cond/Identity_9Identitybatch_normalization_9/cond:9*
T0*
_output_shapes
: 
Ñ
batch_normalization_9/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *:
else_branch+R)
'batch_normalization_9_cond_1_false_1441*
output_shapes
: *9
then_branch*R(
&batch_normalization_9_cond_1_true_1440
p
%batch_normalization_9/cond_1/IdentityIdentitybatch_normalization_9/cond_1*
T0*
_output_shapes
: 
¦
+batch_normalization_9/AssignMovingAvg/sub/xConst*4
_class*
(&loc:@batch_normalization_9/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
Û
)batch_normalization_9/AssignMovingAvg/subSub+batch_normalization_9/AssignMovingAvg/sub/x%batch_normalization_9/cond_1/Identity*
T0*4
_class*
(&loc:@batch_normalization_9/moving_mean*
_output_shapes
: 

4batch_normalization_9/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes
:0*
dtype0
ê
+batch_normalization_9/AssignMovingAvg/sub_1Sub4batch_normalization_9/AssignMovingAvg/ReadVariableOp%batch_normalization_9/cond/Identity_1*
T0*4
_class*
(&loc:@batch_normalization_9/moving_mean*
_output_shapes
:0
ã
)batch_normalization_9/AssignMovingAvg/mulMul+batch_normalization_9/AssignMovingAvg/sub_1)batch_normalization_9/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_9/moving_mean*
_output_shapes
:0
á
9batch_normalization_9/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_9/moving_mean)batch_normalization_9/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_9/moving_mean*
dtype0

6batch_normalization_9/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_9/moving_mean:^batch_normalization_9/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_9/moving_mean*
_output_shapes
:0*
dtype0
¬
-batch_normalization_9/AssignMovingAvg_1/sub/xConst*8
_class.
,*loc:@batch_normalization_9/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ã
+batch_normalization_9/AssignMovingAvg_1/subSub-batch_normalization_9/AssignMovingAvg_1/sub/x%batch_normalization_9/cond_1/Identity*
T0*8
_class.
,*loc:@batch_normalization_9/moving_variance*
_output_shapes
: 

6batch_normalization_9/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes
:0*
dtype0
ò
-batch_normalization_9/AssignMovingAvg_1/sub_1Sub6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp%batch_normalization_9/cond/Identity_2*
T0*8
_class.
,*loc:@batch_normalization_9/moving_variance*
_output_shapes
:0
í
+batch_normalization_9/AssignMovingAvg_1/mulMul-batch_normalization_9/AssignMovingAvg_1/sub_1+batch_normalization_9/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_9/moving_variance*
_output_shapes
:0
í
;batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_9/moving_variance+batch_normalization_9/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_9/moving_variance*
dtype0

8batch_normalization_9/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_9/moving_variance<^batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_9/moving_variance*
_output_shapes
:0*
dtype0
Á
:conv2d_transpose_2/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@conv2d_transpose_2/kernel*
_output_shapes
:*
dtype0*%
valueB"      0   0   
«
8conv2d_transpose_2/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@conv2d_transpose_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *«ªª½
«
8conv2d_transpose_2/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@conv2d_transpose_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *«ªª=
û
Bconv2d_transpose_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv2d_transpose_2/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@conv2d_transpose_2/kernel*&
_output_shapes
:00*
dtype0

8conv2d_transpose_2/kernel/Initializer/random_uniform/subSub8conv2d_transpose_2/kernel/Initializer/random_uniform/max8conv2d_transpose_2/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_2/kernel*
_output_shapes
: 

8conv2d_transpose_2/kernel/Initializer/random_uniform/mulMulBconv2d_transpose_2/kernel/Initializer/random_uniform/RandomUniform8conv2d_transpose_2/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@conv2d_transpose_2/kernel*&
_output_shapes
:00

4conv2d_transpose_2/kernel/Initializer/random_uniformAddV28conv2d_transpose_2/kernel/Initializer/random_uniform/mul8conv2d_transpose_2/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_2/kernel*&
_output_shapes
:00
Ä
conv2d_transpose_2/kernelVarHandleOp*,
_class"
 loc:@conv2d_transpose_2/kernel*
_output_shapes
: *
dtype0*
shape:00**
shared_nameconv2d_transpose_2/kernel

:conv2d_transpose_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_2/kernel*
_output_shapes
: 

 conv2d_transpose_2/kernel/AssignAssignVariableOpconv2d_transpose_2/kernel4conv2d_transpose_2/kernel/Initializer/random_uniform*
dtype0

-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*&
_output_shapes
:00*
dtype0
¢
)conv2d_transpose_2/bias/Initializer/zerosConst**
_class 
loc:@conv2d_transpose_2/bias*
_output_shapes
:0*
dtype0*
valueB0*    
²
conv2d_transpose_2/biasVarHandleOp**
_class 
loc:@conv2d_transpose_2/bias*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameconv2d_transpose_2/bias

8conv2d_transpose_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_2/bias*
_output_shapes
: 

conv2d_transpose_2/bias/AssignAssignVariableOpconv2d_transpose_2/bias)conv2d_transpose_2/bias/Initializer/zeros*
dtype0

+conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
_output_shapes
:0*
dtype0
q
conv2d_transpose_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"         0   
p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

 conv2d_transpose_2/strided_sliceStridedSliceconv2d_transpose_2/Shape&conv2d_transpose_2/strided_slice/stack(conv2d_transpose_2/strided_slice/stack_1(conv2d_transpose_2/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
]
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value
B :
]
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :
\
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :0
Ä
conv2d_transpose_2/stackPack conv2d_transpose_2/strided_sliceconv2d_transpose_2/stack/1conv2d_transpose_2/stack/2conv2d_transpose_2/stack/3*
N*
T0*
_output_shapes
:
r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

"conv2d_transpose_2/strided_slice_1StridedSliceconv2d_transpose_2/stack(conv2d_transpose_2/strided_slice_1/stack*conv2d_transpose_2/strided_slice_1/stack_1*conv2d_transpose_2/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*&
_output_shapes
:00*
dtype0

#conv2d_transpose_2/conv2d_transposeConv2DBackpropInputconv2d_transpose_2/stack2conv2d_transpose_2/conv2d_transpose/ReadVariableOp#batch_normalization_9/cond/Identity*
T0*(
_output_shapes
:0*
paddingSAME*
strides

}
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
_output_shapes
:0*
dtype0
¨
conv2d_transpose_2/BiasAddBiasAdd#conv2d_transpose_2/conv2d_transpose)conv2d_transpose_2/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:0
{
leaky_re_lu_20/LeakyRelu	LeakyReluconv2d_transpose_2/BiasAdd*(
_output_shapes
:0*
alpha%>
¯
1conv2d_18/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_18/kernel*
_output_shapes
:*
dtype0*%
valueB"      0      

/conv2d_18/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_18/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í¾

/conv2d_18/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_18/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í>
à
9conv2d_18/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_18/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_18/kernel*&
_output_shapes
:0*
dtype0
Þ
/conv2d_18/kernel/Initializer/random_uniform/subSub/conv2d_18/kernel/Initializer/random_uniform/max/conv2d_18/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_18/kernel*
_output_shapes
: 
ø
/conv2d_18/kernel/Initializer/random_uniform/mulMul9conv2d_18/kernel/Initializer/random_uniform/RandomUniform/conv2d_18/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_18/kernel*&
_output_shapes
:0
ì
+conv2d_18/kernel/Initializer/random_uniformAddV2/conv2d_18/kernel/Initializer/random_uniform/mul/conv2d_18/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_18/kernel*&
_output_shapes
:0
©
conv2d_18/kernelVarHandleOp*#
_class
loc:@conv2d_18/kernel*
_output_shapes
: *
dtype0*
shape:0*!
shared_nameconv2d_18/kernel
q
1conv2d_18/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_18/kernel*
_output_shapes
: 
w
conv2d_18/kernel/AssignAssignVariableOpconv2d_18/kernel+conv2d_18/kernel/Initializer/random_uniform*
dtype0
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
:0*
dtype0

 conv2d_18/bias/Initializer/zerosConst*!
_class
loc:@conv2d_18/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_18/biasVarHandleOp*!
_class
loc:@conv2d_18/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_18/bias
m
/conv2d_18/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_18/bias*
_output_shapes
: 
h
conv2d_18/bias/AssignAssignVariableOpconv2d_18/bias conv2d_18/bias/Initializer/zeros*
dtype0
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
:*
dtype0
x
conv2d_18/Conv2D/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
:0*
dtype0
°
conv2d_18/Conv2DConv2Dleaky_re_lu_20/LeakyReluconv2d_18/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

k
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
:*
dtype0

conv2d_18/BiasAddBiasAddconv2d_18/Conv2D conv2d_18/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
r
leaky_re_lu_21/LeakyRelu	LeakyReluconv2d_18/BiasAdd*(
_output_shapes
:*
alpha%>
«
-batch_normalization_10/gamma/Initializer/onesConst*/
_class%
#!loc:@batch_normalization_10/gamma*
_output_shapes
:*
dtype0*
valueB*  ?
Á
batch_normalization_10/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_10/gamma*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_10/gamma

=batch_normalization_10/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_10/gamma*
_output_shapes
: 

#batch_normalization_10/gamma/AssignAssignVariableOpbatch_normalization_10/gamma-batch_normalization_10/gamma/Initializer/ones*
dtype0

0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes
:*
dtype0
ª
-batch_normalization_10/beta/Initializer/zerosConst*.
_class$
" loc:@batch_normalization_10/beta*
_output_shapes
:*
dtype0*
valueB*    
¾
batch_normalization_10/betaVarHandleOp*.
_class$
" loc:@batch_normalization_10/beta*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_10/beta

<batch_normalization_10/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_10/beta*
_output_shapes
: 

"batch_normalization_10/beta/AssignAssignVariableOpbatch_normalization_10/beta-batch_normalization_10/beta/Initializer/zeros*
dtype0

/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes
:*
dtype0
¸
4batch_normalization_10/moving_mean/Initializer/zerosConst*5
_class+
)'loc:@batch_normalization_10/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
Ó
"batch_normalization_10/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_10/moving_mean*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_10/moving_mean

Cbatch_normalization_10/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_10/moving_mean*
_output_shapes
: 
¤
)batch_normalization_10/moving_mean/AssignAssignVariableOp"batch_normalization_10/moving_mean4batch_normalization_10/moving_mean/Initializer/zeros*
dtype0

6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes
:*
dtype0
¿
7batch_normalization_10/moving_variance/Initializer/onesConst*9
_class/
-+loc:@batch_normalization_10/moving_variance*
_output_shapes
:*
dtype0*
valueB*  ?
ß
&batch_normalization_10/moving_varianceVarHandleOp*9
_class/
-+loc:@batch_normalization_10/moving_variance*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_10/moving_variance

Gbatch_normalization_10/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_10/moving_variance*
_output_shapes
: 
¯
-batch_normalization_10/moving_variance/AssignAssignVariableOp&batch_normalization_10/moving_variance7batch_normalization_10/moving_variance/Initializer/ones*
dtype0

:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
:*
dtype0
Ô
batch_normalization_10/condIfkeras_learning_phasebatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceleaky_re_lu_21/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*B
_output_shapes0
.:::: : : : : : : *&
_read_only_resource_inputs
*9
else_branch*R(
&batch_normalization_10_cond_false_1528*A
output_shapes0
.:::: : : : : : : *8
then_branch)R'
%batch_normalization_10_cond_true_1527

$batch_normalization_10/cond/IdentityIdentitybatch_normalization_10/cond*
T0*(
_output_shapes
:
v
&batch_normalization_10/cond/Identity_1Identitybatch_normalization_10/cond:1*
T0*
_output_shapes
:
v
&batch_normalization_10/cond/Identity_2Identitybatch_normalization_10/cond:2*
T0*
_output_shapes
:
r
&batch_normalization_10/cond/Identity_3Identitybatch_normalization_10/cond:3*
T0*
_output_shapes
: 
r
&batch_normalization_10/cond/Identity_4Identitybatch_normalization_10/cond:4*
T0*
_output_shapes
: 
r
&batch_normalization_10/cond/Identity_5Identitybatch_normalization_10/cond:5*
T0*
_output_shapes
: 
r
&batch_normalization_10/cond/Identity_6Identitybatch_normalization_10/cond:6*
T0*
_output_shapes
: 
r
&batch_normalization_10/cond/Identity_7Identitybatch_normalization_10/cond:7*
T0*
_output_shapes
: 
r
&batch_normalization_10/cond/Identity_8Identitybatch_normalization_10/cond:8*
T0*
_output_shapes
: 
r
&batch_normalization_10/cond/Identity_9Identitybatch_normalization_10/cond:9*
T0*
_output_shapes
: 
Ô
batch_normalization_10/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *;
else_branch,R*
(batch_normalization_10_cond_1_false_1596*
output_shapes
: *:
then_branch+R)
'batch_normalization_10_cond_1_true_1595
r
&batch_normalization_10/cond_1/IdentityIdentitybatch_normalization_10/cond_1*
T0*
_output_shapes
: 
¨
,batch_normalization_10/AssignMovingAvg/sub/xConst*5
_class+
)'loc:@batch_normalization_10/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
ß
*batch_normalization_10/AssignMovingAvg/subSub,batch_normalization_10/AssignMovingAvg/sub/x&batch_normalization_10/cond_1/Identity*
T0*5
_class+
)'loc:@batch_normalization_10/moving_mean*
_output_shapes
: 

5batch_normalization_10/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes
:*
dtype0
î
,batch_normalization_10/AssignMovingAvg/sub_1Sub5batch_normalization_10/AssignMovingAvg/ReadVariableOp&batch_normalization_10/cond/Identity_1*
T0*5
_class+
)'loc:@batch_normalization_10/moving_mean*
_output_shapes
:
ç
*batch_normalization_10/AssignMovingAvg/mulMul,batch_normalization_10/AssignMovingAvg/sub_1*batch_normalization_10/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_10/moving_mean*
_output_shapes
:
å
:batch_normalization_10/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_10/moving_mean*batch_normalization_10/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_10/moving_mean*
dtype0

7batch_normalization_10/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_10/moving_mean;^batch_normalization_10/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_10/moving_mean*
_output_shapes
:*
dtype0
®
.batch_normalization_10/AssignMovingAvg_1/sub/xConst*9
_class/
-+loc:@batch_normalization_10/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ç
,batch_normalization_10/AssignMovingAvg_1/subSub.batch_normalization_10/AssignMovingAvg_1/sub/x&batch_normalization_10/cond_1/Identity*
T0*9
_class/
-+loc:@batch_normalization_10/moving_variance*
_output_shapes
: 

7batch_normalization_10/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
:*
dtype0
ö
.batch_normalization_10/AssignMovingAvg_1/sub_1Sub7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp&batch_normalization_10/cond/Identity_2*
T0*9
_class/
-+loc:@batch_normalization_10/moving_variance*
_output_shapes
:
ñ
,batch_normalization_10/AssignMovingAvg_1/mulMul.batch_normalization_10/AssignMovingAvg_1/sub_1,batch_normalization_10/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_10/moving_variance*
_output_shapes
:
ñ
<batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_10/moving_variance,batch_normalization_10/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_10/moving_variance*
dtype0

9batch_normalization_10/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_10/moving_variance=^batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_10/moving_variance*
_output_shapes
:*
dtype0
[
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
Â
concatenate_2/concatConcatV2#batch_normalization_2/cond/Identity$batch_normalization_10/cond/Identityconcatenate_2/concat/axis*
N*
T0*(
_output_shapes
:$
¯
1conv2d_19/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_19/kernel*
_output_shapes
:*
dtype0*%
valueB"      $   0   

/conv2d_19/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_19/kernel*
_output_shapes
: *
dtype0*
valueB
 *Js¶½

/conv2d_19/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_19/kernel*
_output_shapes
: *
dtype0*
valueB
 *Js¶=
à
9conv2d_19/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_19/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_19/kernel*&
_output_shapes
:$0*
dtype0
Þ
/conv2d_19/kernel/Initializer/random_uniform/subSub/conv2d_19/kernel/Initializer/random_uniform/max/conv2d_19/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_19/kernel*
_output_shapes
: 
ø
/conv2d_19/kernel/Initializer/random_uniform/mulMul9conv2d_19/kernel/Initializer/random_uniform/RandomUniform/conv2d_19/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_19/kernel*&
_output_shapes
:$0
ì
+conv2d_19/kernel/Initializer/random_uniformAddV2/conv2d_19/kernel/Initializer/random_uniform/mul/conv2d_19/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_19/kernel*&
_output_shapes
:$0
©
conv2d_19/kernelVarHandleOp*#
_class
loc:@conv2d_19/kernel*
_output_shapes
: *
dtype0*
shape:$0*!
shared_nameconv2d_19/kernel
q
1conv2d_19/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_19/kernel*
_output_shapes
: 
w
conv2d_19/kernel/AssignAssignVariableOpconv2d_19/kernel+conv2d_19/kernel/Initializer/random_uniform*
dtype0
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
:$0*
dtype0

 conv2d_19/bias/Initializer/zerosConst*!
_class
loc:@conv2d_19/bias*
_output_shapes
:0*
dtype0*
valueB0*    

conv2d_19/biasVarHandleOp*!
_class
loc:@conv2d_19/bias*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv2d_19/bias
m
/conv2d_19/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_19/bias*
_output_shapes
: 
h
conv2d_19/bias/AssignAssignVariableOpconv2d_19/bias conv2d_19/bias/Initializer/zeros*
dtype0
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:0*
dtype0
x
conv2d_19/Conv2D/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
:$0*
dtype0
¬
conv2d_19/Conv2DConv2Dconcatenate_2/concatconv2d_19/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:0*
paddingSAME*
strides

k
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:0*
dtype0

conv2d_19/BiasAddBiasAddconv2d_19/Conv2D conv2d_19/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:0
r
leaky_re_lu_22/LeakyRelu	LeakyReluconv2d_19/BiasAdd*(
_output_shapes
:0*
alpha%>
¯
1conv2d_20/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_20/kernel*
_output_shapes
:*
dtype0*%
valueB"      0      

/conv2d_20/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_20/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í¾

/conv2d_20/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_20/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Í>
à
9conv2d_20/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_20/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_20/kernel*&
_output_shapes
:0*
dtype0
Þ
/conv2d_20/kernel/Initializer/random_uniform/subSub/conv2d_20/kernel/Initializer/random_uniform/max/conv2d_20/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_20/kernel*
_output_shapes
: 
ø
/conv2d_20/kernel/Initializer/random_uniform/mulMul9conv2d_20/kernel/Initializer/random_uniform/RandomUniform/conv2d_20/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_20/kernel*&
_output_shapes
:0
ì
+conv2d_20/kernel/Initializer/random_uniformAddV2/conv2d_20/kernel/Initializer/random_uniform/mul/conv2d_20/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_20/kernel*&
_output_shapes
:0
©
conv2d_20/kernelVarHandleOp*#
_class
loc:@conv2d_20/kernel*
_output_shapes
: *
dtype0*
shape:0*!
shared_nameconv2d_20/kernel
q
1conv2d_20/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_20/kernel*
_output_shapes
: 
w
conv2d_20/kernel/AssignAssignVariableOpconv2d_20/kernel+conv2d_20/kernel/Initializer/random_uniform*
dtype0
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
:0*
dtype0

 conv2d_20/bias/Initializer/zerosConst*!
_class
loc:@conv2d_20/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_20/biasVarHandleOp*!
_class
loc:@conv2d_20/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_20/bias
m
/conv2d_20/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_20/bias*
_output_shapes
: 
h
conv2d_20/bias/AssignAssignVariableOpconv2d_20/bias conv2d_20/bias/Initializer/zeros*
dtype0
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
:*
dtype0
x
conv2d_20/Conv2D/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
:0*
dtype0
°
conv2d_20/Conv2DConv2Dleaky_re_lu_22/LeakyReluconv2d_20/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

k
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
:*
dtype0

conv2d_20/BiasAddBiasAddconv2d_20/Conv2D conv2d_20/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
r
leaky_re_lu_23/LeakyRelu	LeakyReluconv2d_20/BiasAdd*(
_output_shapes
:*
alpha%>
«
-batch_normalization_11/gamma/Initializer/onesConst*/
_class%
#!loc:@batch_normalization_11/gamma*
_output_shapes
:*
dtype0*
valueB*  ?
Á
batch_normalization_11/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_11/gamma*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_11/gamma

=batch_normalization_11/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_11/gamma*
_output_shapes
: 

#batch_normalization_11/gamma/AssignAssignVariableOpbatch_normalization_11/gamma-batch_normalization_11/gamma/Initializer/ones*
dtype0

0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes
:*
dtype0
ª
-batch_normalization_11/beta/Initializer/zerosConst*.
_class$
" loc:@batch_normalization_11/beta*
_output_shapes
:*
dtype0*
valueB*    
¾
batch_normalization_11/betaVarHandleOp*.
_class$
" loc:@batch_normalization_11/beta*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_11/beta

<batch_normalization_11/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_11/beta*
_output_shapes
: 

"batch_normalization_11/beta/AssignAssignVariableOpbatch_normalization_11/beta-batch_normalization_11/beta/Initializer/zeros*
dtype0

/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes
:*
dtype0
¸
4batch_normalization_11/moving_mean/Initializer/zerosConst*5
_class+
)'loc:@batch_normalization_11/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
Ó
"batch_normalization_11/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_11/moving_mean*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_11/moving_mean

Cbatch_normalization_11/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_11/moving_mean*
_output_shapes
: 
¤
)batch_normalization_11/moving_mean/AssignAssignVariableOp"batch_normalization_11/moving_mean4batch_normalization_11/moving_mean/Initializer/zeros*
dtype0

6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes
:*
dtype0
¿
7batch_normalization_11/moving_variance/Initializer/onesConst*9
_class/
-+loc:@batch_normalization_11/moving_variance*
_output_shapes
:*
dtype0*
valueB*  ?
ß
&batch_normalization_11/moving_varianceVarHandleOp*9
_class/
-+loc:@batch_normalization_11/moving_variance*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_11/moving_variance

Gbatch_normalization_11/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_11/moving_variance*
_output_shapes
: 
¯
-batch_normalization_11/moving_variance/AssignAssignVariableOp&batch_normalization_11/moving_variance7batch_normalization_11/moving_variance/Initializer/ones*
dtype0

:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes
:*
dtype0
Ô
batch_normalization_11/condIfkeras_learning_phasebatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_varianceleaky_re_lu_23/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*B
_output_shapes0
.:::: : : : : : : *&
_read_only_resource_inputs
*9
else_branch*R(
&batch_normalization_11_cond_false_1672*A
output_shapes0
.:::: : : : : : : *8
then_branch)R'
%batch_normalization_11_cond_true_1671

$batch_normalization_11/cond/IdentityIdentitybatch_normalization_11/cond*
T0*(
_output_shapes
:
v
&batch_normalization_11/cond/Identity_1Identitybatch_normalization_11/cond:1*
T0*
_output_shapes
:
v
&batch_normalization_11/cond/Identity_2Identitybatch_normalization_11/cond:2*
T0*
_output_shapes
:
r
&batch_normalization_11/cond/Identity_3Identitybatch_normalization_11/cond:3*
T0*
_output_shapes
: 
r
&batch_normalization_11/cond/Identity_4Identitybatch_normalization_11/cond:4*
T0*
_output_shapes
: 
r
&batch_normalization_11/cond/Identity_5Identitybatch_normalization_11/cond:5*
T0*
_output_shapes
: 
r
&batch_normalization_11/cond/Identity_6Identitybatch_normalization_11/cond:6*
T0*
_output_shapes
: 
r
&batch_normalization_11/cond/Identity_7Identitybatch_normalization_11/cond:7*
T0*
_output_shapes
: 
r
&batch_normalization_11/cond/Identity_8Identitybatch_normalization_11/cond:8*
T0*
_output_shapes
: 
r
&batch_normalization_11/cond/Identity_9Identitybatch_normalization_11/cond:9*
T0*
_output_shapes
: 
Ô
batch_normalization_11/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *;
else_branch,R*
(batch_normalization_11_cond_1_false_1740*
output_shapes
: *:
then_branch+R)
'batch_normalization_11_cond_1_true_1739
r
&batch_normalization_11/cond_1/IdentityIdentitybatch_normalization_11/cond_1*
T0*
_output_shapes
: 
¨
,batch_normalization_11/AssignMovingAvg/sub/xConst*5
_class+
)'loc:@batch_normalization_11/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
ß
*batch_normalization_11/AssignMovingAvg/subSub,batch_normalization_11/AssignMovingAvg/sub/x&batch_normalization_11/cond_1/Identity*
T0*5
_class+
)'loc:@batch_normalization_11/moving_mean*
_output_shapes
: 

5batch_normalization_11/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes
:*
dtype0
î
,batch_normalization_11/AssignMovingAvg/sub_1Sub5batch_normalization_11/AssignMovingAvg/ReadVariableOp&batch_normalization_11/cond/Identity_1*
T0*5
_class+
)'loc:@batch_normalization_11/moving_mean*
_output_shapes
:
ç
*batch_normalization_11/AssignMovingAvg/mulMul,batch_normalization_11/AssignMovingAvg/sub_1*batch_normalization_11/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_11/moving_mean*
_output_shapes
:
å
:batch_normalization_11/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_11/moving_mean*batch_normalization_11/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_11/moving_mean*
dtype0

7batch_normalization_11/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_11/moving_mean;^batch_normalization_11/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_11/moving_mean*
_output_shapes
:*
dtype0
®
.batch_normalization_11/AssignMovingAvg_1/sub/xConst*9
_class/
-+loc:@batch_normalization_11/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ç
,batch_normalization_11/AssignMovingAvg_1/subSub.batch_normalization_11/AssignMovingAvg_1/sub/x&batch_normalization_11/cond_1/Identity*
T0*9
_class/
-+loc:@batch_normalization_11/moving_variance*
_output_shapes
: 

7batch_normalization_11/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes
:*
dtype0
ö
.batch_normalization_11/AssignMovingAvg_1/sub_1Sub7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp&batch_normalization_11/cond/Identity_2*
T0*9
_class/
-+loc:@batch_normalization_11/moving_variance*
_output_shapes
:
ñ
,batch_normalization_11/AssignMovingAvg_1/mulMul.batch_normalization_11/AssignMovingAvg_1/sub_1,batch_normalization_11/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_11/moving_variance*
_output_shapes
:
ñ
<batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_11/moving_variance,batch_normalization_11/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_11/moving_variance*
dtype0

9batch_normalization_11/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_11/moving_variance=^batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_11/moving_variance*
_output_shapes
:*
dtype0
Á
:conv2d_transpose_3/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@conv2d_transpose_3/kernel*
_output_shapes
:*
dtype0*%
valueB"            
«
8conv2d_transpose_3/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@conv2d_transpose_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *ï[ñ½
«
8conv2d_transpose_3/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@conv2d_transpose_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *ï[ñ=
û
Bconv2d_transpose_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv2d_transpose_3/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@conv2d_transpose_3/kernel*&
_output_shapes
:*
dtype0

8conv2d_transpose_3/kernel/Initializer/random_uniform/subSub8conv2d_transpose_3/kernel/Initializer/random_uniform/max8conv2d_transpose_3/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_3/kernel*
_output_shapes
: 

8conv2d_transpose_3/kernel/Initializer/random_uniform/mulMulBconv2d_transpose_3/kernel/Initializer/random_uniform/RandomUniform8conv2d_transpose_3/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@conv2d_transpose_3/kernel*&
_output_shapes
:

4conv2d_transpose_3/kernel/Initializer/random_uniformAddV28conv2d_transpose_3/kernel/Initializer/random_uniform/mul8conv2d_transpose_3/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_3/kernel*&
_output_shapes
:
Ä
conv2d_transpose_3/kernelVarHandleOp*,
_class"
 loc:@conv2d_transpose_3/kernel*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_3/kernel

:conv2d_transpose_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_3/kernel*
_output_shapes
: 

 conv2d_transpose_3/kernel/AssignAssignVariableOpconv2d_transpose_3/kernel4conv2d_transpose_3/kernel/Initializer/random_uniform*
dtype0

-conv2d_transpose_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/kernel*&
_output_shapes
:*
dtype0
¢
)conv2d_transpose_3/bias/Initializer/zerosConst**
_class 
loc:@conv2d_transpose_3/bias*
_output_shapes
:*
dtype0*
valueB*    
²
conv2d_transpose_3/biasVarHandleOp**
_class 
loc:@conv2d_transpose_3/bias*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_3/bias

8conv2d_transpose_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_3/bias*
_output_shapes
: 

conv2d_transpose_3/bias/AssignAssignVariableOpconv2d_transpose_3/bias)conv2d_transpose_3/bias/Initializer/zeros*
dtype0

+conv2d_transpose_3/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/bias*
_output_shapes
:*
dtype0
q
conv2d_transpose_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
p
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
r
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
r
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

 conv2d_transpose_3/strided_sliceStridedSliceconv2d_transpose_3/Shape&conv2d_transpose_3/strided_slice/stack(conv2d_transpose_3/strided_slice/stack_1(conv2d_transpose_3/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
]
conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :
]
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :
\
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :
Ä
conv2d_transpose_3/stackPack conv2d_transpose_3/strided_sliceconv2d_transpose_3/stack/1conv2d_transpose_3/stack/2conv2d_transpose_3/stack/3*
N*
T0*
_output_shapes
:
r
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
t
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
t
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

"conv2d_transpose_3/strided_slice_1StridedSliceconv2d_transpose_3/stack(conv2d_transpose_3/strided_slice_1/stack*conv2d_transpose_3/strided_slice_1/stack_1*conv2d_transpose_3/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_3/kernel*&
_output_shapes
:*
dtype0

#conv2d_transpose_3/conv2d_transposeConv2DBackpropInputconv2d_transpose_3/stack2conv2d_transpose_3/conv2d_transpose/ReadVariableOp$batch_normalization_11/cond/Identity*
T0*(
_output_shapes
:*
paddingSAME*
strides

}
)conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_3/bias*
_output_shapes
:*
dtype0
¨
conv2d_transpose_3/BiasAddBiasAdd#conv2d_transpose_3/conv2d_transpose)conv2d_transpose_3/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
{
leaky_re_lu_24/LeakyRelu	LeakyReluconv2d_transpose_3/BiasAdd*(
_output_shapes
:*
alpha%>
¯
1conv2d_21/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_21/kernel*
_output_shapes
:*
dtype0*%
valueB"            

/conv2d_21/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_21/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìÑ¾

/conv2d_21/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_21/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìÑ>
à
9conv2d_21/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_21/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_21/kernel*&
_output_shapes
:*
dtype0
Þ
/conv2d_21/kernel/Initializer/random_uniform/subSub/conv2d_21/kernel/Initializer/random_uniform/max/conv2d_21/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_21/kernel*
_output_shapes
: 
ø
/conv2d_21/kernel/Initializer/random_uniform/mulMul9conv2d_21/kernel/Initializer/random_uniform/RandomUniform/conv2d_21/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_21/kernel*&
_output_shapes
:
ì
+conv2d_21/kernel/Initializer/random_uniformAddV2/conv2d_21/kernel/Initializer/random_uniform/mul/conv2d_21/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_21/kernel*&
_output_shapes
:
©
conv2d_21/kernelVarHandleOp*#
_class
loc:@conv2d_21/kernel*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_21/kernel
q
1conv2d_21/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_21/kernel*
_output_shapes
: 
w
conv2d_21/kernel/AssignAssignVariableOpconv2d_21/kernel+conv2d_21/kernel/Initializer/random_uniform*
dtype0
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
:*
dtype0

 conv2d_21/bias/Initializer/zerosConst*!
_class
loc:@conv2d_21/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_21/biasVarHandleOp*!
_class
loc:@conv2d_21/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_21/bias
m
/conv2d_21/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_21/bias*
_output_shapes
: 
h
conv2d_21/bias/AssignAssignVariableOpconv2d_21/bias conv2d_21/bias/Initializer/zeros*
dtype0
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:*
dtype0
x
conv2d_21/Conv2D/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
:*
dtype0
°
conv2d_21/Conv2DConv2Dleaky_re_lu_24/LeakyReluconv2d_21/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

k
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:*
dtype0

conv2d_21/BiasAddBiasAddconv2d_21/Conv2D conv2d_21/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
r
leaky_re_lu_25/LeakyRelu	LeakyReluconv2d_21/BiasAdd*(
_output_shapes
:*
alpha%>
«
-batch_normalization_12/gamma/Initializer/onesConst*/
_class%
#!loc:@batch_normalization_12/gamma*
_output_shapes
:*
dtype0*
valueB*  ?
Á
batch_normalization_12/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_12/gamma*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_12/gamma

=batch_normalization_12/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_12/gamma*
_output_shapes
: 

#batch_normalization_12/gamma/AssignAssignVariableOpbatch_normalization_12/gamma-batch_normalization_12/gamma/Initializer/ones*
dtype0

0batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_12/gamma*
_output_shapes
:*
dtype0
ª
-batch_normalization_12/beta/Initializer/zerosConst*.
_class$
" loc:@batch_normalization_12/beta*
_output_shapes
:*
dtype0*
valueB*    
¾
batch_normalization_12/betaVarHandleOp*.
_class$
" loc:@batch_normalization_12/beta*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_12/beta

<batch_normalization_12/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_12/beta*
_output_shapes
: 

"batch_normalization_12/beta/AssignAssignVariableOpbatch_normalization_12/beta-batch_normalization_12/beta/Initializer/zeros*
dtype0

/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_12/beta*
_output_shapes
:*
dtype0
¸
4batch_normalization_12/moving_mean/Initializer/zerosConst*5
_class+
)'loc:@batch_normalization_12/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
Ó
"batch_normalization_12/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_12/moving_mean*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_12/moving_mean

Cbatch_normalization_12/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_12/moving_mean*
_output_shapes
: 
¤
)batch_normalization_12/moving_mean/AssignAssignVariableOp"batch_normalization_12/moving_mean4batch_normalization_12/moving_mean/Initializer/zeros*
dtype0

6batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
_output_shapes
:*
dtype0
¿
7batch_normalization_12/moving_variance/Initializer/onesConst*9
_class/
-+loc:@batch_normalization_12/moving_variance*
_output_shapes
:*
dtype0*
valueB*  ?
ß
&batch_normalization_12/moving_varianceVarHandleOp*9
_class/
-+loc:@batch_normalization_12/moving_variance*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_12/moving_variance

Gbatch_normalization_12/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_12/moving_variance*
_output_shapes
: 
¯
-batch_normalization_12/moving_variance/AssignAssignVariableOp&batch_normalization_12/moving_variance7batch_normalization_12/moving_variance/Initializer/ones*
dtype0

:batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes
:*
dtype0
Ô
batch_normalization_12/condIfkeras_learning_phasebatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceleaky_re_lu_25/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*B
_output_shapes0
.:::: : : : : : : *&
_read_only_resource_inputs
*9
else_branch*R(
&batch_normalization_12_cond_false_1827*A
output_shapes0
.:::: : : : : : : *8
then_branch)R'
%batch_normalization_12_cond_true_1826

$batch_normalization_12/cond/IdentityIdentitybatch_normalization_12/cond*
T0*(
_output_shapes
:
v
&batch_normalization_12/cond/Identity_1Identitybatch_normalization_12/cond:1*
T0*
_output_shapes
:
v
&batch_normalization_12/cond/Identity_2Identitybatch_normalization_12/cond:2*
T0*
_output_shapes
:
r
&batch_normalization_12/cond/Identity_3Identitybatch_normalization_12/cond:3*
T0*
_output_shapes
: 
r
&batch_normalization_12/cond/Identity_4Identitybatch_normalization_12/cond:4*
T0*
_output_shapes
: 
r
&batch_normalization_12/cond/Identity_5Identitybatch_normalization_12/cond:5*
T0*
_output_shapes
: 
r
&batch_normalization_12/cond/Identity_6Identitybatch_normalization_12/cond:6*
T0*
_output_shapes
: 
r
&batch_normalization_12/cond/Identity_7Identitybatch_normalization_12/cond:7*
T0*
_output_shapes
: 
r
&batch_normalization_12/cond/Identity_8Identitybatch_normalization_12/cond:8*
T0*
_output_shapes
: 
r
&batch_normalization_12/cond/Identity_9Identitybatch_normalization_12/cond:9*
T0*
_output_shapes
: 
Ô
batch_normalization_12/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *;
else_branch,R*
(batch_normalization_12_cond_1_false_1895*
output_shapes
: *:
then_branch+R)
'batch_normalization_12_cond_1_true_1894
r
&batch_normalization_12/cond_1/IdentityIdentitybatch_normalization_12/cond_1*
T0*
_output_shapes
: 
¨
,batch_normalization_12/AssignMovingAvg/sub/xConst*5
_class+
)'loc:@batch_normalization_12/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
ß
*batch_normalization_12/AssignMovingAvg/subSub,batch_normalization_12/AssignMovingAvg/sub/x&batch_normalization_12/cond_1/Identity*
T0*5
_class+
)'loc:@batch_normalization_12/moving_mean*
_output_shapes
: 

5batch_normalization_12/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
_output_shapes
:*
dtype0
î
,batch_normalization_12/AssignMovingAvg/sub_1Sub5batch_normalization_12/AssignMovingAvg/ReadVariableOp&batch_normalization_12/cond/Identity_1*
T0*5
_class+
)'loc:@batch_normalization_12/moving_mean*
_output_shapes
:
ç
*batch_normalization_12/AssignMovingAvg/mulMul,batch_normalization_12/AssignMovingAvg/sub_1*batch_normalization_12/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_12/moving_mean*
_output_shapes
:
å
:batch_normalization_12/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_12/moving_mean*batch_normalization_12/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_12/moving_mean*
dtype0

7batch_normalization_12/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_12/moving_mean;^batch_normalization_12/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_12/moving_mean*
_output_shapes
:*
dtype0
®
.batch_normalization_12/AssignMovingAvg_1/sub/xConst*9
_class/
-+loc:@batch_normalization_12/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ç
,batch_normalization_12/AssignMovingAvg_1/subSub.batch_normalization_12/AssignMovingAvg_1/sub/x&batch_normalization_12/cond_1/Identity*
T0*9
_class/
-+loc:@batch_normalization_12/moving_variance*
_output_shapes
: 

7batch_normalization_12/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes
:*
dtype0
ö
.batch_normalization_12/AssignMovingAvg_1/sub_1Sub7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp&batch_normalization_12/cond/Identity_2*
T0*9
_class/
-+loc:@batch_normalization_12/moving_variance*
_output_shapes
:
ñ
,batch_normalization_12/AssignMovingAvg_1/mulMul.batch_normalization_12/AssignMovingAvg_1/sub_1,batch_normalization_12/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_12/moving_variance*
_output_shapes
:
ñ
<batch_normalization_12/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_12/moving_variance,batch_normalization_12/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_12/moving_variance*
dtype0

9batch_normalization_12/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_12/moving_variance=^batch_normalization_12/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_12/moving_variance*
_output_shapes
:*
dtype0
[
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
Â
concatenate_3/concatConcatV2#batch_normalization_1/cond/Identity$batch_normalization_12/cond/Identityconcatenate_3/concat/axis*
N*
T0*(
_output_shapes
:
¯
1conv2d_22/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_22/kernel*
_output_shapes
:*
dtype0*%
valueB"            

/conv2d_22/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_22/kernel*
_output_shapes
: *
dtype0*
valueB
 *
¾

/conv2d_22/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_22/kernel*
_output_shapes
: *
dtype0*
valueB
 *
>
à
9conv2d_22/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_22/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_22/kernel*&
_output_shapes
:*
dtype0
Þ
/conv2d_22/kernel/Initializer/random_uniform/subSub/conv2d_22/kernel/Initializer/random_uniform/max/conv2d_22/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_22/kernel*
_output_shapes
: 
ø
/conv2d_22/kernel/Initializer/random_uniform/mulMul9conv2d_22/kernel/Initializer/random_uniform/RandomUniform/conv2d_22/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_22/kernel*&
_output_shapes
:
ì
+conv2d_22/kernel/Initializer/random_uniformAddV2/conv2d_22/kernel/Initializer/random_uniform/mul/conv2d_22/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_22/kernel*&
_output_shapes
:
©
conv2d_22/kernelVarHandleOp*#
_class
loc:@conv2d_22/kernel*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_22/kernel
q
1conv2d_22/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_22/kernel*
_output_shapes
: 
w
conv2d_22/kernel/AssignAssignVariableOpconv2d_22/kernel+conv2d_22/kernel/Initializer/random_uniform*
dtype0
}
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*&
_output_shapes
:*
dtype0

 conv2d_22/bias/Initializer/zerosConst*!
_class
loc:@conv2d_22/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_22/biasVarHandleOp*!
_class
loc:@conv2d_22/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_22/bias
m
/conv2d_22/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_22/bias*
_output_shapes
: 
h
conv2d_22/bias/AssignAssignVariableOpconv2d_22/bias conv2d_22/bias/Initializer/zeros*
dtype0
m
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes
:*
dtype0
x
conv2d_22/Conv2D/ReadVariableOpReadVariableOpconv2d_22/kernel*&
_output_shapes
:*
dtype0
¬
conv2d_22/Conv2DConv2Dconcatenate_3/concatconv2d_22/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

k
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes
:*
dtype0

conv2d_22/BiasAddBiasAddconv2d_22/Conv2D conv2d_22/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
r
leaky_re_lu_26/LeakyRelu	LeakyReluconv2d_22/BiasAdd*(
_output_shapes
:*
alpha%>
¯
1conv2d_23/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_23/kernel*
_output_shapes
:*
dtype0*%
valueB"            

/conv2d_23/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_23/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìÑ¾

/conv2d_23/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_23/kernel*
_output_shapes
: *
dtype0*
valueB
 *ìÑ>
à
9conv2d_23/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_23/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_23/kernel*&
_output_shapes
:*
dtype0
Þ
/conv2d_23/kernel/Initializer/random_uniform/subSub/conv2d_23/kernel/Initializer/random_uniform/max/conv2d_23/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_23/kernel*
_output_shapes
: 
ø
/conv2d_23/kernel/Initializer/random_uniform/mulMul9conv2d_23/kernel/Initializer/random_uniform/RandomUniform/conv2d_23/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_23/kernel*&
_output_shapes
:
ì
+conv2d_23/kernel/Initializer/random_uniformAddV2/conv2d_23/kernel/Initializer/random_uniform/mul/conv2d_23/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_23/kernel*&
_output_shapes
:
©
conv2d_23/kernelVarHandleOp*#
_class
loc:@conv2d_23/kernel*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_23/kernel
q
1conv2d_23/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_23/kernel*
_output_shapes
: 
w
conv2d_23/kernel/AssignAssignVariableOpconv2d_23/kernel+conv2d_23/kernel/Initializer/random_uniform*
dtype0
}
$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*&
_output_shapes
:*
dtype0

 conv2d_23/bias/Initializer/zerosConst*!
_class
loc:@conv2d_23/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_23/biasVarHandleOp*!
_class
loc:@conv2d_23/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_23/bias
m
/conv2d_23/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_23/bias*
_output_shapes
: 
h
conv2d_23/bias/AssignAssignVariableOpconv2d_23/bias conv2d_23/bias/Initializer/zeros*
dtype0
m
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes
:*
dtype0
x
conv2d_23/Conv2D/ReadVariableOpReadVariableOpconv2d_23/kernel*&
_output_shapes
:*
dtype0
°
conv2d_23/Conv2DConv2Dleaky_re_lu_26/LeakyReluconv2d_23/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

k
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes
:*
dtype0

conv2d_23/BiasAddBiasAddconv2d_23/Conv2D conv2d_23/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
r
leaky_re_lu_27/LeakyRelu	LeakyReluconv2d_23/BiasAdd*(
_output_shapes
:*
alpha%>
«
-batch_normalization_13/gamma/Initializer/onesConst*/
_class%
#!loc:@batch_normalization_13/gamma*
_output_shapes
:*
dtype0*
valueB*  ?
Á
batch_normalization_13/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_13/gamma*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_13/gamma

=batch_normalization_13/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_13/gamma*
_output_shapes
: 

#batch_normalization_13/gamma/AssignAssignVariableOpbatch_normalization_13/gamma-batch_normalization_13/gamma/Initializer/ones*
dtype0

0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*
_output_shapes
:*
dtype0
ª
-batch_normalization_13/beta/Initializer/zerosConst*.
_class$
" loc:@batch_normalization_13/beta*
_output_shapes
:*
dtype0*
valueB*    
¾
batch_normalization_13/betaVarHandleOp*.
_class$
" loc:@batch_normalization_13/beta*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_13/beta

<batch_normalization_13/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_13/beta*
_output_shapes
: 

"batch_normalization_13/beta/AssignAssignVariableOpbatch_normalization_13/beta-batch_normalization_13/beta/Initializer/zeros*
dtype0

/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*
_output_shapes
:*
dtype0
¸
4batch_normalization_13/moving_mean/Initializer/zerosConst*5
_class+
)'loc:@batch_normalization_13/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
Ó
"batch_normalization_13/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_13/moving_mean*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_13/moving_mean

Cbatch_normalization_13/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_13/moving_mean*
_output_shapes
: 
¤
)batch_normalization_13/moving_mean/AssignAssignVariableOp"batch_normalization_13/moving_mean4batch_normalization_13/moving_mean/Initializer/zeros*
dtype0

6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes
:*
dtype0
¿
7batch_normalization_13/moving_variance/Initializer/onesConst*9
_class/
-+loc:@batch_normalization_13/moving_variance*
_output_shapes
:*
dtype0*
valueB*  ?
ß
&batch_normalization_13/moving_varianceVarHandleOp*9
_class/
-+loc:@batch_normalization_13/moving_variance*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_13/moving_variance

Gbatch_normalization_13/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_13/moving_variance*
_output_shapes
: 
¯
-batch_normalization_13/moving_variance/AssignAssignVariableOp&batch_normalization_13/moving_variance7batch_normalization_13/moving_variance/Initializer/ones*
dtype0

:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes
:*
dtype0
Ô
batch_normalization_13/condIfkeras_learning_phasebatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceleaky_re_lu_27/LeakyRelu*
Tcond0
*
Tin	
2*
Tout
2
*
_lower_using_switch_merge(*B
_output_shapes0
.:::: : : : : : : *&
_read_only_resource_inputs
*9
else_branch*R(
&batch_normalization_13_cond_false_1971*A
output_shapes0
.:::: : : : : : : *8
then_branch)R'
%batch_normalization_13_cond_true_1970

$batch_normalization_13/cond/IdentityIdentitybatch_normalization_13/cond*
T0*(
_output_shapes
:
v
&batch_normalization_13/cond/Identity_1Identitybatch_normalization_13/cond:1*
T0*
_output_shapes
:
v
&batch_normalization_13/cond/Identity_2Identitybatch_normalization_13/cond:2*
T0*
_output_shapes
:
r
&batch_normalization_13/cond/Identity_3Identitybatch_normalization_13/cond:3*
T0*
_output_shapes
: 
r
&batch_normalization_13/cond/Identity_4Identitybatch_normalization_13/cond:4*
T0*
_output_shapes
: 
r
&batch_normalization_13/cond/Identity_5Identitybatch_normalization_13/cond:5*
T0*
_output_shapes
: 
r
&batch_normalization_13/cond/Identity_6Identitybatch_normalization_13/cond:6*
T0*
_output_shapes
: 
r
&batch_normalization_13/cond/Identity_7Identitybatch_normalization_13/cond:7*
T0*
_output_shapes
: 
r
&batch_normalization_13/cond/Identity_8Identitybatch_normalization_13/cond:8*
T0*
_output_shapes
: 
r
&batch_normalization_13/cond/Identity_9Identitybatch_normalization_13/cond:9*
T0*
_output_shapes
: 
Ô
batch_normalization_13/cond_1StatelessIfkeras_learning_phase*
Tcond0
*	
Tin
 *
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *;
else_branch,R*
(batch_normalization_13_cond_1_false_2039*
output_shapes
: *:
then_branch+R)
'batch_normalization_13_cond_1_true_2038
r
&batch_normalization_13/cond_1/IdentityIdentitybatch_normalization_13/cond_1*
T0*
_output_shapes
: 
¨
,batch_normalization_13/AssignMovingAvg/sub/xConst*5
_class+
)'loc:@batch_normalization_13/moving_mean*
_output_shapes
: *
dtype0*
valueB
 *  ?
ß
*batch_normalization_13/AssignMovingAvg/subSub,batch_normalization_13/AssignMovingAvg/sub/x&batch_normalization_13/cond_1/Identity*
T0*5
_class+
)'loc:@batch_normalization_13/moving_mean*
_output_shapes
: 

5batch_normalization_13/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes
:*
dtype0
î
,batch_normalization_13/AssignMovingAvg/sub_1Sub5batch_normalization_13/AssignMovingAvg/ReadVariableOp&batch_normalization_13/cond/Identity_1*
T0*5
_class+
)'loc:@batch_normalization_13/moving_mean*
_output_shapes
:
ç
*batch_normalization_13/AssignMovingAvg/mulMul,batch_normalization_13/AssignMovingAvg/sub_1*batch_normalization_13/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_13/moving_mean*
_output_shapes
:
å
:batch_normalization_13/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_13/moving_mean*batch_normalization_13/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_13/moving_mean*
dtype0

7batch_normalization_13/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_13/moving_mean;^batch_normalization_13/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_13/moving_mean*
_output_shapes
:*
dtype0
®
.batch_normalization_13/AssignMovingAvg_1/sub/xConst*9
_class/
-+loc:@batch_normalization_13/moving_variance*
_output_shapes
: *
dtype0*
valueB
 *  ?
ç
,batch_normalization_13/AssignMovingAvg_1/subSub.batch_normalization_13/AssignMovingAvg_1/sub/x&batch_normalization_13/cond_1/Identity*
T0*9
_class/
-+loc:@batch_normalization_13/moving_variance*
_output_shapes
: 

7batch_normalization_13/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes
:*
dtype0
ö
.batch_normalization_13/AssignMovingAvg_1/sub_1Sub7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp&batch_normalization_13/cond/Identity_2*
T0*9
_class/
-+loc:@batch_normalization_13/moving_variance*
_output_shapes
:
ñ
,batch_normalization_13/AssignMovingAvg_1/mulMul.batch_normalization_13/AssignMovingAvg_1/sub_1,batch_normalization_13/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_13/moving_variance*
_output_shapes
:
ñ
<batch_normalization_13/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_13/moving_variance,batch_normalization_13/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_13/moving_variance*
dtype0

9batch_normalization_13/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_13/moving_variance=^batch_normalization_13/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_13/moving_variance*
_output_shapes
:*
dtype0
¯
1conv2d_24/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_24/kernel*
_output_shapes
:*
dtype0*%
valueB"            

/conv2d_24/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_24/kernel*
_output_shapes
: *
dtype0*
valueB
 *«ª*¾

/conv2d_24/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_24/kernel*
_output_shapes
: *
dtype0*
valueB
 *«ª*>
à
9conv2d_24/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_24/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_24/kernel*&
_output_shapes
:*
dtype0
Þ
/conv2d_24/kernel/Initializer/random_uniform/subSub/conv2d_24/kernel/Initializer/random_uniform/max/conv2d_24/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_24/kernel*
_output_shapes
: 
ø
/conv2d_24/kernel/Initializer/random_uniform/mulMul9conv2d_24/kernel/Initializer/random_uniform/RandomUniform/conv2d_24/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_24/kernel*&
_output_shapes
:
ì
+conv2d_24/kernel/Initializer/random_uniformAddV2/conv2d_24/kernel/Initializer/random_uniform/mul/conv2d_24/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_24/kernel*&
_output_shapes
:
©
conv2d_24/kernelVarHandleOp*#
_class
loc:@conv2d_24/kernel*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_24/kernel
q
1conv2d_24/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_24/kernel*
_output_shapes
: 
w
conv2d_24/kernel/AssignAssignVariableOpconv2d_24/kernel+conv2d_24/kernel/Initializer/random_uniform*
dtype0
}
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*&
_output_shapes
:*
dtype0

 conv2d_24/bias/Initializer/zerosConst*!
_class
loc:@conv2d_24/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_24/biasVarHandleOp*!
_class
loc:@conv2d_24/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_24/bias
m
/conv2d_24/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_24/bias*
_output_shapes
: 
h
conv2d_24/bias/AssignAssignVariableOpconv2d_24/bias conv2d_24/bias/Initializer/zeros*
dtype0
m
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
:*
dtype0
x
conv2d_24/Conv2D/ReadVariableOpReadVariableOpconv2d_24/kernel*&
_output_shapes
:*
dtype0
¼
conv2d_24/Conv2DConv2D$batch_normalization_13/cond/Identityconv2d_24/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

k
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
:*
dtype0

conv2d_24/BiasAddBiasAddconv2d_24/Conv2D conv2d_24/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:
r
leaky_re_lu_28/LeakyRelu	LeakyReluconv2d_24/BiasAdd*(
_output_shapes
:*
alpha%>
¯
1conv2d_25/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv2d_25/kernel*
_output_shapes
:*
dtype0*%
valueB"            

/conv2d_25/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv2d_25/kernel*
_output_shapes
: *
dtype0*
valueB
 *òê-¿

/conv2d_25/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv2d_25/kernel*
_output_shapes
: *
dtype0*
valueB
 *òê-?
à
9conv2d_25/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_25/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_25/kernel*&
_output_shapes
:*
dtype0
Þ
/conv2d_25/kernel/Initializer/random_uniform/subSub/conv2d_25/kernel/Initializer/random_uniform/max/conv2d_25/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_25/kernel*
_output_shapes
: 
ø
/conv2d_25/kernel/Initializer/random_uniform/mulMul9conv2d_25/kernel/Initializer/random_uniform/RandomUniform/conv2d_25/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_25/kernel*&
_output_shapes
:
ì
+conv2d_25/kernel/Initializer/random_uniformAddV2/conv2d_25/kernel/Initializer/random_uniform/mul/conv2d_25/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_25/kernel*&
_output_shapes
:
©
conv2d_25/kernelVarHandleOp*#
_class
loc:@conv2d_25/kernel*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_25/kernel
q
1conv2d_25/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_25/kernel*
_output_shapes
: 
w
conv2d_25/kernel/AssignAssignVariableOpconv2d_25/kernel+conv2d_25/kernel/Initializer/random_uniform*
dtype0
}
$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
:*
dtype0

 conv2d_25/bias/Initializer/zerosConst*!
_class
loc:@conv2d_25/bias*
_output_shapes
:*
dtype0*
valueB*    

conv2d_25/biasVarHandleOp*!
_class
loc:@conv2d_25/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_25/bias
m
/conv2d_25/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_25/bias*
_output_shapes
: 
h
conv2d_25/bias/AssignAssignVariableOpconv2d_25/bias conv2d_25/bias/Initializer/zeros*
dtype0
m
"conv2d_25/bias/Read/ReadVariableOpReadVariableOpconv2d_25/bias*
_output_shapes
:*
dtype0
x
conv2d_25/Conv2D/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
:*
dtype0
°
conv2d_25/Conv2DConv2Dleaky_re_lu_28/LeakyReluconv2d_25/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:*
paddingSAME*
strides

k
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOpconv2d_25/bias*
_output_shapes
:*
dtype0

conv2d_25/BiasAddBiasAddconv2d_25/Conv2D conv2d_25/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp\part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ø
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:u*
dtype0*ü
valueòBïuBbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_10/betaBbatch_normalization_10/gammaB"batch_normalization_10/moving_meanB&batch_normalization_10/moving_varianceBbatch_normalization_11/betaBbatch_normalization_11/gammaB"batch_normalization_11/moving_meanB&batch_normalization_11/moving_varianceBbatch_normalization_12/betaBbatch_normalization_12/gammaB"batch_normalization_12/moving_meanB&batch_normalization_12/moving_varianceBbatch_normalization_13/betaBbatch_normalization_13/gammaB"batch_normalization_13/moving_meanB&batch_normalization_13/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/gammaB!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbatch_normalization_4/betaBbatch_normalization_4/gammaB!batch_normalization_4/moving_meanB%batch_normalization_4/moving_varianceBbatch_normalization_5/betaBbatch_normalization_5/gammaB!batch_normalization_5/moving_meanB%batch_normalization_5/moving_varianceBbatch_normalization_6/betaBbatch_normalization_6/gammaB!batch_normalization_6/moving_meanB%batch_normalization_6/moving_varianceBbatch_normalization_7/betaBbatch_normalization_7/gammaB!batch_normalization_7/moving_meanB%batch_normalization_7/moving_varianceBbatch_normalization_8/betaBbatch_normalization_8/gammaB!batch_normalization_8/moving_meanB%batch_normalization_8/moving_varianceBbatch_normalization_9/betaBbatch_normalization_9/gammaB!batch_normalization_9/moving_meanB%batch_normalization_9/moving_varianceBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_10/biasBconv2d_10/kernelBconv2d_11/biasBconv2d_11/kernelBconv2d_12/biasBconv2d_12/kernelBconv2d_13/biasBconv2d_13/kernelBconv2d_14/biasBconv2d_14/kernelBconv2d_15/biasBconv2d_15/kernelBconv2d_16/biasBconv2d_16/kernelBconv2d_17/biasBconv2d_17/kernelBconv2d_18/biasBconv2d_18/kernelBconv2d_19/biasBconv2d_19/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_20/biasBconv2d_20/kernelBconv2d_21/biasBconv2d_21/kernelBconv2d_22/biasBconv2d_22/kernelBconv2d_23/biasBconv2d_23/kernelBconv2d_24/biasBconv2d_24/kernelBconv2d_25/biasBconv2d_25/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_4/biasBconv2d_4/kernelBconv2d_5/biasBconv2d_5/kernelBconv2d_6/biasBconv2d_6/kernelBconv2d_7/biasBconv2d_7/kernelBconv2d_8/biasBconv2d_8/kernelBconv2d_9/biasBconv2d_9/kernelBconv2d_transpose/biasBconv2d_transpose/kernelBconv2d_transpose_1/biasBconv2d_transpose_1/kernelBconv2d_transpose_2/biasBconv2d_transpose_2/kernelBconv2d_transpose_3/biasBconv2d_transpose_3/kernelBglobal_step
ß
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:u*
dtype0*ÿ
valueõBòuB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
+
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices,batch_normalization/beta/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOp/batch_normalization_12/beta/Read/ReadVariableOp0batch_normalization_12/gamma/Read/ReadVariableOp6batch_normalization_12/moving_mean/Read/ReadVariableOp:batch_normalization_12/moving_variance/Read/ReadVariableOp/batch_normalization_13/beta/Read/ReadVariableOp0batch_normalization_13/gamma/Read/ReadVariableOp6batch_normalization_13/moving_mean/Read/ReadVariableOp:batch_normalization_13/moving_variance/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOp$conv2d_12/kernel/Read/ReadVariableOp"conv2d_13/bias/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp"conv2d_15/bias/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp$conv2d_16/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp$conv2d_24/kernel/Read/ReadVariableOp"conv2d_25/bias/Read/ReadVariableOp$conv2d_25/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp)conv2d_transpose/bias/Read/ReadVariableOp+conv2d_transpose/kernel/Read/ReadVariableOp+conv2d_transpose_1/bias/Read/ReadVariableOp-conv2d_transpose_1/kernel/Read/ReadVariableOp+conv2d_transpose_2/bias/Read/ReadVariableOp-conv2d_transpose_2/kernel/Read/ReadVariableOp+conv2d_transpose_3/bias/Read/ReadVariableOp-conv2d_transpose_3/kernel/Read/ReadVariableOpglobal_step/Read/ReadVariableOp"/device:CPU:0*
dtypesy
w2u	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Û
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:u*
dtype0*ü
valueòBïuBbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_10/betaBbatch_normalization_10/gammaB"batch_normalization_10/moving_meanB&batch_normalization_10/moving_varianceBbatch_normalization_11/betaBbatch_normalization_11/gammaB"batch_normalization_11/moving_meanB&batch_normalization_11/moving_varianceBbatch_normalization_12/betaBbatch_normalization_12/gammaB"batch_normalization_12/moving_meanB&batch_normalization_12/moving_varianceBbatch_normalization_13/betaBbatch_normalization_13/gammaB"batch_normalization_13/moving_meanB&batch_normalization_13/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/gammaB!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbatch_normalization_4/betaBbatch_normalization_4/gammaB!batch_normalization_4/moving_meanB%batch_normalization_4/moving_varianceBbatch_normalization_5/betaBbatch_normalization_5/gammaB!batch_normalization_5/moving_meanB%batch_normalization_5/moving_varianceBbatch_normalization_6/betaBbatch_normalization_6/gammaB!batch_normalization_6/moving_meanB%batch_normalization_6/moving_varianceBbatch_normalization_7/betaBbatch_normalization_7/gammaB!batch_normalization_7/moving_meanB%batch_normalization_7/moving_varianceBbatch_normalization_8/betaBbatch_normalization_8/gammaB!batch_normalization_8/moving_meanB%batch_normalization_8/moving_varianceBbatch_normalization_9/betaBbatch_normalization_9/gammaB!batch_normalization_9/moving_meanB%batch_normalization_9/moving_varianceBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_10/biasBconv2d_10/kernelBconv2d_11/biasBconv2d_11/kernelBconv2d_12/biasBconv2d_12/kernelBconv2d_13/biasBconv2d_13/kernelBconv2d_14/biasBconv2d_14/kernelBconv2d_15/biasBconv2d_15/kernelBconv2d_16/biasBconv2d_16/kernelBconv2d_17/biasBconv2d_17/kernelBconv2d_18/biasBconv2d_18/kernelBconv2d_19/biasBconv2d_19/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_20/biasBconv2d_20/kernelBconv2d_21/biasBconv2d_21/kernelBconv2d_22/biasBconv2d_22/kernelBconv2d_23/biasBconv2d_23/kernelBconv2d_24/biasBconv2d_24/kernelBconv2d_25/biasBconv2d_25/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_4/biasBconv2d_4/kernelBconv2d_5/biasBconv2d_5/kernelBconv2d_6/biasBconv2d_6/kernelBconv2d_7/biasBconv2d_7/kernelBconv2d_8/biasBconv2d_8/kernelBconv2d_9/biasBconv2d_9/kernelBconv2d_transpose/biasBconv2d_transpose/kernelBconv2d_transpose_1/biasBconv2d_transpose_1/kernelBconv2d_transpose_2/biasBconv2d_transpose_2/kernelBconv2d_transpose_3/biasBconv2d_transpose_3/kernelBglobal_step
â
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:u*
dtype0*ÿ
valueõBòuB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
ç
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*ê
_output_shapes×
Ô:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
dtypesy
w2u	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
a
save/AssignVariableOpAssignVariableOpbatch_normalization/betasave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
d
save/AssignVariableOp_1AssignVariableOpbatch_normalization/gammasave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
j
save/AssignVariableOp_2AssignVariableOpbatch_normalization/moving_meansave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
n
save/AssignVariableOp_3AssignVariableOp#batch_normalization/moving_variancesave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
e
save/AssignVariableOp_4AssignVariableOpbatch_normalization_1/betasave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
f
save/AssignVariableOp_5AssignVariableOpbatch_normalization_1/gammasave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
l
save/AssignVariableOp_6AssignVariableOp!batch_normalization_1/moving_meansave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
p
save/AssignVariableOp_7AssignVariableOp%batch_normalization_1/moving_variancesave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
f
save/AssignVariableOp_8AssignVariableOpbatch_normalization_10/betasave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
h
save/AssignVariableOp_9AssignVariableOpbatch_normalization_10/gammasave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
o
save/AssignVariableOp_10AssignVariableOp"batch_normalization_10/moving_meansave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
s
save/AssignVariableOp_11AssignVariableOp&batch_normalization_10/moving_variancesave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
h
save/AssignVariableOp_12AssignVariableOpbatch_normalization_11/betasave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
i
save/AssignVariableOp_13AssignVariableOpbatch_normalization_11/gammasave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
o
save/AssignVariableOp_14AssignVariableOp"batch_normalization_11/moving_meansave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
s
save/AssignVariableOp_15AssignVariableOp&batch_normalization_11/moving_variancesave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
h
save/AssignVariableOp_16AssignVariableOpbatch_normalization_12/betasave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
i
save/AssignVariableOp_17AssignVariableOpbatch_normalization_12/gammasave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
o
save/AssignVariableOp_18AssignVariableOp"batch_normalization_12/moving_meansave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
s
save/AssignVariableOp_19AssignVariableOp&batch_normalization_12/moving_variancesave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
h
save/AssignVariableOp_20AssignVariableOpbatch_normalization_13/betasave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
i
save/AssignVariableOp_21AssignVariableOpbatch_normalization_13/gammasave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
o
save/AssignVariableOp_22AssignVariableOp"batch_normalization_13/moving_meansave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
s
save/AssignVariableOp_23AssignVariableOp&batch_normalization_13/moving_variancesave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
g
save/AssignVariableOp_24AssignVariableOpbatch_normalization_2/betasave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
h
save/AssignVariableOp_25AssignVariableOpbatch_normalization_2/gammasave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
n
save/AssignVariableOp_26AssignVariableOp!batch_normalization_2/moving_meansave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
r
save/AssignVariableOp_27AssignVariableOp%batch_normalization_2/moving_variancesave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
g
save/AssignVariableOp_28AssignVariableOpbatch_normalization_3/betasave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
h
save/AssignVariableOp_29AssignVariableOpbatch_normalization_3/gammasave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
n
save/AssignVariableOp_30AssignVariableOp!batch_normalization_3/moving_meansave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
r
save/AssignVariableOp_31AssignVariableOp%batch_normalization_3/moving_variancesave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
g
save/AssignVariableOp_32AssignVariableOpbatch_normalization_4/betasave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
h
save/AssignVariableOp_33AssignVariableOpbatch_normalization_4/gammasave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
n
save/AssignVariableOp_34AssignVariableOp!batch_normalization_4/moving_meansave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
r
save/AssignVariableOp_35AssignVariableOp%batch_normalization_4/moving_variancesave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
g
save/AssignVariableOp_36AssignVariableOpbatch_normalization_5/betasave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:
h
save/AssignVariableOp_37AssignVariableOpbatch_normalization_5/gammasave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
n
save/AssignVariableOp_38AssignVariableOp!batch_normalization_5/moving_meansave/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:39*
T0*
_output_shapes
:
r
save/AssignVariableOp_39AssignVariableOp%batch_normalization_5/moving_variancesave/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
T0*
_output_shapes
:
g
save/AssignVariableOp_40AssignVariableOpbatch_normalization_6/betasave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:41*
T0*
_output_shapes
:
h
save/AssignVariableOp_41AssignVariableOpbatch_normalization_6/gammasave/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:42*
T0*
_output_shapes
:
n
save/AssignVariableOp_42AssignVariableOp!batch_normalization_6/moving_meansave/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:43*
T0*
_output_shapes
:
r
save/AssignVariableOp_43AssignVariableOp%batch_normalization_6/moving_variancesave/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:44*
T0*
_output_shapes
:
g
save/AssignVariableOp_44AssignVariableOpbatch_normalization_7/betasave/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:45*
T0*
_output_shapes
:
h
save/AssignVariableOp_45AssignVariableOpbatch_normalization_7/gammasave/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:46*
T0*
_output_shapes
:
n
save/AssignVariableOp_46AssignVariableOp!batch_normalization_7/moving_meansave/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:47*
T0*
_output_shapes
:
r
save/AssignVariableOp_47AssignVariableOp%batch_normalization_7/moving_variancesave/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:48*
T0*
_output_shapes
:
g
save/AssignVariableOp_48AssignVariableOpbatch_normalization_8/betasave/Identity_49*
dtype0
R
save/Identity_50Identitysave/RestoreV2:49*
T0*
_output_shapes
:
h
save/AssignVariableOp_49AssignVariableOpbatch_normalization_8/gammasave/Identity_50*
dtype0
R
save/Identity_51Identitysave/RestoreV2:50*
T0*
_output_shapes
:
n
save/AssignVariableOp_50AssignVariableOp!batch_normalization_8/moving_meansave/Identity_51*
dtype0
R
save/Identity_52Identitysave/RestoreV2:51*
T0*
_output_shapes
:
r
save/AssignVariableOp_51AssignVariableOp%batch_normalization_8/moving_variancesave/Identity_52*
dtype0
R
save/Identity_53Identitysave/RestoreV2:52*
T0*
_output_shapes
:
g
save/AssignVariableOp_52AssignVariableOpbatch_normalization_9/betasave/Identity_53*
dtype0
R
save/Identity_54Identitysave/RestoreV2:53*
T0*
_output_shapes
:
h
save/AssignVariableOp_53AssignVariableOpbatch_normalization_9/gammasave/Identity_54*
dtype0
R
save/Identity_55Identitysave/RestoreV2:54*
T0*
_output_shapes
:
n
save/AssignVariableOp_54AssignVariableOp!batch_normalization_9/moving_meansave/Identity_55*
dtype0
R
save/Identity_56Identitysave/RestoreV2:55*
T0*
_output_shapes
:
r
save/AssignVariableOp_55AssignVariableOp%batch_normalization_9/moving_variancesave/Identity_56*
dtype0
R
save/Identity_57Identitysave/RestoreV2:56*
T0*
_output_shapes
:
X
save/AssignVariableOp_56AssignVariableOpconv2d/biassave/Identity_57*
dtype0
R
save/Identity_58Identitysave/RestoreV2:57*
T0*
_output_shapes
:
Z
save/AssignVariableOp_57AssignVariableOpconv2d/kernelsave/Identity_58*
dtype0
R
save/Identity_59Identitysave/RestoreV2:58*
T0*
_output_shapes
:
Z
save/AssignVariableOp_58AssignVariableOpconv2d_1/biassave/Identity_59*
dtype0
R
save/Identity_60Identitysave/RestoreV2:59*
T0*
_output_shapes
:
\
save/AssignVariableOp_59AssignVariableOpconv2d_1/kernelsave/Identity_60*
dtype0
R
save/Identity_61Identitysave/RestoreV2:60*
T0*
_output_shapes
:
[
save/AssignVariableOp_60AssignVariableOpconv2d_10/biassave/Identity_61*
dtype0
R
save/Identity_62Identitysave/RestoreV2:61*
T0*
_output_shapes
:
]
save/AssignVariableOp_61AssignVariableOpconv2d_10/kernelsave/Identity_62*
dtype0
R
save/Identity_63Identitysave/RestoreV2:62*
T0*
_output_shapes
:
[
save/AssignVariableOp_62AssignVariableOpconv2d_11/biassave/Identity_63*
dtype0
R
save/Identity_64Identitysave/RestoreV2:63*
T0*
_output_shapes
:
]
save/AssignVariableOp_63AssignVariableOpconv2d_11/kernelsave/Identity_64*
dtype0
R
save/Identity_65Identitysave/RestoreV2:64*
T0*
_output_shapes
:
[
save/AssignVariableOp_64AssignVariableOpconv2d_12/biassave/Identity_65*
dtype0
R
save/Identity_66Identitysave/RestoreV2:65*
T0*
_output_shapes
:
]
save/AssignVariableOp_65AssignVariableOpconv2d_12/kernelsave/Identity_66*
dtype0
R
save/Identity_67Identitysave/RestoreV2:66*
T0*
_output_shapes
:
[
save/AssignVariableOp_66AssignVariableOpconv2d_13/biassave/Identity_67*
dtype0
R
save/Identity_68Identitysave/RestoreV2:67*
T0*
_output_shapes
:
]
save/AssignVariableOp_67AssignVariableOpconv2d_13/kernelsave/Identity_68*
dtype0
R
save/Identity_69Identitysave/RestoreV2:68*
T0*
_output_shapes
:
[
save/AssignVariableOp_68AssignVariableOpconv2d_14/biassave/Identity_69*
dtype0
R
save/Identity_70Identitysave/RestoreV2:69*
T0*
_output_shapes
:
]
save/AssignVariableOp_69AssignVariableOpconv2d_14/kernelsave/Identity_70*
dtype0
R
save/Identity_71Identitysave/RestoreV2:70*
T0*
_output_shapes
:
[
save/AssignVariableOp_70AssignVariableOpconv2d_15/biassave/Identity_71*
dtype0
R
save/Identity_72Identitysave/RestoreV2:71*
T0*
_output_shapes
:
]
save/AssignVariableOp_71AssignVariableOpconv2d_15/kernelsave/Identity_72*
dtype0
R
save/Identity_73Identitysave/RestoreV2:72*
T0*
_output_shapes
:
[
save/AssignVariableOp_72AssignVariableOpconv2d_16/biassave/Identity_73*
dtype0
R
save/Identity_74Identitysave/RestoreV2:73*
T0*
_output_shapes
:
]
save/AssignVariableOp_73AssignVariableOpconv2d_16/kernelsave/Identity_74*
dtype0
R
save/Identity_75Identitysave/RestoreV2:74*
T0*
_output_shapes
:
[
save/AssignVariableOp_74AssignVariableOpconv2d_17/biassave/Identity_75*
dtype0
R
save/Identity_76Identitysave/RestoreV2:75*
T0*
_output_shapes
:
]
save/AssignVariableOp_75AssignVariableOpconv2d_17/kernelsave/Identity_76*
dtype0
R
save/Identity_77Identitysave/RestoreV2:76*
T0*
_output_shapes
:
[
save/AssignVariableOp_76AssignVariableOpconv2d_18/biassave/Identity_77*
dtype0
R
save/Identity_78Identitysave/RestoreV2:77*
T0*
_output_shapes
:
]
save/AssignVariableOp_77AssignVariableOpconv2d_18/kernelsave/Identity_78*
dtype0
R
save/Identity_79Identitysave/RestoreV2:78*
T0*
_output_shapes
:
[
save/AssignVariableOp_78AssignVariableOpconv2d_19/biassave/Identity_79*
dtype0
R
save/Identity_80Identitysave/RestoreV2:79*
T0*
_output_shapes
:
]
save/AssignVariableOp_79AssignVariableOpconv2d_19/kernelsave/Identity_80*
dtype0
R
save/Identity_81Identitysave/RestoreV2:80*
T0*
_output_shapes
:
Z
save/AssignVariableOp_80AssignVariableOpconv2d_2/biassave/Identity_81*
dtype0
R
save/Identity_82Identitysave/RestoreV2:81*
T0*
_output_shapes
:
\
save/AssignVariableOp_81AssignVariableOpconv2d_2/kernelsave/Identity_82*
dtype0
R
save/Identity_83Identitysave/RestoreV2:82*
T0*
_output_shapes
:
[
save/AssignVariableOp_82AssignVariableOpconv2d_20/biassave/Identity_83*
dtype0
R
save/Identity_84Identitysave/RestoreV2:83*
T0*
_output_shapes
:
]
save/AssignVariableOp_83AssignVariableOpconv2d_20/kernelsave/Identity_84*
dtype0
R
save/Identity_85Identitysave/RestoreV2:84*
T0*
_output_shapes
:
[
save/AssignVariableOp_84AssignVariableOpconv2d_21/biassave/Identity_85*
dtype0
R
save/Identity_86Identitysave/RestoreV2:85*
T0*
_output_shapes
:
]
save/AssignVariableOp_85AssignVariableOpconv2d_21/kernelsave/Identity_86*
dtype0
R
save/Identity_87Identitysave/RestoreV2:86*
T0*
_output_shapes
:
[
save/AssignVariableOp_86AssignVariableOpconv2d_22/biassave/Identity_87*
dtype0
R
save/Identity_88Identitysave/RestoreV2:87*
T0*
_output_shapes
:
]
save/AssignVariableOp_87AssignVariableOpconv2d_22/kernelsave/Identity_88*
dtype0
R
save/Identity_89Identitysave/RestoreV2:88*
T0*
_output_shapes
:
[
save/AssignVariableOp_88AssignVariableOpconv2d_23/biassave/Identity_89*
dtype0
R
save/Identity_90Identitysave/RestoreV2:89*
T0*
_output_shapes
:
]
save/AssignVariableOp_89AssignVariableOpconv2d_23/kernelsave/Identity_90*
dtype0
R
save/Identity_91Identitysave/RestoreV2:90*
T0*
_output_shapes
:
[
save/AssignVariableOp_90AssignVariableOpconv2d_24/biassave/Identity_91*
dtype0
R
save/Identity_92Identitysave/RestoreV2:91*
T0*
_output_shapes
:
]
save/AssignVariableOp_91AssignVariableOpconv2d_24/kernelsave/Identity_92*
dtype0
R
save/Identity_93Identitysave/RestoreV2:92*
T0*
_output_shapes
:
[
save/AssignVariableOp_92AssignVariableOpconv2d_25/biassave/Identity_93*
dtype0
R
save/Identity_94Identitysave/RestoreV2:93*
T0*
_output_shapes
:
]
save/AssignVariableOp_93AssignVariableOpconv2d_25/kernelsave/Identity_94*
dtype0
R
save/Identity_95Identitysave/RestoreV2:94*
T0*
_output_shapes
:
Z
save/AssignVariableOp_94AssignVariableOpconv2d_3/biassave/Identity_95*
dtype0
R
save/Identity_96Identitysave/RestoreV2:95*
T0*
_output_shapes
:
\
save/AssignVariableOp_95AssignVariableOpconv2d_3/kernelsave/Identity_96*
dtype0
R
save/Identity_97Identitysave/RestoreV2:96*
T0*
_output_shapes
:
Z
save/AssignVariableOp_96AssignVariableOpconv2d_4/biassave/Identity_97*
dtype0
R
save/Identity_98Identitysave/RestoreV2:97*
T0*
_output_shapes
:
\
save/AssignVariableOp_97AssignVariableOpconv2d_4/kernelsave/Identity_98*
dtype0
R
save/Identity_99Identitysave/RestoreV2:98*
T0*
_output_shapes
:
Z
save/AssignVariableOp_98AssignVariableOpconv2d_5/biassave/Identity_99*
dtype0
S
save/Identity_100Identitysave/RestoreV2:99*
T0*
_output_shapes
:
]
save/AssignVariableOp_99AssignVariableOpconv2d_5/kernelsave/Identity_100*
dtype0
T
save/Identity_101Identitysave/RestoreV2:100*
T0*
_output_shapes
:
\
save/AssignVariableOp_100AssignVariableOpconv2d_6/biassave/Identity_101*
dtype0
T
save/Identity_102Identitysave/RestoreV2:101*
T0*
_output_shapes
:
^
save/AssignVariableOp_101AssignVariableOpconv2d_6/kernelsave/Identity_102*
dtype0
T
save/Identity_103Identitysave/RestoreV2:102*
T0*
_output_shapes
:
\
save/AssignVariableOp_102AssignVariableOpconv2d_7/biassave/Identity_103*
dtype0
T
save/Identity_104Identitysave/RestoreV2:103*
T0*
_output_shapes
:
^
save/AssignVariableOp_103AssignVariableOpconv2d_7/kernelsave/Identity_104*
dtype0
T
save/Identity_105Identitysave/RestoreV2:104*
T0*
_output_shapes
:
\
save/AssignVariableOp_104AssignVariableOpconv2d_8/biassave/Identity_105*
dtype0
T
save/Identity_106Identitysave/RestoreV2:105*
T0*
_output_shapes
:
^
save/AssignVariableOp_105AssignVariableOpconv2d_8/kernelsave/Identity_106*
dtype0
T
save/Identity_107Identitysave/RestoreV2:106*
T0*
_output_shapes
:
\
save/AssignVariableOp_106AssignVariableOpconv2d_9/biassave/Identity_107*
dtype0
T
save/Identity_108Identitysave/RestoreV2:107*
T0*
_output_shapes
:
^
save/AssignVariableOp_107AssignVariableOpconv2d_9/kernelsave/Identity_108*
dtype0
T
save/Identity_109Identitysave/RestoreV2:108*
T0*
_output_shapes
:
d
save/AssignVariableOp_108AssignVariableOpconv2d_transpose/biassave/Identity_109*
dtype0
T
save/Identity_110Identitysave/RestoreV2:109*
T0*
_output_shapes
:
f
save/AssignVariableOp_109AssignVariableOpconv2d_transpose/kernelsave/Identity_110*
dtype0
T
save/Identity_111Identitysave/RestoreV2:110*
T0*
_output_shapes
:
f
save/AssignVariableOp_110AssignVariableOpconv2d_transpose_1/biassave/Identity_111*
dtype0
T
save/Identity_112Identitysave/RestoreV2:111*
T0*
_output_shapes
:
h
save/AssignVariableOp_111AssignVariableOpconv2d_transpose_1/kernelsave/Identity_112*
dtype0
T
save/Identity_113Identitysave/RestoreV2:112*
T0*
_output_shapes
:
f
save/AssignVariableOp_112AssignVariableOpconv2d_transpose_2/biassave/Identity_113*
dtype0
T
save/Identity_114Identitysave/RestoreV2:113*
T0*
_output_shapes
:
h
save/AssignVariableOp_113AssignVariableOpconv2d_transpose_2/kernelsave/Identity_114*
dtype0
T
save/Identity_115Identitysave/RestoreV2:114*
T0*
_output_shapes
:
f
save/AssignVariableOp_114AssignVariableOpconv2d_transpose_3/biassave/Identity_115*
dtype0
T
save/Identity_116Identitysave/RestoreV2:115*
T0*
_output_shapes
:
h
save/AssignVariableOp_115AssignVariableOpconv2d_transpose_3/kernelsave/Identity_116*
dtype0
T
save/Identity_117Identitysave/RestoreV2:116*
T0	*
_output_shapes
:
Z
save/AssignVariableOp_116AssignVariableOpglobal_stepsave/Identity_117*
dtype0	
ö
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_100^save/AssignVariableOp_101^save/AssignVariableOp_102^save/AssignVariableOp_103^save/AssignVariableOp_104^save/AssignVariableOp_105^save/AssignVariableOp_106^save/AssignVariableOp_107^save/AssignVariableOp_108^save/AssignVariableOp_109^save/AssignVariableOp_11^save/AssignVariableOp_110^save/AssignVariableOp_111^save/AssignVariableOp_112^save/AssignVariableOp_113^save/AssignVariableOp_114^save/AssignVariableOp_115^save/AssignVariableOp_116^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_6^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_7^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_77^save/AssignVariableOp_78^save/AssignVariableOp_79^save/AssignVariableOp_8^save/AssignVariableOp_80^save/AssignVariableOp_81^save/AssignVariableOp_82^save/AssignVariableOp_83^save/AssignVariableOp_84^save/AssignVariableOp_85^save/AssignVariableOp_86^save/AssignVariableOp_87^save/AssignVariableOp_88^save/AssignVariableOp_89^save/AssignVariableOp_9^save/AssignVariableOp_90^save/AssignVariableOp_91^save/AssignVariableOp_92^save/AssignVariableOp_93^save/AssignVariableOp_94^save/AssignVariableOp_95^save/AssignVariableOp_96^save/AssignVariableOp_97^save/AssignVariableOp_98^save/AssignVariableOp_99
-
save/restore_allNoOp^save/restore_shardêþ
´
1
$batch_normalization_cond_1_false_133	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 
·
4
'batch_normalization_10_cond_1_true_1595	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
é
æ
#batch_normalization_3_cond_true_4908
*readvariableop_batch_normalization_3_gamma:9
+readvariableop_1_batch_normalization_3_beta:O
Afusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean:U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance:,
(fusedbatchnormv3_leaky_re_lu_7_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_3_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_3_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ò
FusedBatchNormV3FusedBatchNormV3(fusedbatchnormv3_leaky_re_lu_7_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
µ
2
%batch_normalization_1_cond_1_true_274	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
é
æ
#batch_normalization_1_cond_true_2068
*readvariableop_batch_normalization_1_gamma:9
+readvariableop_1_batch_normalization_1_beta:O
Afusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean:U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance:,
(fusedbatchnormv3_leaky_re_lu_3_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_1_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_1_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ò
FusedBatchNormV3FusedBatchNormV3(fusedbatchnormv3_leaky_re_lu_3_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
µ
2
%batch_normalization_5_cond_1_true_842	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
³
0
#batch_normalization_cond_1_true_132	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
÷
ç
$batch_normalization_4_cond_false_6338
*readvariableop_batch_normalization_4_gamma:09
+readvariableop_1_batch_normalization_4_beta:0O
Afusedbatchnormv3_readvariableop_batch_normalization_4_moving_mean:0U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_4_moving_variance:0,
(fusedbatchnormv3_leaky_re_lu_9_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_4_gamma*
_output_shapes
:0*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_4_beta*
_output_shapes
:0*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_4_moving_mean*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_4_moving_variance*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ã
FusedBatchNormV3FusedBatchNormV3(fusedbatchnormv3_leaky_re_lu_9_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*B
_output_shapes0
.:@@0:0:0:0:0:*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*-
_input_shapes
: : : : :@@0:,(
&
_output_shapes
:@@0
ý
ç
$batch_normalization_2_cond_false_3498
*readvariableop_batch_normalization_2_gamma:9
+readvariableop_1_batch_normalization_2_beta:O
Afusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean:U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance:,
(fusedbatchnormv3_leaky_re_lu_5_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_2_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_2_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1å
FusedBatchNormV3FusedBatchNormV3(fusedbatchnormv3_leaky_re_lu_5_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
ê
Ü
!batch_normalization_cond_false_656
(readvariableop_batch_normalization_gamma:7
)readvariableop_1_batch_normalization_beta:M
?fusedbatchnormv3_readvariableop_batch_normalization_moving_mean:S
Efusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance:,
(fusedbatchnormv3_leaky_re_lu_1_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp(readvariableop_batch_normalization_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp)readvariableop_1_batch_normalization_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1¾
FusedBatchNormV3/ReadVariableOpReadVariableOp?fusedbatchnormv3_readvariableop_batch_normalization_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpÈ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpEfusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1å
FusedBatchNormV3FusedBatchNormV3(fusedbatchnormv3_leaky_re_lu_1_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
õ
í
%batch_normalization_11_cond_true_16719
+readvariableop_batch_normalization_11_gamma::
,readvariableop_1_batch_normalization_11_beta:P
Bfusedbatchnormv3_readvariableop_batch_normalization_11_moving_mean:V
Hfusedbatchnormv3_readvariableop_1_batch_normalization_11_moving_variance:-
)fusedbatchnormv3_leaky_re_lu_23_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp+readvariableop_batch_normalization_11_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp,readvariableop_1_batch_normalization_11_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1Á
FusedBatchNormV3/ReadVariableOpReadVariableOpBfusedbatchnormv3_readvariableop_batch_normalization_11_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpË
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHfusedbatchnormv3_readvariableop_1_batch_normalization_11_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ó
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_23_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:

ì
$batch_normalization_5_cond_false_7759
*readvariableop_batch_normalization_5_gamma:	À:
+readvariableop_1_batch_normalization_5_beta:	ÀP
Afusedbatchnormv3_readvariableop_batch_normalization_5_moving_mean:	ÀV
Gfusedbatchnormv3_readvariableop_1_batch_normalization_5_moving_variance:	À-
)fusedbatchnormv3_leaky_re_lu_11_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_5_gamma*
_output_shapes	
:À*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_5_beta*
_output_shapes	
:À*
dtype02
ReadVariableOp_1Á
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_5_moving_mean*
_output_shapes	
:À*
dtype02!
FusedBatchNormV3/ReadVariableOpË
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_5_moving_variance*
_output_shapes	
:À*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1é
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_11_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*G
_output_shapes5
3:  À:À:À:À:À:*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*.
_input_shapes
: : : : :  À:-)
'
_output_shapes
:  À
ã
æ
#batch_normalization_4_cond_true_6328
*readvariableop_batch_normalization_4_gamma:09
+readvariableop_1_batch_normalization_4_beta:0O
Afusedbatchnormv3_readvariableop_batch_normalization_4_moving_mean:0U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_4_moving_variance:0,
(fusedbatchnormv3_leaky_re_lu_9_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_4_gamma*
_output_shapes
:0*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_4_beta*
_output_shapes
:0*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_4_moving_mean*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_4_moving_variance*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ð
FusedBatchNormV3FusedBatchNormV3(fusedbatchnormv3_leaky_re_lu_9_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*B
_output_shapes0
.:@@0:0:0:0:0:*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*-
_input_shapes
: : : : :@@0:,(
&
_output_shapes
:@@0
¶
3
&batch_normalization_4_cond_1_false_701	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 

î
&batch_normalization_10_cond_false_15289
+readvariableop_batch_normalization_10_gamma::
,readvariableop_1_batch_normalization_10_beta:P
Bfusedbatchnormv3_readvariableop_batch_normalization_10_moving_mean:V
Hfusedbatchnormv3_readvariableop_1_batch_normalization_10_moving_variance:-
)fusedbatchnormv3_leaky_re_lu_21_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp+readvariableop_batch_normalization_10_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp,readvariableop_1_batch_normalization_10_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1Á
FusedBatchNormV3/ReadVariableOpReadVariableOpBfusedbatchnormv3_readvariableop_batch_normalization_10_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpË
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHfusedbatchnormv3_readvariableop_1_batch_normalization_10_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1æ
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_21_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
·
4
'batch_normalization_12_cond_1_true_1894	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
õ
í
%batch_normalization_10_cond_true_15279
+readvariableop_batch_normalization_10_gamma::
,readvariableop_1_batch_normalization_10_beta:P
Bfusedbatchnormv3_readvariableop_batch_normalization_10_moving_mean:V
Hfusedbatchnormv3_readvariableop_1_batch_normalization_10_moving_variance:-
)fusedbatchnormv3_leaky_re_lu_21_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp+readvariableop_batch_normalization_10_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp,readvariableop_1_batch_normalization_10_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1Á
FusedBatchNormV3/ReadVariableOpReadVariableOpBfusedbatchnormv3_readvariableop_batch_normalization_10_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpË
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHfusedbatchnormv3_readvariableop_1_batch_normalization_10_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ó
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_21_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
ý
ç
$batch_normalization_3_cond_false_4918
*readvariableop_batch_normalization_3_gamma:9
+readvariableop_1_batch_normalization_3_beta:O
Afusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean:U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance:,
(fusedbatchnormv3_leaky_re_lu_7_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_3_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_3_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_3_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_3_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1å
FusedBatchNormV3FusedBatchNormV3(fusedbatchnormv3_leaky_re_lu_7_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
·
4
'batch_normalization_11_cond_1_true_1739	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
µ
2
%batch_normalization_2_cond_1_true_416	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
µ
2
%batch_normalization_3_cond_1_true_558	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
¶
3
&batch_normalization_6_cond_1_false_998	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 
¸
5
(batch_normalization_12_cond_1_false_1895	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 
¶
3
&batch_normalization_2_cond_1_false_417	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 
¶
3
&batch_normalization_5_cond_1_false_843	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 

î
&batch_normalization_11_cond_false_16729
+readvariableop_batch_normalization_11_gamma::
,readvariableop_1_batch_normalization_11_beta:P
Bfusedbatchnormv3_readvariableop_batch_normalization_11_moving_mean:V
Hfusedbatchnormv3_readvariableop_1_batch_normalization_11_moving_variance:-
)fusedbatchnormv3_leaky_re_lu_23_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp+readvariableop_batch_normalization_11_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp,readvariableop_1_batch_normalization_11_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1Á
FusedBatchNormV3/ReadVariableOpReadVariableOpBfusedbatchnormv3_readvariableop_batch_normalization_11_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpË
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHfusedbatchnormv3_readvariableop_1_batch_normalization_11_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1æ
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_23_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:

é
%batch_normalization_9_cond_false_13738
*readvariableop_batch_normalization_9_gamma:09
+readvariableop_1_batch_normalization_9_beta:0O
Afusedbatchnormv3_readvariableop_batch_normalization_9_moving_mean:0U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_9_moving_variance:0-
)fusedbatchnormv3_leaky_re_lu_19_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_9_gamma*
_output_shapes
:0*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_9_beta*
_output_shapes
:0*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_9_moving_mean*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_9_moving_variance*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1æ
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_19_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0:0:0:0:0:0:*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : :0:.*
(
_output_shapes
:0
¶
3
&batch_normalization_3_cond_1_false_559	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 
õ
í
%batch_normalization_13_cond_true_19709
+readvariableop_batch_normalization_13_gamma::
,readvariableop_1_batch_normalization_13_beta:P
Bfusedbatchnormv3_readvariableop_batch_normalization_13_moving_mean:V
Hfusedbatchnormv3_readvariableop_1_batch_normalization_13_moving_variance:-
)fusedbatchnormv3_leaky_re_lu_27_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp+readvariableop_batch_normalization_13_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp,readvariableop_1_batch_normalization_13_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1Á
FusedBatchNormV3/ReadVariableOpReadVariableOpBfusedbatchnormv3_readvariableop_batch_normalization_13_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpË
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHfusedbatchnormv3_readvariableop_1_batch_normalization_13_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ó
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_27_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
å
ç
#batch_normalization_6_cond_true_9298
*readvariableop_batch_normalization_6_gamma:`9
+readvariableop_1_batch_normalization_6_beta:`O
Afusedbatchnormv3_readvariableop_batch_normalization_6_moving_mean:`U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_6_moving_variance:`-
)fusedbatchnormv3_leaky_re_lu_13_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_6_gamma*
_output_shapes
:`*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_6_beta*
_output_shapes
:`*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_6_moving_mean*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_6_moving_variance*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ñ
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_13_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*B
_output_shapes0
.:@@`:`:`:`:`:*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*-
_input_shapes
: : : : :@@`:,(
&
_output_shapes
:@@`
ô
ë
#batch_normalization_5_cond_true_7749
*readvariableop_batch_normalization_5_gamma:	À:
+readvariableop_1_batch_normalization_5_beta:	ÀP
Afusedbatchnormv3_readvariableop_batch_normalization_5_moving_mean:	ÀV
Gfusedbatchnormv3_readvariableop_1_batch_normalization_5_moving_variance:	À-
)fusedbatchnormv3_leaky_re_lu_11_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_5_gamma*
_output_shapes	
:À*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_5_beta*
_output_shapes	
:À*
dtype02
ReadVariableOp_1Á
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_5_moving_mean*
_output_shapes	
:À*
dtype02!
FusedBatchNormV3/ReadVariableOpË
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_5_moving_variance*
_output_shapes	
:À*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ö
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_11_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*G
_output_shapes5
3:  À:À:À:À:À:*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*.
_input_shapes
: : : : :  À:-)
'
_output_shapes
:  À
¸
5
(batch_normalization_10_cond_1_false_1596	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 
ù
è
$batch_normalization_6_cond_false_9308
*readvariableop_batch_normalization_6_gamma:`9
+readvariableop_1_batch_normalization_6_beta:`O
Afusedbatchnormv3_readvariableop_batch_normalization_6_moving_mean:`U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_6_moving_variance:`-
)fusedbatchnormv3_leaky_re_lu_13_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_6_gamma*
_output_shapes
:`*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_6_beta*
_output_shapes
:`*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_6_moving_mean*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_6_moving_variance*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ä
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_13_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*B
_output_shapes0
.:@@`:`:`:`:`:*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*-
_input_shapes
: : : : :@@`:,(
&
_output_shapes
:@@`
¸
5
(batch_normalization_13_cond_1_false_2039	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 
¶
3
&batch_normalization_7_cond_1_true_1141	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
ì
è
$batch_normalization_9_cond_true_13728
*readvariableop_batch_normalization_9_gamma:09
+readvariableop_1_batch_normalization_9_beta:0O
Afusedbatchnormv3_readvariableop_batch_normalization_9_moving_mean:0U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_9_moving_variance:0-
)fusedbatchnormv3_leaky_re_lu_19_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_9_gamma*
_output_shapes
:0*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_9_beta*
_output_shapes
:0*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_9_moving_mean*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_9_moving_variance*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ó
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_19_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0:0:0:0:0:0:*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : :0:.*
(
_output_shapes
:0
·
4
'batch_normalization_7_cond_1_false_1142	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 

î
&batch_normalization_12_cond_false_18279
+readvariableop_batch_normalization_12_gamma::
,readvariableop_1_batch_normalization_12_beta:P
Bfusedbatchnormv3_readvariableop_batch_normalization_12_moving_mean:V
Hfusedbatchnormv3_readvariableop_1_batch_normalization_12_moving_variance:-
)fusedbatchnormv3_leaky_re_lu_25_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp+readvariableop_batch_normalization_12_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp,readvariableop_1_batch_normalization_12_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1Á
FusedBatchNormV3/ReadVariableOpReadVariableOpBfusedbatchnormv3_readvariableop_batch_normalization_12_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpË
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHfusedbatchnormv3_readvariableop_1_batch_normalization_12_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1æ
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_25_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
é
æ
#batch_normalization_2_cond_true_3488
*readvariableop_batch_normalization_2_gamma:9
+readvariableop_1_batch_normalization_2_beta:O
Afusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean:U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance:,
(fusedbatchnormv3_leaky_re_lu_5_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_2_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_2_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_2_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_2_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ò
FusedBatchNormV3FusedBatchNormV3(fusedbatchnormv3_leaky_re_lu_5_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
Ö
Û
 batch_normalization_cond_true_646
(readvariableop_batch_normalization_gamma:7
)readvariableop_1_batch_normalization_beta:M
?fusedbatchnormv3_readvariableop_batch_normalization_moving_mean:S
Efusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance:,
(fusedbatchnormv3_leaky_re_lu_1_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp(readvariableop_batch_normalization_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp)readvariableop_1_batch_normalization_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1¾
FusedBatchNormV3/ReadVariableOpReadVariableOp?fusedbatchnormv3_readvariableop_batch_normalization_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpÈ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpEfusedbatchnormv3_readvariableop_1_batch_normalization_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ò
FusedBatchNormV3FusedBatchNormV3(fusedbatchnormv3_leaky_re_lu_1_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
·
4
'batch_normalization_9_cond_1_false_1441	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 
¶
3
&batch_normalization_1_cond_1_false_275	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 
¶
3
&batch_normalization_8_cond_1_true_1296	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
ì
è
$batch_normalization_8_cond_true_12288
*readvariableop_batch_normalization_8_gamma:09
+readvariableop_1_batch_normalization_8_beta:0O
Afusedbatchnormv3_readvariableop_batch_normalization_8_moving_mean:0U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_8_moving_variance:0-
)fusedbatchnormv3_leaky_re_lu_17_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_8_gamma*
_output_shapes
:0*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_8_beta*
_output_shapes
:0*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_8_moving_mean*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_8_moving_variance*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ó
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_17_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0:0:0:0:0:0:*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : :0:.*
(
_output_shapes
:0
¶
3
&batch_normalization_9_cond_1_true_1440	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
·
4
'batch_normalization_8_cond_1_false_1297	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 
µ
2
%batch_normalization_4_cond_1_true_700	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
æ
è
$batch_normalization_7_cond_true_10738
*readvariableop_batch_normalization_7_gamma:`9
+readvariableop_1_batch_normalization_7_beta:`O
Afusedbatchnormv3_readvariableop_batch_normalization_7_moving_mean:`U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_7_moving_variance:`-
)fusedbatchnormv3_leaky_re_lu_15_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_7_gamma*
_output_shapes
:`*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_7_beta*
_output_shapes
:`*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_7_moving_mean*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_7_moving_variance*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ñ
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_15_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*B
_output_shapes0
.:@@`:`:`:`:`:*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*-
_input_shapes
: : : : :@@`:,(
&
_output_shapes
:@@`
µ
2
%batch_normalization_6_cond_1_true_997	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes 
¸
5
(batch_normalization_11_cond_1_false_1740	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Const"
constConst:output:0*
_input_shapes 

î
&batch_normalization_13_cond_false_19719
+readvariableop_batch_normalization_13_gamma::
,readvariableop_1_batch_normalization_13_beta:P
Bfusedbatchnormv3_readvariableop_batch_normalization_13_moving_mean:V
Hfusedbatchnormv3_readvariableop_1_batch_normalization_13_moving_variance:-
)fusedbatchnormv3_leaky_re_lu_27_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp+readvariableop_batch_normalization_13_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp,readvariableop_1_batch_normalization_13_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1Á
FusedBatchNormV3/ReadVariableOpReadVariableOpBfusedbatchnormv3_readvariableop_batch_normalization_13_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpË
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHfusedbatchnormv3_readvariableop_1_batch_normalization_13_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1æ
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_27_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
ú
é
%batch_normalization_7_cond_false_10748
*readvariableop_batch_normalization_7_gamma:`9
+readvariableop_1_batch_normalization_7_beta:`O
Afusedbatchnormv3_readvariableop_batch_normalization_7_moving_mean:`U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_7_moving_variance:`-
)fusedbatchnormv3_leaky_re_lu_15_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_7_gamma*
_output_shapes
:`*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_7_beta*
_output_shapes
:`*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_7_moving_mean*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_7_moving_variance*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ä
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_15_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*B
_output_shapes0
.:@@`:`:`:`:`:*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*-
_input_shapes
: : : : :@@`:,(
&
_output_shapes
:@@`

é
%batch_normalization_8_cond_false_12298
*readvariableop_batch_normalization_8_gamma:09
+readvariableop_1_batch_normalization_8_beta:0O
Afusedbatchnormv3_readvariableop_batch_normalization_8_moving_mean:0U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_8_moving_variance:0-
)fusedbatchnormv3_leaky_re_lu_17_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_8_gamma*
_output_shapes
:0*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_8_beta*
_output_shapes
:0*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_8_moving_mean*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_8_moving_variance*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1æ
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_17_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0:0:0:0:0:0:*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : :0:.*
(
_output_shapes
:0
õ
í
%batch_normalization_12_cond_true_18269
+readvariableop_batch_normalization_12_gamma::
,readvariableop_1_batch_normalization_12_beta:P
Bfusedbatchnormv3_readvariableop_batch_normalization_12_moving_mean:V
Hfusedbatchnormv3_readvariableop_1_batch_normalization_12_moving_variance:-
)fusedbatchnormv3_leaky_re_lu_25_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp+readvariableop_batch_normalization_12_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp,readvariableop_1_batch_normalization_12_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1Á
FusedBatchNormV3/ReadVariableOpReadVariableOpBfusedbatchnormv3_readvariableop_batch_normalization_12_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpË
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHfusedbatchnormv3_readvariableop_1_batch_normalization_12_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ó
FusedBatchNormV3FusedBatchNormV3)fusedbatchnormv3_leaky_re_lu_25_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
ý
ç
$batch_normalization_1_cond_false_2078
*readvariableop_batch_normalization_1_gamma:9
+readvariableop_1_batch_normalization_1_beta:O
Afusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean:U
Gfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance:,
(fusedbatchnormv3_leaky_re_lu_3_leakyrelu
fusedbatchnormv3
fusedbatchnormv3_0
fusedbatchnormv3_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6
ReadVariableOpReadVariableOp*readvariableop_batch_normalization_1_gamma*
_output_shapes
:*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOp+readvariableop_1_batch_normalization_1_beta*
_output_shapes
:*
dtype02
ReadVariableOp_1À
FusedBatchNormV3/ReadVariableOpReadVariableOpAfusedbatchnormv3_readvariableop_batch_normalization_1_moving_mean*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpÊ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGfusedbatchnormv3_readvariableop_1_batch_normalization_1_moving_variance*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1å
FusedBatchNormV3FusedBatchNormV3(fusedbatchnormv3_leaky_re_lu_3_leakyreluReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*D
_output_shapes2
0::::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
OptionalFromValueOptionalFromValueReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValueReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValue'FusedBatchNormV3/ReadVariableOp:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValue)FusedBatchNormV3/ReadVariableOp_1:value:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue"FusedBatchNormV3:reserve_space_1:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4
OptionalFromValue_5OptionalFromValue"FusedBatchNormV3:reserve_space_2:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_5
OptionalFromValue_6OptionalFromValue"FusedBatchNormV3:reserve_space_3:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_6"(
fusedbatchnormv3FusedBatchNormV3:y:0"3
fusedbatchnormv3_0FusedBatchNormV3:batch_mean:0"7
fusedbatchnormv3_1!FusedBatchNormV3:batch_variance:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*/
_input_shapes
: : : : ::.*
(
_output_shapes
:
·
4
'batch_normalization_13_cond_1_true_2038	
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¤p}?2
Const"
constConst:output:0*
_input_shapes "¨<
save/Const:0save/Identity:0save/restore_all (5 @F8"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"%
saved_model_main_op


group_deps"d
trainable_variablesdýc
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08

conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
¢
batch_normalization/gamma:0 batch_normalization/gamma/Assign/batch_normalization/gamma/Read/ReadVariableOp:0(2,batch_normalization/gamma/Initializer/ones:08

batch_normalization/beta:0batch_normalization/beta/Assign.batch_normalization/beta/Read/ReadVariableOp:0(2,batch_normalization/beta/Initializer/zeros:08

conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08

conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
ª
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign1batch_normalization_1/gamma/Read/ReadVariableOp:0(2.batch_normalization_1/gamma/Initializer/ones:08
§
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign0batch_normalization_1/beta/Read/ReadVariableOp:0(2.batch_normalization_1/beta/Initializer/zeros:08

conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08

conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
ª
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign1batch_normalization_2/gamma/Read/ReadVariableOp:0(2.batch_normalization_2/gamma/Initializer/ones:08
§
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign0batch_normalization_2/beta/Read/ReadVariableOp:0(2.batch_normalization_2/beta/Initializer/zeros:08

conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08

conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
ª
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign1batch_normalization_3/gamma/Read/ReadVariableOp:0(2.batch_normalization_3/gamma/Initializer/ones:08
§
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign0batch_normalization_3/beta/Read/ReadVariableOp:0(2.batch_normalization_3/beta/Initializer/zeros:08

conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08

conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2,conv2d_9/kernel/Initializer/random_uniform:08
s
conv2d_9/bias:0conv2d_9/bias/Assign#conv2d_9/bias/Read/ReadVariableOp:0(2!conv2d_9/bias/Initializer/zeros:08
ª
batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign1batch_normalization_4/gamma/Read/ReadVariableOp:0(2.batch_normalization_4/gamma/Initializer/ones:08
§
batch_normalization_4/beta:0!batch_normalization_4/beta/Assign0batch_normalization_4/beta/Read/ReadVariableOp:0(2.batch_normalization_4/beta/Initializer/zeros:08

conv2d_10/kernel:0conv2d_10/kernel/Assign&conv2d_10/kernel/Read/ReadVariableOp:0(2-conv2d_10/kernel/Initializer/random_uniform:08
w
conv2d_10/bias:0conv2d_10/bias/Assign$conv2d_10/bias/Read/ReadVariableOp:0(2"conv2d_10/bias/Initializer/zeros:08

conv2d_11/kernel:0conv2d_11/kernel/Assign&conv2d_11/kernel/Read/ReadVariableOp:0(2-conv2d_11/kernel/Initializer/random_uniform:08
w
conv2d_11/bias:0conv2d_11/bias/Assign$conv2d_11/bias/Read/ReadVariableOp:0(2"conv2d_11/bias/Initializer/zeros:08
ª
batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign1batch_normalization_5/gamma/Read/ReadVariableOp:0(2.batch_normalization_5/gamma/Initializer/ones:08
§
batch_normalization_5/beta:0!batch_normalization_5/beta/Assign0batch_normalization_5/beta/Read/ReadVariableOp:0(2.batch_normalization_5/beta/Initializer/zeros:08
¤
conv2d_transpose/kernel:0conv2d_transpose/kernel/Assign-conv2d_transpose/kernel/Read/ReadVariableOp:0(24conv2d_transpose/kernel/Initializer/random_uniform:08

conv2d_transpose/bias:0conv2d_transpose/bias/Assign+conv2d_transpose/bias/Read/ReadVariableOp:0(2)conv2d_transpose/bias/Initializer/zeros:08

conv2d_12/kernel:0conv2d_12/kernel/Assign&conv2d_12/kernel/Read/ReadVariableOp:0(2-conv2d_12/kernel/Initializer/random_uniform:08
w
conv2d_12/bias:0conv2d_12/bias/Assign$conv2d_12/bias/Read/ReadVariableOp:0(2"conv2d_12/bias/Initializer/zeros:08
ª
batch_normalization_6/gamma:0"batch_normalization_6/gamma/Assign1batch_normalization_6/gamma/Read/ReadVariableOp:0(2.batch_normalization_6/gamma/Initializer/ones:08
§
batch_normalization_6/beta:0!batch_normalization_6/beta/Assign0batch_normalization_6/beta/Read/ReadVariableOp:0(2.batch_normalization_6/beta/Initializer/zeros:08

conv2d_13/kernel:0conv2d_13/kernel/Assign&conv2d_13/kernel/Read/ReadVariableOp:0(2-conv2d_13/kernel/Initializer/random_uniform:08
w
conv2d_13/bias:0conv2d_13/bias/Assign$conv2d_13/bias/Read/ReadVariableOp:0(2"conv2d_13/bias/Initializer/zeros:08

conv2d_14/kernel:0conv2d_14/kernel/Assign&conv2d_14/kernel/Read/ReadVariableOp:0(2-conv2d_14/kernel/Initializer/random_uniform:08
w
conv2d_14/bias:0conv2d_14/bias/Assign$conv2d_14/bias/Read/ReadVariableOp:0(2"conv2d_14/bias/Initializer/zeros:08
ª
batch_normalization_7/gamma:0"batch_normalization_7/gamma/Assign1batch_normalization_7/gamma/Read/ReadVariableOp:0(2.batch_normalization_7/gamma/Initializer/ones:08
§
batch_normalization_7/beta:0!batch_normalization_7/beta/Assign0batch_normalization_7/beta/Read/ReadVariableOp:0(2.batch_normalization_7/beta/Initializer/zeros:08
¬
conv2d_transpose_1/kernel:0 conv2d_transpose_1/kernel/Assign/conv2d_transpose_1/kernel/Read/ReadVariableOp:0(26conv2d_transpose_1/kernel/Initializer/random_uniform:08

conv2d_transpose_1/bias:0conv2d_transpose_1/bias/Assign-conv2d_transpose_1/bias/Read/ReadVariableOp:0(2+conv2d_transpose_1/bias/Initializer/zeros:08

conv2d_15/kernel:0conv2d_15/kernel/Assign&conv2d_15/kernel/Read/ReadVariableOp:0(2-conv2d_15/kernel/Initializer/random_uniform:08
w
conv2d_15/bias:0conv2d_15/bias/Assign$conv2d_15/bias/Read/ReadVariableOp:0(2"conv2d_15/bias/Initializer/zeros:08
ª
batch_normalization_8/gamma:0"batch_normalization_8/gamma/Assign1batch_normalization_8/gamma/Read/ReadVariableOp:0(2.batch_normalization_8/gamma/Initializer/ones:08
§
batch_normalization_8/beta:0!batch_normalization_8/beta/Assign0batch_normalization_8/beta/Read/ReadVariableOp:0(2.batch_normalization_8/beta/Initializer/zeros:08

conv2d_16/kernel:0conv2d_16/kernel/Assign&conv2d_16/kernel/Read/ReadVariableOp:0(2-conv2d_16/kernel/Initializer/random_uniform:08
w
conv2d_16/bias:0conv2d_16/bias/Assign$conv2d_16/bias/Read/ReadVariableOp:0(2"conv2d_16/bias/Initializer/zeros:08

conv2d_17/kernel:0conv2d_17/kernel/Assign&conv2d_17/kernel/Read/ReadVariableOp:0(2-conv2d_17/kernel/Initializer/random_uniform:08
w
conv2d_17/bias:0conv2d_17/bias/Assign$conv2d_17/bias/Read/ReadVariableOp:0(2"conv2d_17/bias/Initializer/zeros:08
ª
batch_normalization_9/gamma:0"batch_normalization_9/gamma/Assign1batch_normalization_9/gamma/Read/ReadVariableOp:0(2.batch_normalization_9/gamma/Initializer/ones:08
§
batch_normalization_9/beta:0!batch_normalization_9/beta/Assign0batch_normalization_9/beta/Read/ReadVariableOp:0(2.batch_normalization_9/beta/Initializer/zeros:08
¬
conv2d_transpose_2/kernel:0 conv2d_transpose_2/kernel/Assign/conv2d_transpose_2/kernel/Read/ReadVariableOp:0(26conv2d_transpose_2/kernel/Initializer/random_uniform:08

conv2d_transpose_2/bias:0conv2d_transpose_2/bias/Assign-conv2d_transpose_2/bias/Read/ReadVariableOp:0(2+conv2d_transpose_2/bias/Initializer/zeros:08

conv2d_18/kernel:0conv2d_18/kernel/Assign&conv2d_18/kernel/Read/ReadVariableOp:0(2-conv2d_18/kernel/Initializer/random_uniform:08
w
conv2d_18/bias:0conv2d_18/bias/Assign$conv2d_18/bias/Read/ReadVariableOp:0(2"conv2d_18/bias/Initializer/zeros:08
®
batch_normalization_10/gamma:0#batch_normalization_10/gamma/Assign2batch_normalization_10/gamma/Read/ReadVariableOp:0(2/batch_normalization_10/gamma/Initializer/ones:08
«
batch_normalization_10/beta:0"batch_normalization_10/beta/Assign1batch_normalization_10/beta/Read/ReadVariableOp:0(2/batch_normalization_10/beta/Initializer/zeros:08

conv2d_19/kernel:0conv2d_19/kernel/Assign&conv2d_19/kernel/Read/ReadVariableOp:0(2-conv2d_19/kernel/Initializer/random_uniform:08
w
conv2d_19/bias:0conv2d_19/bias/Assign$conv2d_19/bias/Read/ReadVariableOp:0(2"conv2d_19/bias/Initializer/zeros:08

conv2d_20/kernel:0conv2d_20/kernel/Assign&conv2d_20/kernel/Read/ReadVariableOp:0(2-conv2d_20/kernel/Initializer/random_uniform:08
w
conv2d_20/bias:0conv2d_20/bias/Assign$conv2d_20/bias/Read/ReadVariableOp:0(2"conv2d_20/bias/Initializer/zeros:08
®
batch_normalization_11/gamma:0#batch_normalization_11/gamma/Assign2batch_normalization_11/gamma/Read/ReadVariableOp:0(2/batch_normalization_11/gamma/Initializer/ones:08
«
batch_normalization_11/beta:0"batch_normalization_11/beta/Assign1batch_normalization_11/beta/Read/ReadVariableOp:0(2/batch_normalization_11/beta/Initializer/zeros:08
¬
conv2d_transpose_3/kernel:0 conv2d_transpose_3/kernel/Assign/conv2d_transpose_3/kernel/Read/ReadVariableOp:0(26conv2d_transpose_3/kernel/Initializer/random_uniform:08

conv2d_transpose_3/bias:0conv2d_transpose_3/bias/Assign-conv2d_transpose_3/bias/Read/ReadVariableOp:0(2+conv2d_transpose_3/bias/Initializer/zeros:08

conv2d_21/kernel:0conv2d_21/kernel/Assign&conv2d_21/kernel/Read/ReadVariableOp:0(2-conv2d_21/kernel/Initializer/random_uniform:08
w
conv2d_21/bias:0conv2d_21/bias/Assign$conv2d_21/bias/Read/ReadVariableOp:0(2"conv2d_21/bias/Initializer/zeros:08
®
batch_normalization_12/gamma:0#batch_normalization_12/gamma/Assign2batch_normalization_12/gamma/Read/ReadVariableOp:0(2/batch_normalization_12/gamma/Initializer/ones:08
«
batch_normalization_12/beta:0"batch_normalization_12/beta/Assign1batch_normalization_12/beta/Read/ReadVariableOp:0(2/batch_normalization_12/beta/Initializer/zeros:08

conv2d_22/kernel:0conv2d_22/kernel/Assign&conv2d_22/kernel/Read/ReadVariableOp:0(2-conv2d_22/kernel/Initializer/random_uniform:08
w
conv2d_22/bias:0conv2d_22/bias/Assign$conv2d_22/bias/Read/ReadVariableOp:0(2"conv2d_22/bias/Initializer/zeros:08

conv2d_23/kernel:0conv2d_23/kernel/Assign&conv2d_23/kernel/Read/ReadVariableOp:0(2-conv2d_23/kernel/Initializer/random_uniform:08
w
conv2d_23/bias:0conv2d_23/bias/Assign$conv2d_23/bias/Read/ReadVariableOp:0(2"conv2d_23/bias/Initializer/zeros:08
®
batch_normalization_13/gamma:0#batch_normalization_13/gamma/Assign2batch_normalization_13/gamma/Read/ReadVariableOp:0(2/batch_normalization_13/gamma/Initializer/ones:08
«
batch_normalization_13/beta:0"batch_normalization_13/beta/Assign1batch_normalization_13/beta/Read/ReadVariableOp:0(2/batch_normalization_13/beta/Initializer/zeros:08

conv2d_24/kernel:0conv2d_24/kernel/Assign&conv2d_24/kernel/Read/ReadVariableOp:0(2-conv2d_24/kernel/Initializer/random_uniform:08
w
conv2d_24/bias:0conv2d_24/bias/Assign$conv2d_24/bias/Read/ReadVariableOp:0(2"conv2d_24/bias/Initializer/zeros:08

conv2d_25/kernel:0conv2d_25/kernel/Assign&conv2d_25/kernel/Read/ReadVariableOp:0(2-conv2d_25/kernel/Initializer/random_uniform:08
w
conv2d_25/bias:0conv2d_25/bias/Assign$conv2d_25/bias/Read/ReadVariableOp:0(2"conv2d_25/bias/Initializer/zeros:08"¿
	variables°¬
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08

conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
¢
batch_normalization/gamma:0 batch_normalization/gamma/Assign/batch_normalization/gamma/Read/ReadVariableOp:0(2,batch_normalization/gamma/Initializer/ones:08

batch_normalization/beta:0batch_normalization/beta/Assign.batch_normalization/beta/Read/ReadVariableOp:0(2,batch_normalization/beta/Initializer/zeros:08
½
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign5batch_normalization/moving_mean/Read/ReadVariableOp:0(23batch_normalization/moving_mean/Initializer/zeros:0@H
Ì
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign9batch_normalization/moving_variance/Read/ReadVariableOp:0(26batch_normalization/moving_variance/Initializer/ones:0@H

conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08

conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
ª
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign1batch_normalization_1/gamma/Read/ReadVariableOp:0(2.batch_normalization_1/gamma/Initializer/ones:08
§
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign0batch_normalization_1/beta/Read/ReadVariableOp:0(2.batch_normalization_1/beta/Initializer/zeros:08
Å
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign7batch_normalization_1/moving_mean/Read/ReadVariableOp:0(25batch_normalization_1/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign;batch_normalization_1/moving_variance/Read/ReadVariableOp:0(28batch_normalization_1/moving_variance/Initializer/ones:0@H

conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08

conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
ª
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign1batch_normalization_2/gamma/Read/ReadVariableOp:0(2.batch_normalization_2/gamma/Initializer/ones:08
§
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign0batch_normalization_2/beta/Read/ReadVariableOp:0(2.batch_normalization_2/beta/Initializer/zeros:08
Å
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign7batch_normalization_2/moving_mean/Read/ReadVariableOp:0(25batch_normalization_2/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign;batch_normalization_2/moving_variance/Read/ReadVariableOp:0(28batch_normalization_2/moving_variance/Initializer/ones:0@H

conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08

conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
ª
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign1batch_normalization_3/gamma/Read/ReadVariableOp:0(2.batch_normalization_3/gamma/Initializer/ones:08
§
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign0batch_normalization_3/beta/Read/ReadVariableOp:0(2.batch_normalization_3/beta/Initializer/zeros:08
Å
#batch_normalization_3/moving_mean:0(batch_normalization_3/moving_mean/Assign7batch_normalization_3/moving_mean/Read/ReadVariableOp:0(25batch_normalization_3/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_3/moving_variance:0,batch_normalization_3/moving_variance/Assign;batch_normalization_3/moving_variance/Read/ReadVariableOp:0(28batch_normalization_3/moving_variance/Initializer/ones:0@H

conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08

conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2,conv2d_9/kernel/Initializer/random_uniform:08
s
conv2d_9/bias:0conv2d_9/bias/Assign#conv2d_9/bias/Read/ReadVariableOp:0(2!conv2d_9/bias/Initializer/zeros:08
ª
batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign1batch_normalization_4/gamma/Read/ReadVariableOp:0(2.batch_normalization_4/gamma/Initializer/ones:08
§
batch_normalization_4/beta:0!batch_normalization_4/beta/Assign0batch_normalization_4/beta/Read/ReadVariableOp:0(2.batch_normalization_4/beta/Initializer/zeros:08
Å
#batch_normalization_4/moving_mean:0(batch_normalization_4/moving_mean/Assign7batch_normalization_4/moving_mean/Read/ReadVariableOp:0(25batch_normalization_4/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_4/moving_variance:0,batch_normalization_4/moving_variance/Assign;batch_normalization_4/moving_variance/Read/ReadVariableOp:0(28batch_normalization_4/moving_variance/Initializer/ones:0@H

conv2d_10/kernel:0conv2d_10/kernel/Assign&conv2d_10/kernel/Read/ReadVariableOp:0(2-conv2d_10/kernel/Initializer/random_uniform:08
w
conv2d_10/bias:0conv2d_10/bias/Assign$conv2d_10/bias/Read/ReadVariableOp:0(2"conv2d_10/bias/Initializer/zeros:08

conv2d_11/kernel:0conv2d_11/kernel/Assign&conv2d_11/kernel/Read/ReadVariableOp:0(2-conv2d_11/kernel/Initializer/random_uniform:08
w
conv2d_11/bias:0conv2d_11/bias/Assign$conv2d_11/bias/Read/ReadVariableOp:0(2"conv2d_11/bias/Initializer/zeros:08
ª
batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign1batch_normalization_5/gamma/Read/ReadVariableOp:0(2.batch_normalization_5/gamma/Initializer/ones:08
§
batch_normalization_5/beta:0!batch_normalization_5/beta/Assign0batch_normalization_5/beta/Read/ReadVariableOp:0(2.batch_normalization_5/beta/Initializer/zeros:08
Å
#batch_normalization_5/moving_mean:0(batch_normalization_5/moving_mean/Assign7batch_normalization_5/moving_mean/Read/ReadVariableOp:0(25batch_normalization_5/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_5/moving_variance:0,batch_normalization_5/moving_variance/Assign;batch_normalization_5/moving_variance/Read/ReadVariableOp:0(28batch_normalization_5/moving_variance/Initializer/ones:0@H
¤
conv2d_transpose/kernel:0conv2d_transpose/kernel/Assign-conv2d_transpose/kernel/Read/ReadVariableOp:0(24conv2d_transpose/kernel/Initializer/random_uniform:08

conv2d_transpose/bias:0conv2d_transpose/bias/Assign+conv2d_transpose/bias/Read/ReadVariableOp:0(2)conv2d_transpose/bias/Initializer/zeros:08

conv2d_12/kernel:0conv2d_12/kernel/Assign&conv2d_12/kernel/Read/ReadVariableOp:0(2-conv2d_12/kernel/Initializer/random_uniform:08
w
conv2d_12/bias:0conv2d_12/bias/Assign$conv2d_12/bias/Read/ReadVariableOp:0(2"conv2d_12/bias/Initializer/zeros:08
ª
batch_normalization_6/gamma:0"batch_normalization_6/gamma/Assign1batch_normalization_6/gamma/Read/ReadVariableOp:0(2.batch_normalization_6/gamma/Initializer/ones:08
§
batch_normalization_6/beta:0!batch_normalization_6/beta/Assign0batch_normalization_6/beta/Read/ReadVariableOp:0(2.batch_normalization_6/beta/Initializer/zeros:08
Å
#batch_normalization_6/moving_mean:0(batch_normalization_6/moving_mean/Assign7batch_normalization_6/moving_mean/Read/ReadVariableOp:0(25batch_normalization_6/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_6/moving_variance:0,batch_normalization_6/moving_variance/Assign;batch_normalization_6/moving_variance/Read/ReadVariableOp:0(28batch_normalization_6/moving_variance/Initializer/ones:0@H

conv2d_13/kernel:0conv2d_13/kernel/Assign&conv2d_13/kernel/Read/ReadVariableOp:0(2-conv2d_13/kernel/Initializer/random_uniform:08
w
conv2d_13/bias:0conv2d_13/bias/Assign$conv2d_13/bias/Read/ReadVariableOp:0(2"conv2d_13/bias/Initializer/zeros:08

conv2d_14/kernel:0conv2d_14/kernel/Assign&conv2d_14/kernel/Read/ReadVariableOp:0(2-conv2d_14/kernel/Initializer/random_uniform:08
w
conv2d_14/bias:0conv2d_14/bias/Assign$conv2d_14/bias/Read/ReadVariableOp:0(2"conv2d_14/bias/Initializer/zeros:08
ª
batch_normalization_7/gamma:0"batch_normalization_7/gamma/Assign1batch_normalization_7/gamma/Read/ReadVariableOp:0(2.batch_normalization_7/gamma/Initializer/ones:08
§
batch_normalization_7/beta:0!batch_normalization_7/beta/Assign0batch_normalization_7/beta/Read/ReadVariableOp:0(2.batch_normalization_7/beta/Initializer/zeros:08
Å
#batch_normalization_7/moving_mean:0(batch_normalization_7/moving_mean/Assign7batch_normalization_7/moving_mean/Read/ReadVariableOp:0(25batch_normalization_7/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_7/moving_variance:0,batch_normalization_7/moving_variance/Assign;batch_normalization_7/moving_variance/Read/ReadVariableOp:0(28batch_normalization_7/moving_variance/Initializer/ones:0@H
¬
conv2d_transpose_1/kernel:0 conv2d_transpose_1/kernel/Assign/conv2d_transpose_1/kernel/Read/ReadVariableOp:0(26conv2d_transpose_1/kernel/Initializer/random_uniform:08

conv2d_transpose_1/bias:0conv2d_transpose_1/bias/Assign-conv2d_transpose_1/bias/Read/ReadVariableOp:0(2+conv2d_transpose_1/bias/Initializer/zeros:08

conv2d_15/kernel:0conv2d_15/kernel/Assign&conv2d_15/kernel/Read/ReadVariableOp:0(2-conv2d_15/kernel/Initializer/random_uniform:08
w
conv2d_15/bias:0conv2d_15/bias/Assign$conv2d_15/bias/Read/ReadVariableOp:0(2"conv2d_15/bias/Initializer/zeros:08
ª
batch_normalization_8/gamma:0"batch_normalization_8/gamma/Assign1batch_normalization_8/gamma/Read/ReadVariableOp:0(2.batch_normalization_8/gamma/Initializer/ones:08
§
batch_normalization_8/beta:0!batch_normalization_8/beta/Assign0batch_normalization_8/beta/Read/ReadVariableOp:0(2.batch_normalization_8/beta/Initializer/zeros:08
Å
#batch_normalization_8/moving_mean:0(batch_normalization_8/moving_mean/Assign7batch_normalization_8/moving_mean/Read/ReadVariableOp:0(25batch_normalization_8/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_8/moving_variance:0,batch_normalization_8/moving_variance/Assign;batch_normalization_8/moving_variance/Read/ReadVariableOp:0(28batch_normalization_8/moving_variance/Initializer/ones:0@H

conv2d_16/kernel:0conv2d_16/kernel/Assign&conv2d_16/kernel/Read/ReadVariableOp:0(2-conv2d_16/kernel/Initializer/random_uniform:08
w
conv2d_16/bias:0conv2d_16/bias/Assign$conv2d_16/bias/Read/ReadVariableOp:0(2"conv2d_16/bias/Initializer/zeros:08

conv2d_17/kernel:0conv2d_17/kernel/Assign&conv2d_17/kernel/Read/ReadVariableOp:0(2-conv2d_17/kernel/Initializer/random_uniform:08
w
conv2d_17/bias:0conv2d_17/bias/Assign$conv2d_17/bias/Read/ReadVariableOp:0(2"conv2d_17/bias/Initializer/zeros:08
ª
batch_normalization_9/gamma:0"batch_normalization_9/gamma/Assign1batch_normalization_9/gamma/Read/ReadVariableOp:0(2.batch_normalization_9/gamma/Initializer/ones:08
§
batch_normalization_9/beta:0!batch_normalization_9/beta/Assign0batch_normalization_9/beta/Read/ReadVariableOp:0(2.batch_normalization_9/beta/Initializer/zeros:08
Å
#batch_normalization_9/moving_mean:0(batch_normalization_9/moving_mean/Assign7batch_normalization_9/moving_mean/Read/ReadVariableOp:0(25batch_normalization_9/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_9/moving_variance:0,batch_normalization_9/moving_variance/Assign;batch_normalization_9/moving_variance/Read/ReadVariableOp:0(28batch_normalization_9/moving_variance/Initializer/ones:0@H
¬
conv2d_transpose_2/kernel:0 conv2d_transpose_2/kernel/Assign/conv2d_transpose_2/kernel/Read/ReadVariableOp:0(26conv2d_transpose_2/kernel/Initializer/random_uniform:08

conv2d_transpose_2/bias:0conv2d_transpose_2/bias/Assign-conv2d_transpose_2/bias/Read/ReadVariableOp:0(2+conv2d_transpose_2/bias/Initializer/zeros:08

conv2d_18/kernel:0conv2d_18/kernel/Assign&conv2d_18/kernel/Read/ReadVariableOp:0(2-conv2d_18/kernel/Initializer/random_uniform:08
w
conv2d_18/bias:0conv2d_18/bias/Assign$conv2d_18/bias/Read/ReadVariableOp:0(2"conv2d_18/bias/Initializer/zeros:08
®
batch_normalization_10/gamma:0#batch_normalization_10/gamma/Assign2batch_normalization_10/gamma/Read/ReadVariableOp:0(2/batch_normalization_10/gamma/Initializer/ones:08
«
batch_normalization_10/beta:0"batch_normalization_10/beta/Assign1batch_normalization_10/beta/Read/ReadVariableOp:0(2/batch_normalization_10/beta/Initializer/zeros:08
É
$batch_normalization_10/moving_mean:0)batch_normalization_10/moving_mean/Assign8batch_normalization_10/moving_mean/Read/ReadVariableOp:0(26batch_normalization_10/moving_mean/Initializer/zeros:0@H
Ø
(batch_normalization_10/moving_variance:0-batch_normalization_10/moving_variance/Assign<batch_normalization_10/moving_variance/Read/ReadVariableOp:0(29batch_normalization_10/moving_variance/Initializer/ones:0@H

conv2d_19/kernel:0conv2d_19/kernel/Assign&conv2d_19/kernel/Read/ReadVariableOp:0(2-conv2d_19/kernel/Initializer/random_uniform:08
w
conv2d_19/bias:0conv2d_19/bias/Assign$conv2d_19/bias/Read/ReadVariableOp:0(2"conv2d_19/bias/Initializer/zeros:08

conv2d_20/kernel:0conv2d_20/kernel/Assign&conv2d_20/kernel/Read/ReadVariableOp:0(2-conv2d_20/kernel/Initializer/random_uniform:08
w
conv2d_20/bias:0conv2d_20/bias/Assign$conv2d_20/bias/Read/ReadVariableOp:0(2"conv2d_20/bias/Initializer/zeros:08
®
batch_normalization_11/gamma:0#batch_normalization_11/gamma/Assign2batch_normalization_11/gamma/Read/ReadVariableOp:0(2/batch_normalization_11/gamma/Initializer/ones:08
«
batch_normalization_11/beta:0"batch_normalization_11/beta/Assign1batch_normalization_11/beta/Read/ReadVariableOp:0(2/batch_normalization_11/beta/Initializer/zeros:08
É
$batch_normalization_11/moving_mean:0)batch_normalization_11/moving_mean/Assign8batch_normalization_11/moving_mean/Read/ReadVariableOp:0(26batch_normalization_11/moving_mean/Initializer/zeros:0@H
Ø
(batch_normalization_11/moving_variance:0-batch_normalization_11/moving_variance/Assign<batch_normalization_11/moving_variance/Read/ReadVariableOp:0(29batch_normalization_11/moving_variance/Initializer/ones:0@H
¬
conv2d_transpose_3/kernel:0 conv2d_transpose_3/kernel/Assign/conv2d_transpose_3/kernel/Read/ReadVariableOp:0(26conv2d_transpose_3/kernel/Initializer/random_uniform:08

conv2d_transpose_3/bias:0conv2d_transpose_3/bias/Assign-conv2d_transpose_3/bias/Read/ReadVariableOp:0(2+conv2d_transpose_3/bias/Initializer/zeros:08

conv2d_21/kernel:0conv2d_21/kernel/Assign&conv2d_21/kernel/Read/ReadVariableOp:0(2-conv2d_21/kernel/Initializer/random_uniform:08
w
conv2d_21/bias:0conv2d_21/bias/Assign$conv2d_21/bias/Read/ReadVariableOp:0(2"conv2d_21/bias/Initializer/zeros:08
®
batch_normalization_12/gamma:0#batch_normalization_12/gamma/Assign2batch_normalization_12/gamma/Read/ReadVariableOp:0(2/batch_normalization_12/gamma/Initializer/ones:08
«
batch_normalization_12/beta:0"batch_normalization_12/beta/Assign1batch_normalization_12/beta/Read/ReadVariableOp:0(2/batch_normalization_12/beta/Initializer/zeros:08
É
$batch_normalization_12/moving_mean:0)batch_normalization_12/moving_mean/Assign8batch_normalization_12/moving_mean/Read/ReadVariableOp:0(26batch_normalization_12/moving_mean/Initializer/zeros:0@H
Ø
(batch_normalization_12/moving_variance:0-batch_normalization_12/moving_variance/Assign<batch_normalization_12/moving_variance/Read/ReadVariableOp:0(29batch_normalization_12/moving_variance/Initializer/ones:0@H

conv2d_22/kernel:0conv2d_22/kernel/Assign&conv2d_22/kernel/Read/ReadVariableOp:0(2-conv2d_22/kernel/Initializer/random_uniform:08
w
conv2d_22/bias:0conv2d_22/bias/Assign$conv2d_22/bias/Read/ReadVariableOp:0(2"conv2d_22/bias/Initializer/zeros:08

conv2d_23/kernel:0conv2d_23/kernel/Assign&conv2d_23/kernel/Read/ReadVariableOp:0(2-conv2d_23/kernel/Initializer/random_uniform:08
w
conv2d_23/bias:0conv2d_23/bias/Assign$conv2d_23/bias/Read/ReadVariableOp:0(2"conv2d_23/bias/Initializer/zeros:08
®
batch_normalization_13/gamma:0#batch_normalization_13/gamma/Assign2batch_normalization_13/gamma/Read/ReadVariableOp:0(2/batch_normalization_13/gamma/Initializer/ones:08
«
batch_normalization_13/beta:0"batch_normalization_13/beta/Assign1batch_normalization_13/beta/Read/ReadVariableOp:0(2/batch_normalization_13/beta/Initializer/zeros:08
É
$batch_normalization_13/moving_mean:0)batch_normalization_13/moving_mean/Assign8batch_normalization_13/moving_mean/Read/ReadVariableOp:0(26batch_normalization_13/moving_mean/Initializer/zeros:0@H
Ø
(batch_normalization_13/moving_variance:0-batch_normalization_13/moving_variance/Assign<batch_normalization_13/moving_variance/Read/ReadVariableOp:0(29batch_normalization_13/moving_variance/Initializer/ones:0@H

conv2d_24/kernel:0conv2d_24/kernel/Assign&conv2d_24/kernel/Read/ReadVariableOp:0(2-conv2d_24/kernel/Initializer/random_uniform:08
w
conv2d_24/bias:0conv2d_24/bias/Assign$conv2d_24/bias/Read/ReadVariableOp:0(2"conv2d_24/bias/Initializer/zeros:08

conv2d_25/kernel:0conv2d_25/kernel/Assign&conv2d_25/kernel/Read/ReadVariableOp:0(2-conv2d_25/kernel/Initializer/random_uniform:08
w
conv2d_25/bias:0conv2d_25/bias/Assign$conv2d_25/bias/Read/ReadVariableOp:0(2"conv2d_25/bias/Initializer/zeros:08*
serving_default
*
x%
Placeholder:05
output+
conv2d_25/BiasAdd:0tensorflow/serving/predict