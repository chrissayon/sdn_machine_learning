��
�%�%
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
A
AddV2
x"T
y"T
z"T"
Ttype:
2	��
E
AssignAddVariableOp
resource
value"dtype"
dtypetype�
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(�
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
.
Log1p
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	
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
6
Pow
x"T
y"T
z"T"
Ttype:

2	
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( �
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
�
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�
9
VarIsInitializedOp
resource
is_initialized
�
&
	ZerosLike
x"T
y"T"	
Ttype"train*2.0.02v2.0.0-rc2-26-g64c3d388��
n
dense_inputPlaceholder*
shape:���������*
dtype0*'
_output_shapes
:���������
�
/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
�
.dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
�
0dense/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *d'?*
_class
loc:@dense/kernel*
dtype0
�
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
T0*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:
�
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
_class
loc:@dense/kernel*
_output_shapes

:*
T0
�
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
_output_shapes

:*
T0*
_class
loc:@dense/kernel
�
dense/kernelVarHandleOp*
_output_shapes
: *
shape
:*
shared_namedense/kernel*
_class
loc:@dense/kernel*
dtype0
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
m
dense/kernel/AssignAssignVariableOpdense/kernel)dense/kernel/Initializer/truncated_normal*
dtype0
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
�
dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
�

dense/biasVarHandleOp*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: *
shape:*
shared_name
dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:
r
dense/MatMulMatMuldense_inputdense/MatMul/ReadVariableOp*'
_output_shapes
:���������*
T0
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
v
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:���������
S

dense/ReluReludense/BiasAdd*
T0*'
_output_shapes
:���������
�
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
�
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *�KF�*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
�
-dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *�KF?*!
_class
loc:@dense_1/kernel*
dtype0
�
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:*
T0
�
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
�
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
_output_shapes

:*
T0
�
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

:*
T0*!
_class
loc:@dense_1/kernel
�
dense_1/kernelVarHandleOp*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: *
shape
:*
shared_namedense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:
�
dense_1/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
�
dense_1/biasVarHandleOp*
_output_shapes
: *
shape:*
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
dtype0
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:
u
dense_1/MatMulMatMul
dense/Reludense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
|
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:���������
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:���������
�
/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:
�
-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *  ��*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
�
-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *  �?*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
�
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:*
T0
�
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
�
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes

:*
T0*!
_class
loc:@dense_2/kernel
�
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
_output_shapes

:*
T0
�
dense_2/kernelVarHandleOp*
_output_shapes
: *
shape
:*
shared_namedense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 
q
dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*
dtype0
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
�
dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
_class
loc:@dense_2/bias*
dtype0
�
dense_2/biasVarHandleOp*
_output_shapes
: *
shape:*
shared_namedense_2/bias*
_class
loc:@dense_2/bias*
dtype0
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
b
dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
dtype0
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
l
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:
w
dense_2/MatMulMatMuldense_1/Reludense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
|
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:���������
]
dense_2/SigmoidSigmoiddense_2/BiasAdd*
T0*'
_output_shapes
:���������
�
dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:������������������*%
shape:������������������
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
x
totalVarHandleOp*
shape: *
shared_nametotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 
x
countVarHandleOp*
shared_namecount*
_class

loc:@count*
dtype0*
_output_shapes
: *
shape: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_output_shapes
: 
\
metrics/accuracy/Cast/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 

metrics/accuracy/GreaterGreaterdense_2/Sigmoidmetrics/accuracy/Cast/x*
T0*'
_output_shapes
:���������
z
metrics/accuracy/Cast_1Castmetrics/accuracy/Greater*'
_output_shapes
:���������*

DstT0*

SrcT0

�
metrics/accuracy/EqualEqualdense_2_targetmetrics/accuracy/Cast_1*
T0*0
_output_shapes
:������������������
�
metrics/accuracy/Cast_2Castmetrics/accuracy/Equal*

SrcT0
*0
_output_shapes
:������������������*

DstT0
r
'metrics/accuracy/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics/accuracy/MeanMeanmetrics/accuracy/Cast_2'metrics/accuracy/Mean/reduction_indices*#
_output_shapes
:���������*
T0
`
metrics/accuracy/ConstConst*
_output_shapes
:*
valueB: *
dtype0
k
metrics/accuracy/SumSummetrics/accuracy/Meanmetrics/accuracy/Const*
_output_shapes
: *
T0
e
$metrics/accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/accuracy/Sum*
dtype0
�
metrics/accuracy/ReadVariableOpReadVariableOptotal%^metrics/accuracy/AssignAddVariableOp^metrics/accuracy/Sum*
dtype0*
_output_shapes
: 
U
metrics/accuracy/SizeSizemetrics/accuracy/Mean*
T0*
_output_shapes
: 
f
metrics/accuracy/Cast_3Castmetrics/accuracy/Size*

SrcT0*
_output_shapes
: *

DstT0
�
&metrics/accuracy/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/accuracy/Cast_3%^metrics/accuracy/AssignAddVariableOp*
dtype0
�
!metrics/accuracy/ReadVariableOp_1ReadVariableOpcount%^metrics/accuracy/AssignAddVariableOp'^metrics/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
�
*metrics/accuracy/div_no_nan/ReadVariableOpReadVariableOptotal'^metrics/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
�
,metrics/accuracy/div_no_nan/ReadVariableOp_1ReadVariableOpcount'^metrics/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
�
metrics/accuracy/div_no_nanDivNoNan*metrics/accuracy/div_no_nan/ReadVariableOp,metrics/accuracy/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
c
metrics/accuracy/IdentityIdentitymetrics/accuracy/div_no_nan*
T0*
_output_shapes
: 
\
loss/dense_2_loss/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
z
*loss/dense_2_loss/logistic_loss/zeros_like	ZerosLikedense_2/BiasAdd*
T0*'
_output_shapes
:���������
�
,loss/dense_2_loss/logistic_loss/GreaterEqualGreaterEqualdense_2/BiasAdd*loss/dense_2_loss/logistic_loss/zeros_like*'
_output_shapes
:���������*
T0
�
&loss/dense_2_loss/logistic_loss/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualdense_2/BiasAdd*loss/dense_2_loss/logistic_loss/zeros_like*'
_output_shapes
:���������*
T0
m
#loss/dense_2_loss/logistic_loss/NegNegdense_2/BiasAdd*
T0*'
_output_shapes
:���������
�
(loss/dense_2_loss/logistic_loss/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqual#loss/dense_2_loss/logistic_loss/Negdense_2/BiasAdd*
T0*'
_output_shapes
:���������
�
#loss/dense_2_loss/logistic_loss/mulMuldense_2/BiasAdddense_2_target*
T0*0
_output_shapes
:������������������
�
#loss/dense_2_loss/logistic_loss/subSub&loss/dense_2_loss/logistic_loss/Select#loss/dense_2_loss/logistic_loss/mul*0
_output_shapes
:������������������*
T0
�
#loss/dense_2_loss/logistic_loss/ExpExp(loss/dense_2_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:���������
�
%loss/dense_2_loss/logistic_loss/Log1pLog1p#loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:���������*
T0
�
loss/dense_2_loss/logistic_lossAdd#loss/dense_2_loss/logistic_loss/sub%loss/dense_2_loss/logistic_loss/Log1p*
T0*0
_output_shapes
:������������������
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/MeanMeanloss/dense_2_loss/logistic_loss(loss/dense_2_loss/Mean/reduction_indices*#
_output_shapes
:���������*
T0
k
&loss/dense_2_loss/weighted_loss/Cast/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Tloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
�
Sloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
�
Sloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/dense_2_loss/Mean*
_output_shapes
:*
T0
�
Rloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
j
bloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
�
Aloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeloss/dense_2_loss/Meanc^loss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0
�
Aloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ConstConstc^loss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
;loss/dense_2_loss/weighted_loss/broadcast_weights/ones_likeFillAloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ShapeAloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:���������
�
1loss/dense_2_loss/weighted_loss/broadcast_weightsMul&loss/dense_2_loss/weighted_loss/Cast/x;loss/dense_2_loss/weighted_loss/broadcast_weights/ones_like*#
_output_shapes
:���������*
T0
�
#loss/dense_2_loss/weighted_loss/MulMulloss/dense_2_loss/Mean1loss/dense_2_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:���������
c
loss/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
}
loss/dense_2_loss/SumSum#loss/dense_2_loss/weighted_loss/Mulloss/dense_2_loss/Const_1*
T0*
_output_shapes
: 
l
loss/dense_2_loss/num_elementsSize#loss/dense_2_loss/weighted_loss/Mul*
_output_shapes
: *
T0
{
#loss/dense_2_loss/num_elements/CastCastloss/dense_2_loss/num_elements*
_output_shapes
: *

DstT0*

SrcT0
\
loss/dense_2_loss/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
q
loss/dense_2_loss/Sum_1Sumloss/dense_2_loss/Sumloss/dense_2_loss/Const_2*
T0*
_output_shapes
: 
�
loss/dense_2_loss/valueDivNoNanloss/dense_2_loss/Sum_1#loss/dense_2_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
U
loss/mulMul
loss/mul/xloss/dense_2_loss/value*
_output_shapes
: *
T0
q
iter/Initializer/zerosConst*
value	B	 R *
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
u
iterVarHandleOp*
_class
	loc:@iter*
dtype0	*
_output_shapes
: *
shape: *
shared_nameiter
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
J
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	
U
iter/Read/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
j
'training/Adam/gradients/gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
p
+training/Adam/gradients/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
&training/Adam/gradients/gradients/FillFill'training/Adam/gradients/gradients/Shape+training/Adam/gradients/gradients/grad_ys_0*
_output_shapes
: *
T0
�
3training/Adam/gradients/gradients/loss/mul_grad/MulMul&training/Adam/gradients/gradients/Fillloss/dense_2_loss/value*
T0*
_output_shapes
: 
�
5training/Adam/gradients/gradients/loss/mul_grad/Mul_1Mul&training/Adam/gradients/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
�
Dtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
�
Ftraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
Ttraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsDtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/ShapeFtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/Shape_1*2
_output_shapes 
:���������:���������
�
Itraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/div_no_nanDivNoNan5training/Adam/gradients/gradients/loss/mul_grad/Mul_1#loss/dense_2_loss/num_elements/Cast*
_output_shapes
: *
T0
�
Btraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/SumSumItraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/div_no_nanTtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/BroadcastGradientArgs*
T0*
_output_shapes
: 
�
Ftraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/ReshapeReshapeBtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/SumDtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/Shape*
_output_shapes
: *
T0
�
Btraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/NegNegloss/dense_2_loss/Sum_1*
T0*
_output_shapes
: 
�
Ktraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/div_no_nan_1DivNoNanBtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/Neg#loss/dense_2_loss/num_elements/Cast*
T0*
_output_shapes
: 
�
Ktraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/div_no_nan_2DivNoNanKtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/div_no_nan_1#loss/dense_2_loss/num_elements/Cast*
T0*
_output_shapes
: 
�
Btraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/mulMul5training/Adam/gradients/gradients/loss/mul_grad/Mul_1Ktraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/div_no_nan_2*
_output_shapes
: *
T0
�
Dtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/Sum_1SumBtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/mulVtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: 
�
Htraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/Reshape_1ReshapeDtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/Sum_1Ftraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/Shape_1*
T0*
_output_shapes
: 
�
Ltraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_1_grad/Reshape/shapeConst*
_output_shapes
: *
valueB *
dtype0
�
Ftraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeReshapeFtraining/Adam/gradients/gradients/loss/dense_2_loss/value_grad/ReshapeLtraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_1_grad/Reshape/shape*
_output_shapes
: *
T0
�
Dtraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
�
Ctraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_1_grad/TileTileFtraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeDtraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_1_grad/Const*
_output_shapes
: *
T0
�
Jtraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
Dtraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshapeCtraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_1_grad/TileJtraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_grad/Reshape/shape*
T0*
_output_shapes
:
�
Btraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_grad/ShapeShape#loss/dense_2_loss/weighted_loss/Mul*
_output_shapes
:*
T0
�
Atraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_grad/TileTileDtraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_grad/ReshapeBtraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_grad/Shape*#
_output_shapes
:���������*
T0
�
Ptraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/ShapeShapeloss/dense_2_loss/Mean*
T0*
_output_shapes
:
�
Rtraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape_1Shape1loss/dense_2_loss/weighted_loss/broadcast_weights*
T0*
_output_shapes
:
�
`training/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsPtraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/ShapeRtraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:���������:���������
�
Ntraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/MulMulAtraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_grad/Tile1loss/dense_2_loss/weighted_loss/broadcast_weights*#
_output_shapes
:���������*
T0
�
Ntraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/SumSumNtraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Mul`training/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
�
Rtraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/ReshapeReshapeNtraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/SumPtraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape*#
_output_shapes
:���������*
T0
�
Ptraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Mul_1Mulloss/dense_2_loss/MeanAtraining/Adam/gradients/gradients/loss/dense_2_loss/Sum_grad/Tile*#
_output_shapes
:���������*
T0
�
Ptraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Sum_1SumPtraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Mul_1btraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
�
Ttraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Reshape_1ReshapePtraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Sum_1Rtraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape_1*
T0*#
_output_shapes
:���������
�
Ctraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/logistic_loss*
T0*
_output_shapes
:
�
Btraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/SizeConst*
value	B :*V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape*
dtype0*
_output_shapes
: 
�
Atraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/addAddV2(loss/dense_2_loss/Mean/reduction_indicesBtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape*
_output_shapes
: 
�
Atraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/modFloorModAtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/addBtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Size*V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape*
_output_shapes
: *
T0
�
Etraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*
valueB *V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape*
dtype0*
_output_shapes
: 
�
Itraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/range/startConst*
value	B : *V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape*
dtype0*
_output_shapes
: 
�
Itraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*
value	B :*V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape*
dtype0*
_output_shapes
: 
�
Ctraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/rangeRangeItraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/range/startBtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/SizeItraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/range/delta*
_output_shapes
:*V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape
�
Htraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*
value	B :*V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape*
dtype0*
_output_shapes
: 
�
Btraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/FillFillEtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape_1Htraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Fill/value*
T0*V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape*
_output_shapes
: 
�
Ktraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitchCtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/rangeAtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/modCtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/ShapeBtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Fill*
T0*V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape*
N*
_output_shapes
:
�
Gtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*
value	B :*V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape*
dtype0*
_output_shapes
: 
�
Etraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximumKtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchGtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape*
_output_shapes
:*
T0
�
Ftraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDivCtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/ShapeEtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Maximum*
T0*V
_classL
JHloc:@training/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape*
_output_shapes
:
�
Etraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshapeRtraining/Adam/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/ReshapeKtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*0
_output_shapes
:������������������*
T0
�
Btraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/TileTileEtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/ReshapeFtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/floordiv*0
_output_shapes
:������������������*
T0
�
Etraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/logistic_loss*
T0*
_output_shapes
:
�
Etraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
T0*
_output_shapes
:
�
Ctraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Btraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/ProdProdEtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape_2Ctraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Const*
_output_shapes
: *
T0
�
Etraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
Dtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Prod_1ProdEtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Shape_3Etraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Const_1*
T0*
_output_shapes
: 
�
Itraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*
_output_shapes
: *
value	B :*
dtype0
�
Gtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Maximum_1MaximumDtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Prod_1Itraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
�
Htraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDivBtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/ProdGtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
�
Btraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/CastCastHtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
Etraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/truedivRealDivBtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/TileBtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/Cast*
T0*0
_output_shapes
:������������������
�
Ltraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeShape#loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:*
T0
�
Ntraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1Shape%loss/dense_2_loss/logistic_loss/Log1p*
T0*
_output_shapes
:
�
\training/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsLtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeNtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*2
_output_shapes 
:���������:���������
�
Jtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/SumSumEtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/truediv\training/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
�
Ntraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeReshapeJtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/SumLtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/Shape*0
_output_shapes
:������������������*
T0
�
Ltraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1SumEtraining/Adam/gradients/gradients/loss/dense_2_loss/Mean_grad/truediv^training/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
�
Ptraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1ReshapeLtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Ntraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*
T0*'
_output_shapes
:���������
�
Ptraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_2_loss/logistic_loss/Select*
T0*
_output_shapes
:
�
Rtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_2_loss/logistic_loss/mul*
_output_shapes
:*
T0
�
`training/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsPtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeRtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*2
_output_shapes 
:���������:���������
�
Ntraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumSumNtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape`training/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
�
Rtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeReshapeNtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumPtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape*
T0*'
_output_shapes
:���������
�
Ntraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegNegNtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape*
T0*0
_output_shapes
:������������������
�
Ptraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1SumNtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Negbtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
�
Ttraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1ReshapePtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1Rtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*0
_output_shapes
:������������������*
T0
�
Rtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/xConstQ^training/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Ptraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/addAddV2Rtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/x#loss/dense_2_loss/logistic_loss/Exp*
T0*'
_output_shapes
:���������
�
Wtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalPtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add*
T0*'
_output_shapes
:���������
�
Ptraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mulMulPtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1Wtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal*'
_output_shapes
:���������*
T0
�
Xtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like	ZerosLikedense_2/BiasAdd*'
_output_shapes
:���������*
T0
�
Ttraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualRtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeXtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like*'
_output_shapes
:���������*
T0
�
Vtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualXtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_likeRtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape*
T0*'
_output_shapes
:���������
�
Ptraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeShapedense_2/BiasAdd*
_output_shapes
:*
T0
�
Rtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1Shapedense_2_target*
_output_shapes
:*
T0
�
`training/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsPtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeRtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*2
_output_shapes 
:���������:���������
�
Ntraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/MulMulTtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1dense_2_target*0
_output_shapes
:������������������*
T0
�
Ntraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumSumNtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Mul`training/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
�
Rtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeReshapeNtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumPtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape*
T0*'
_output_shapes
:���������
�
Ptraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Mul_1Muldense_2/BiasAddTtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1*
T0*0
_output_shapes
:������������������
�
Ptraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1SumPtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Mul_1btraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
�
Ttraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Reshape_1ReshapePtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1Rtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*
T0*0
_output_shapes
:������������������
�
Ntraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulMulPtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mul#loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:���������*
T0
�
Ztraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_2_loss/logistic_loss/Neg*
T0*'
_output_shapes
:���������
�
Vtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualNtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulZtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like*'
_output_shapes
:���������*
T0
�
Xtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualZtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_likeNtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mul*
T0*'
_output_shapes
:���������
�
Ntraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/NegNegVtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select*'
_output_shapes
:���������*
T0
�
&training/Adam/gradients/gradients/AddNAddNTtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectRtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeXtraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Ntraining/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/Neg*'
_output_shapes
:���������*
T0*g
_class]
[Yloc:@training/Adam/gradients/gradients/loss/dense_2_loss/logistic_loss/Select_grad/Select*
N
�
Btraining/Adam/gradients/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad&training/Adam/gradients/gradients/AddN*
T0*
_output_shapes
:
�
<training/Adam/gradients/gradients/dense_2/MatMul_grad/MatMulMatMul&training/Adam/gradients/gradients/AddNdense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������*
transpose_b(
�
>training/Adam/gradients/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/Relu&training/Adam/gradients/gradients/AddN*
T0*
_output_shapes

:*
transpose_a(
�
<training/Adam/gradients/gradients/dense_1/Relu_grad/ReluGradReluGrad<training/Adam/gradients/gradients/dense_2/MatMul_grad/MatMuldense_1/Relu*'
_output_shapes
:���������*
T0
�
Btraining/Adam/gradients/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad<training/Adam/gradients/gradients/dense_1/Relu_grad/ReluGrad*
_output_shapes
:*
T0
�
<training/Adam/gradients/gradients/dense_1/MatMul_grad/MatMulMatMul<training/Adam/gradients/gradients/dense_1/Relu_grad/ReluGraddense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������*
transpose_b(
�
>training/Adam/gradients/gradients/dense_1/MatMul_grad/MatMul_1MatMul
dense/Relu<training/Adam/gradients/gradients/dense_1/Relu_grad/ReluGrad*
_output_shapes

:*
transpose_a(*
T0
�
:training/Adam/gradients/gradients/dense/Relu_grad/ReluGradReluGrad<training/Adam/gradients/gradients/dense_1/MatMul_grad/MatMul
dense/Relu*
T0*'
_output_shapes
:���������
�
@training/Adam/gradients/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad:training/Adam/gradients/gradients/dense/Relu_grad/ReluGrad*
_output_shapes
:*
T0
�
:training/Adam/gradients/gradients/dense/MatMul_grad/MatMulMatMul:training/Adam/gradients/gradients/dense/Relu_grad/ReluGraddense/MatMul/ReadVariableOp*'
_output_shapes
:���������*
transpose_b(*
T0
�
<training/Adam/gradients/gradients/dense/MatMul_grad/MatMul_1MatMuldense_input:training/Adam/gradients/gradients/dense/Relu_grad/ReluGrad*
_output_shapes

:*
transpose_a(*
T0
�
.training/Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*'
_class
loc:@training/Adam/beta_1*
dtype0*
_output_shapes
: 
�
training/Adam/beta_1VarHandleOp*%
shared_nametraining/Adam/beta_1*'
_class
loc:@training/Adam/beta_1*
dtype0*
_output_shapes
: *
shape: 
y
5training/Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/beta_1*
_output_shapes
: 
�
training/Adam/beta_1/AssignAssignVariableOptraining/Adam/beta_1.training/Adam/beta_1/Initializer/initial_value*
dtype0
u
(training/Adam/beta_1/Read/ReadVariableOpReadVariableOptraining/Adam/beta_1*
dtype0*
_output_shapes
: 
�
.training/Adam/beta_2/Initializer/initial_valueConst*
valueB
 *w�?*'
_class
loc:@training/Adam/beta_2*
dtype0*
_output_shapes
: 
�
training/Adam/beta_2VarHandleOp*
_output_shapes
: *
shape: *%
shared_nametraining/Adam/beta_2*'
_class
loc:@training/Adam/beta_2*
dtype0
y
5training/Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/beta_2*
_output_shapes
: 
�
training/Adam/beta_2/AssignAssignVariableOptraining/Adam/beta_2.training/Adam/beta_2/Initializer/initial_value*
dtype0
u
(training/Adam/beta_2/Read/ReadVariableOpReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 
�
-training/Adam/decay/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *    *&
_class
loc:@training/Adam/decay*
dtype0
�
training/Adam/decayVarHandleOp*
_output_shapes
: *
shape: *$
shared_nametraining/Adam/decay*&
_class
loc:@training/Adam/decay*
dtype0
w
4training/Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/decay*
_output_shapes
: 

training/Adam/decay/AssignAssignVariableOptraining/Adam/decay-training/Adam/decay/Initializer/initial_value*
dtype0
s
'training/Adam/decay/Read/ReadVariableOpReadVariableOptraining/Adam/decay*
dtype0*
_output_shapes
: 
�
5training/Adam/learning_rate/Initializer/initial_valueConst*
valueB
 *o�:*.
_class$
" loc:@training/Adam/learning_rate*
dtype0*
_output_shapes
: 
�
training/Adam/learning_rateVarHandleOp*
_output_shapes
: *
shape: *,
shared_nametraining/Adam/learning_rate*.
_class$
" loc:@training/Adam/learning_rate*
dtype0
�
<training/Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/learning_rate*
_output_shapes
: 
�
"training/Adam/learning_rate/AssignAssignVariableOptraining/Adam/learning_rate5training/Adam/learning_rate/Initializer/initial_value*
dtype0
�
/training/Adam/learning_rate/Read/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
_output_shapes
: *
dtype0
�
.training/Adam/dense/kernel/m/Initializer/zerosConst*
_class
loc:@dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
training/Adam/dense/kernel/mVarHandleOp*
shape
:*-
shared_nametraining/Adam/dense/kernel/m*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
�
=training/Adam/dense/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense/kernel/m*
_class
loc:@dense/kernel*
_output_shapes
: 
�
#training/Adam/dense/kernel/m/AssignAssignVariableOptraining/Adam/dense/kernel/m.training/Adam/dense/kernel/m/Initializer/zeros*
dtype0
�
0training/Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense/kernel/m*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:
�
,training/Adam/dense/bias/m/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/dense/bias/mVarHandleOp*+
shared_nametraining/Adam/dense/bias/m*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: *
shape:
�
;training/Adam/dense/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense/bias/m*
_output_shapes
: *
_class
loc:@dense/bias
�
!training/Adam/dense/bias/m/AssignAssignVariableOptraining/Adam/dense/bias/m,training/Adam/dense/bias/m/Initializer/zeros*
dtype0
�
.training/Adam/dense/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense/bias/m*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
�
0training/Adam/dense_1/kernel/m/Initializer/zerosConst*
_output_shapes

:*!
_class
loc:@dense_1/kernel*
valueB*    *
dtype0
�
training/Adam/dense_1/kernel/mVarHandleOp*
shape
:*/
shared_name training/Adam/dense_1/kernel/m*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
�
?training/Adam/dense_1/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_1/kernel/m*
_output_shapes
: *!
_class
loc:@dense_1/kernel
�
%training/Adam/dense_1/kernel/m/AssignAssignVariableOptraining/Adam/dense_1/kernel/m0training/Adam/dense_1/kernel/m/Initializer/zeros*
dtype0
�
2training/Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_1/kernel/m*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:
�
.training/Adam/dense_1/bias/m/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/dense_1/bias/mVarHandleOp*
shape:*-
shared_nametraining/Adam/dense_1/bias/m*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
�
=training/Adam/dense_1/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_1/bias/m*
_class
loc:@dense_1/bias*
_output_shapes
: 
�
#training/Adam/dense_1/bias/m/AssignAssignVariableOptraining/Adam/dense_1/bias/m.training/Adam/dense_1/bias/m/Initializer/zeros*
dtype0
�
0training/Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_1/bias/m*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
�
0training/Adam/dense_2/kernel/m/Initializer/zerosConst*
_output_shapes

:*!
_class
loc:@dense_2/kernel*
valueB*    *
dtype0
�
training/Adam/dense_2/kernel/mVarHandleOp*/
shared_name training/Adam/dense_2/kernel/m*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: *
shape
:
�
?training/Adam/dense_2/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_2/kernel/m*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
�
%training/Adam/dense_2/kernel/m/AssignAssignVariableOptraining/Adam/dense_2/kernel/m0training/Adam/dense_2/kernel/m/Initializer/zeros*
dtype0
�
2training/Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_2/kernel/m*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:
�
.training/Adam/dense_2/bias/m/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
shape:*-
shared_nametraining/Adam/dense_2/bias/m*
_class
loc:@dense_2/bias*
dtype0
�
=training/Adam/dense_2/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_2/bias/m*
_class
loc:@dense_2/bias*
_output_shapes
: 
�
#training/Adam/dense_2/bias/m/AssignAssignVariableOptraining/Adam/dense_2/bias/m.training/Adam/dense_2/bias/m/Initializer/zeros*
dtype0
�
0training/Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_2/bias/m*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
�
.training/Adam/dense/kernel/v/Initializer/zerosConst*
_class
loc:@dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
training/Adam/dense/kernel/vVarHandleOp*
shape
:*-
shared_nametraining/Adam/dense/kernel/v*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
�
=training/Adam/dense/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense/kernel/v*
_class
loc:@dense/kernel*
_output_shapes
: 
�
#training/Adam/dense/kernel/v/AssignAssignVariableOptraining/Adam/dense/kernel/v.training/Adam/dense/kernel/v/Initializer/zeros*
dtype0
�
0training/Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense/kernel/v*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:
�
,training/Adam/dense/bias/v/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/dense/bias/vVarHandleOp*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: *
shape:*+
shared_nametraining/Adam/dense/bias/v
�
;training/Adam/dense/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense/bias/v*
_output_shapes
: *
_class
loc:@dense/bias
�
!training/Adam/dense/bias/v/AssignAssignVariableOptraining/Adam/dense/bias/v,training/Adam/dense/bias/v/Initializer/zeros*
dtype0
�
.training/Adam/dense/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense/bias/v*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
�
0training/Adam/dense_1/kernel/v/Initializer/zerosConst*!
_class
loc:@dense_1/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
training/Adam/dense_1/kernel/vVarHandleOp*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: *
shape
:*/
shared_name training/Adam/dense_1/kernel/v
�
?training/Adam/dense_1/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_1/kernel/v*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
�
%training/Adam/dense_1/kernel/v/AssignAssignVariableOptraining/Adam/dense_1/kernel/v0training/Adam/dense_1/kernel/v/Initializer/zeros*
dtype0
�
2training/Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_1/kernel/v*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:
�
.training/Adam/dense_1/bias/v/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/dense_1/bias/vVarHandleOp*-
shared_nametraining/Adam/dense_1/bias/v*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: *
shape:
�
=training/Adam/dense_1/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_1/bias/v*
_output_shapes
: *
_class
loc:@dense_1/bias
�
#training/Adam/dense_1/bias/v/AssignAssignVariableOptraining/Adam/dense_1/bias/v.training/Adam/dense_1/bias/v/Initializer/zeros*
dtype0
�
0training/Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_1/bias/v*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
�
0training/Adam/dense_2/kernel/v/Initializer/zerosConst*!
_class
loc:@dense_2/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
training/Adam/dense_2/kernel/vVarHandleOp*
shape
:*/
shared_name training/Adam/dense_2/kernel/v*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
�
?training/Adam/dense_2/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_2/kernel/v*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
�
%training/Adam/dense_2/kernel/v/AssignAssignVariableOptraining/Adam/dense_2/kernel/v0training/Adam/dense_2/kernel/v/Initializer/zeros*
dtype0
�
2training/Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_2/kernel/v*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:
�
.training/Adam/dense_2/bias/v/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/dense_2/bias/vVarHandleOp*-
shared_nametraining/Adam/dense_2/bias/v*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: *
shape:
�
=training/Adam/dense_2/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_2/bias/v*
_output_shapes
: *
_class
loc:@dense_2/bias
�
#training/Adam/dense_2/bias/v/AssignAssignVariableOptraining/Adam/dense_2/bias/v.training/Adam/dense_2/bias/v/Initializer/zeros*
dtype0
�
0training/Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_2/bias/v*
_output_shapes
:*
_class
loc:@dense_2/bias*
dtype0
y
%training/Adam/Identity/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
dtype0*
_output_shapes
: 
j
training/Adam/IdentityIdentity%training/Adam/Identity/ReadVariableOp*
T0*
_output_shapes
: 
Y
training/Adam/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
U
training/Adam/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
n
training/Adam/addAddV2training/Adam/ReadVariableOptraining/Adam/add/y*
T0	*
_output_shapes
: 
]
training/Adam/CastCasttraining/Adam/add*
_output_shapes
: *

DstT0*

SrcT0	
t
'training/Adam/Identity_1/ReadVariableOpReadVariableOptraining/Adam/beta_1*
dtype0*
_output_shapes
: 
n
training/Adam/Identity_1Identity'training/Adam/Identity_1/ReadVariableOp*
T0*
_output_shapes
: 
t
'training/Adam/Identity_2/ReadVariableOpReadVariableOptraining/Adam/beta_2*
_output_shapes
: *
dtype0
n
training/Adam/Identity_2Identity'training/Adam/Identity_2/ReadVariableOp*
_output_shapes
: *
T0
g
training/Adam/PowPowtraining/Adam/Identity_1training/Adam/Cast*
_output_shapes
: *
T0
i
training/Adam/Pow_1Powtraining/Adam/Identity_2training/Adam/Cast*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
c
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
N
training/Adam/SqrtSqrttraining/Adam/sub*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
e
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
h
training/Adam/mulMultraining/Adam/Identitytraining/Adam/truediv*
T0*
_output_shapes
: 
X
training/Adam/ConstConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
l
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/Identity_1*
_output_shapes
: *
T0
Z
training/Adam/sub_3/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
l
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/Identity_2*
_output_shapes
: *
T0
�
8training/Adam/Adam/update_dense/kernel/ResourceApplyAdamResourceApplyAdamdense/kerneltraining/Adam/dense/kernel/mtraining/Adam/dense/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const<training/Adam/gradients/gradients/dense/MatMul_grad/MatMul_1*
use_locking(*
T0*
_class
loc:@dense/kernel
�
6training/Adam/Adam/update_dense/bias/ResourceApplyAdamResourceApplyAdam
dense/biastraining/Adam/dense/bias/mtraining/Adam/dense/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const@training/Adam/gradients/gradients/dense/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
_class
loc:@dense/bias
�
:training/Adam/Adam/update_dense_1/kernel/ResourceApplyAdamResourceApplyAdamdense_1/kerneltraining/Adam/dense_1/kernel/mtraining/Adam/dense_1/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const>training/Adam/gradients/gradients/dense_1/MatMul_grad/MatMul_1*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
�
8training/Adam/Adam/update_dense_1/bias/ResourceApplyAdamResourceApplyAdamdense_1/biastraining/Adam/dense_1/bias/mtraining/Adam/dense_1/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstBtraining/Adam/gradients/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
_class
loc:@dense_1/bias
�
:training/Adam/Adam/update_dense_2/kernel/ResourceApplyAdamResourceApplyAdamdense_2/kerneltraining/Adam/dense_2/kernel/mtraining/Adam/dense_2/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const>training/Adam/gradients/gradients/dense_2/MatMul_grad/MatMul_1*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
�
8training/Adam/Adam/update_dense_2/bias/ResourceApplyAdamResourceApplyAdamdense_2/biastraining/Adam/dense_2/bias/mtraining/Adam/dense_2/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstBtraining/Adam/gradients/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
_class
loc:@dense_2/bias
�
training/Adam/Adam/ConstConst7^training/Adam/Adam/update_dense/bias/ResourceApplyAdam9^training/Adam/Adam/update_dense/kernel/ResourceApplyAdam9^training/Adam/Adam/update_dense_1/bias/ResourceApplyAdam;^training/Adam/Adam/update_dense_1/kernel/ResourceApplyAdam9^training/Adam/Adam/update_dense_2/bias/ResourceApplyAdam;^training/Adam/Adam/update_dense_2/kernel/ResourceApplyAdam*
_output_shapes
: *
value	B	 R*
dtype0	
j
&training/Adam/Adam/AssignAddVariableOpAssignAddVariableOpitertraining/Adam/Adam/Const*
dtype0	
�
!training/Adam/Adam/ReadVariableOpReadVariableOpiter'^training/Adam/Adam/AssignAddVariableOp7^training/Adam/Adam/update_dense/bias/ResourceApplyAdam9^training/Adam/Adam/update_dense/kernel/ResourceApplyAdam9^training/Adam/Adam/update_dense_1/bias/ResourceApplyAdam;^training/Adam/Adam/update_dense_1/kernel/ResourceApplyAdam9^training/Adam/Adam/update_dense_2/bias/ResourceApplyAdam;^training/Adam/Adam/update_dense_2/kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: 
Q
training_1/group_depsNoOp	^loss/mul'^training/Adam/Adam/AssignAddVariableOp
Z
ConstConst"/device:CPU:0*
_output_shapes
: *
valueB Bmodel*
dtype0
�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*g
value^B\BRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
�
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
B
IdentityIdentity	RestoreV2*
_output_shapes
:*
T0
Y
AssignVariableOpAssignVariableOptraining/Adam/dense/kernel/mIdentity*
dtype0
�
RestoreV2_1/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
�
RestoreV2_1	RestoreV2ConstRestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
]
AssignVariableOp_1AssignVariableOptraining/Adam/dense/kernel/v
Identity_1*
dtype0
�
RestoreV2_2/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
�
RestoreV2_2	RestoreV2ConstRestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_2IdentityRestoreV2_2*
_output_shapes
:*
T0
[
AssignVariableOp_2AssignVariableOptraining/Adam/dense/bias/m
Identity_2*
dtype0
�
RestoreV2_3/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
�
RestoreV2_3	RestoreV2ConstRestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
[
AssignVariableOp_3AssignVariableOptraining/Adam/dense/bias/v
Identity_3*
dtype0
�
RestoreV2_4/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
�
RestoreV2_4	RestoreV2ConstRestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_4IdentityRestoreV2_4*
T0*
_output_shapes
:
_
AssignVariableOp_4AssignVariableOptraining/Adam/dense_1/kernel/m
Identity_4*
dtype0
�
RestoreV2_5/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
�
RestoreV2_5	RestoreV2ConstRestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_5IdentityRestoreV2_5*
_output_shapes
:*
T0
_
AssignVariableOp_5AssignVariableOptraining/Adam/dense_1/kernel/v
Identity_5*
dtype0
�
RestoreV2_6/tensor_namesConst"/device:CPU:0*
_output_shapes
:*e
value\BZBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
�
RestoreV2_6	RestoreV2ConstRestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_6IdentityRestoreV2_6*
_output_shapes
:*
T0
]
AssignVariableOp_6AssignVariableOptraining/Adam/dense_1/bias/m
Identity_6*
dtype0
�
RestoreV2_7/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
�
RestoreV2_7	RestoreV2ConstRestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_7IdentityRestoreV2_7*
_output_shapes
:*
T0
]
AssignVariableOp_7AssignVariableOptraining/Adam/dense_1/bias/v
Identity_7*
dtype0
�
RestoreV2_8/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
�
RestoreV2_8	RestoreV2ConstRestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_8IdentityRestoreV2_8*
T0*
_output_shapes
:
_
AssignVariableOp_8AssignVariableOptraining/Adam/dense_2/kernel/m
Identity_8*
dtype0
�
RestoreV2_9/tensor_namesConst"/device:CPU:0*
_output_shapes
:*g
value^B\BRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
�
RestoreV2_9	RestoreV2ConstRestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_9IdentityRestoreV2_9*
T0*
_output_shapes
:
_
AssignVariableOp_9AssignVariableOptraining/Adam/dense_2/kernel/v
Identity_9*
dtype0
�
RestoreV2_10/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
�
RestoreV2_10	RestoreV2ConstRestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_10IdentityRestoreV2_10*
T0*
_output_shapes
:
_
AssignVariableOp_10AssignVariableOptraining/Adam/dense_2/bias/mIdentity_10*
dtype0
�
RestoreV2_11/tensor_namesConst"/device:CPU:0*
_output_shapes
:*e
value\BZBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
�
RestoreV2_11	RestoreV2ConstRestoreV2_11/tensor_namesRestoreV2_11/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_11IdentityRestoreV2_11*
T0*
_output_shapes
:
_
AssignVariableOp_11AssignVariableOptraining/Adam/dense_2/bias/vIdentity_11*
dtype0
�
RestoreV2_12/tensor_namesConst"/device:CPU:0*�
value�B�B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
�
RestoreV2_12/shape_and_slicesConst"/device:CPU:0*)
value BB B B B B B B B B B B *
dtype0*
_output_shapes
:
�
RestoreV2_12	RestoreV2ConstRestoreV2_12/tensor_namesRestoreV2_12/shape_and_slices"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2	
H
Identity_12IdentityRestoreV2_12*
T0*
_output_shapes
:
M
AssignVariableOp_12AssignVariableOp
dense/biasIdentity_12*
dtype0
J
Identity_13IdentityRestoreV2_12:1*
_output_shapes
:*
T0
O
AssignVariableOp_13AssignVariableOpdense/kernelIdentity_13*
dtype0
J
Identity_14IdentityRestoreV2_12:2*
_output_shapes
:*
T0
O
AssignVariableOp_14AssignVariableOpdense_1/biasIdentity_14*
dtype0
J
Identity_15IdentityRestoreV2_12:3*
T0*
_output_shapes
:
Q
AssignVariableOp_15AssignVariableOpdense_1/kernelIdentity_15*
dtype0
J
Identity_16IdentityRestoreV2_12:4*
T0*
_output_shapes
:
O
AssignVariableOp_16AssignVariableOpdense_2/biasIdentity_16*
dtype0
J
Identity_17IdentityRestoreV2_12:5*
T0*
_output_shapes
:
Q
AssignVariableOp_17AssignVariableOpdense_2/kernelIdentity_17*
dtype0
J
Identity_18IdentityRestoreV2_12:6*
_output_shapes
:*
T0
W
AssignVariableOp_18AssignVariableOptraining/Adam/beta_1Identity_18*
dtype0
J
Identity_19IdentityRestoreV2_12:7*
_output_shapes
:*
T0
W
AssignVariableOp_19AssignVariableOptraining/Adam/beta_2Identity_19*
dtype0
J
Identity_20IdentityRestoreV2_12:8*
T0*
_output_shapes
:
V
AssignVariableOp_20AssignVariableOptraining/Adam/decayIdentity_20*
dtype0
J
Identity_21IdentityRestoreV2_12:9*
T0	*
_output_shapes
:
G
AssignVariableOp_21AssignVariableOpiterIdentity_21*
dtype0	
K
Identity_22IdentityRestoreV2_12:10*
T0*
_output_shapes
:
^
AssignVariableOp_22AssignVariableOptraining/Adam/learning_rateIdentity_22*
dtype0
P
VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 
P
VarIsInitializedOp_1VarIsInitializedOpdense_2/bias*
_output_shapes
: 
H
VarIsInitializedOp_2VarIsInitializedOpiter*
_output_shapes
: 
b
VarIsInitializedOp_3VarIsInitializedOptraining/Adam/dense_2/kernel/m*
_output_shapes
: 
`
VarIsInitializedOp_4VarIsInitializedOptraining/Adam/dense_2/bias/m*
_output_shapes
: 
^
VarIsInitializedOp_5VarIsInitializedOptraining/Adam/dense/bias/v*
_output_shapes
: 
P
VarIsInitializedOp_6VarIsInitializedOpdense_1/bias*
_output_shapes
: 
`
VarIsInitializedOp_7VarIsInitializedOptraining/Adam/dense/kernel/v*
_output_shapes
: 
b
VarIsInitializedOp_8VarIsInitializedOptraining/Adam/dense_1/kernel/v*
_output_shapes
: 
I
VarIsInitializedOp_9VarIsInitializedOpcount*
_output_shapes
: 
_
VarIsInitializedOp_10VarIsInitializedOptraining/Adam/dense/bias/m*
_output_shapes
: 
a
VarIsInitializedOp_11VarIsInitializedOptraining/Adam/dense_1/bias/m*
_output_shapes
: 
Y
VarIsInitializedOp_12VarIsInitializedOptraining/Adam/beta_2*
_output_shapes
: 
a
VarIsInitializedOp_13VarIsInitializedOptraining/Adam/dense_1/bias/v*
_output_shapes
: 
Q
VarIsInitializedOp_14VarIsInitializedOpdense/kernel*
_output_shapes
: 
S
VarIsInitializedOp_15VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
O
VarIsInitializedOp_16VarIsInitializedOp
dense/bias*
_output_shapes
: 
X
VarIsInitializedOp_17VarIsInitializedOptraining/Adam/decay*
_output_shapes
: 
c
VarIsInitializedOp_18VarIsInitializedOptraining/Adam/dense_1/kernel/m*
_output_shapes
: 
c
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/dense_2/kernel/v*
_output_shapes
: 
a
VarIsInitializedOp_20VarIsInitializedOptraining/Adam/dense/kernel/m*
_output_shapes
: 
Y
VarIsInitializedOp_21VarIsInitializedOptraining/Adam/beta_1*
_output_shapes
: 
a
VarIsInitializedOp_22VarIsInitializedOptraining/Adam/dense_2/bias/v*
_output_shapes
: 
J
VarIsInitializedOp_23VarIsInitializedOptotal*
_output_shapes
: 
`
VarIsInitializedOp_24VarIsInitializedOptraining/Adam/learning_rate*
_output_shapes
: 
�
initNoOp^count/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^iter/Assign^total/Assign^training/Adam/beta_1/Assign^training/Adam/beta_2/Assign^training/Adam/decay/Assign"^training/Adam/dense/bias/m/Assign"^training/Adam/dense/bias/v/Assign$^training/Adam/dense/kernel/m/Assign$^training/Adam/dense/kernel/v/Assign$^training/Adam/dense_1/bias/m/Assign$^training/Adam/dense_1/bias/v/Assign&^training/Adam/dense_1/kernel/m/Assign&^training/Adam/dense_1/kernel/v/Assign$^training/Adam/dense_2/bias/m/Assign$^training/Adam/dense_2/bias/v/Assign&^training/Adam/dense_2/kernel/m/Assign&^training/Adam/dense_2/kernel/v/Assign#^training/Adam/learning_rate/Assign
W
Const_1Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_2Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
�
StringJoin/inputs_1Const"/device:CPU:0*<
value3B1 B+_temp_539451d922024e1690522a6890f8785c/part*
dtype0*
_output_shapes
: 
f

StringJoin
StringJoinConst_2StringJoin/inputs_1"/device:CPU:0*
_output_shapes
: *
N
L

num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
f
ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
x
ShardedFilenameShardedFilename
StringJoinShardedFilename/shard
num_shards"/device:CPU:0*
_output_shapes
: 
�
SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
SaveV2SaveV2ShardedFilenameSaveV2/tensor_namesSaveV2/shape_and_slices dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpiter/Read/ReadVariableOp(training/Adam/beta_1/Read/ReadVariableOp(training/Adam/beta_2/Read/ReadVariableOp'training/Adam/decay/Read/ReadVariableOp/training/Adam/learning_rate/Read/ReadVariableOp0training/Adam/dense/kernel/m/Read/ReadVariableOp.training/Adam/dense/bias/m/Read/ReadVariableOp2training/Adam/dense_1/kernel/m/Read/ReadVariableOp0training/Adam/dense_1/bias/m/Read/ReadVariableOp2training/Adam/dense_2/kernel/m/Read/ReadVariableOp0training/Adam/dense_2/bias/m/Read/ReadVariableOp0training/Adam/dense/kernel/v/Read/ReadVariableOp.training/Adam/dense/bias/v/Read/ReadVariableOp2training/Adam/dense_1/kernel/v/Read/ReadVariableOp0training/Adam/dense_1/bias/v/Read/ReadVariableOp2training/Adam/dense_2/kernel/v/Read/ReadVariableOp0training/Adam/dense_2/bias/v/Read/ReadVariableOp"/device:CPU:0*%
dtypes
2	
h
ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
|
ShardedFilename_1ShardedFilename
StringJoinShardedFilename_1/shard
num_shards"/device:CPU:0*
_output_shapes
: 
�
SaveV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:
q
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
�
SaveV2_1SaveV2ShardedFilename_1SaveV2_1/tensor_namesSaveV2_1/shape_and_slicesConst_1"/device:CPU:0*
dtypes
2
�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilenameShardedFilename_1^SaveV2	^SaveV2_1"/device:CPU:0*
_output_shapes
:*
T0*
N
h
MergeV2CheckpointsMergeV2Checkpoints&MergeV2Checkpoints/checkpoint_prefixesConst_2"/device:CPU:0
e
Identity_23IdentityConst_2^MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0
W
div_no_nan/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
dtype0*
_output_shapes
: 
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
D
Identity_24Identity
div_no_nan*
_output_shapes
: *
T0
}
metric_op_wrapperConst'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
valueB *
dtype0
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
�
save/SaveV2/tensor_namesConst*�
value�B�B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesdense/bias/Read/ReadVariableOp.training/Adam/dense/bias/m/Read/ReadVariableOp.training/Adam/dense/bias/v/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp0training/Adam/dense/kernel/m/Read/ReadVariableOp0training/Adam/dense/kernel/v/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp0training/Adam/dense_1/bias/m/Read/ReadVariableOp0training/Adam/dense_1/bias/v/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp2training/Adam/dense_1/kernel/m/Read/ReadVariableOp2training/Adam/dense_1/kernel/v/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp0training/Adam/dense_2/bias/m/Read/ReadVariableOp0training/Adam/dense_2/bias/v/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp2training/Adam/dense_2/kernel/m/Read/ReadVariableOp2training/Adam/dense_2/kernel/v/Read/ReadVariableOp(training/Adam/beta_1/Read/ReadVariableOp(training/Adam/beta_2/Read/ReadVariableOp'training/Adam/decay/Read/ReadVariableOpiter/Read/ReadVariableOp/training/Adam/learning_rate/Read/ReadVariableOp*%
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
Q
save/AssignVariableOpAssignVariableOp
dense/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
e
save/AssignVariableOp_1AssignVariableOptraining/Adam/dense/bias/msave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
e
save/AssignVariableOp_2AssignVariableOptraining/Adam/dense/bias/vsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
W
save/AssignVariableOp_3AssignVariableOpdense/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
_output_shapes
:*
T0
g
save/AssignVariableOp_4AssignVariableOptraining/Adam/dense/kernel/msave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
g
save/AssignVariableOp_5AssignVariableOptraining/Adam/dense/kernel/vsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
W
save/AssignVariableOp_6AssignVariableOpdense_1/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
_output_shapes
:*
T0
g
save/AssignVariableOp_7AssignVariableOptraining/Adam/dense_1/bias/msave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
_output_shapes
:*
T0
g
save/AssignVariableOp_8AssignVariableOptraining/Adam/dense_1/bias/vsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
Y
save/AssignVariableOp_9AssignVariableOpdense_1/kernelsave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
_output_shapes
:*
T0
k
save/AssignVariableOp_10AssignVariableOptraining/Adam/dense_1/kernel/msave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
k
save/AssignVariableOp_11AssignVariableOptraining/Adam/dense_1/kernel/vsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
_output_shapes
:*
T0
Y
save/AssignVariableOp_12AssignVariableOpdense_2/biassave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
T0*
_output_shapes
:
i
save/AssignVariableOp_13AssignVariableOptraining/Adam/dense_2/bias/msave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
_output_shapes
:*
T0
i
save/AssignVariableOp_14AssignVariableOptraining/Adam/dense_2/bias/vsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
_output_shapes
:*
T0
[
save/AssignVariableOp_15AssignVariableOpdense_2/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
_output_shapes
:*
T0
k
save/AssignVariableOp_16AssignVariableOptraining/Adam/dense_2/kernel/msave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
T0*
_output_shapes
:
k
save/AssignVariableOp_17AssignVariableOptraining/Adam/dense_2/kernel/vsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
T0*
_output_shapes
:
a
save/AssignVariableOp_18AssignVariableOptraining/Adam/beta_1save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
T0*
_output_shapes
:
a
save/AssignVariableOp_19AssignVariableOptraining/Adam/beta_2save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:20*
T0*
_output_shapes
:
`
save/AssignVariableOp_20AssignVariableOptraining/Adam/decaysave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:21*
T0	*
_output_shapes
:
Q
save/AssignVariableOp_21AssignVariableOpitersave/Identity_21*
dtype0	
R
save/Identity_22Identitysave/RestoreV2:22*
T0*
_output_shapes
:
h
save/AssignVariableOp_22AssignVariableOptraining/Adam/learning_ratesave/Identity_22*
dtype0
�
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
,
init_1NoOp^count/Assign^total/Assign"wD
save/Const:0save/control_dependency:0save/restore_all 5 @F8"�
trainable_variables��
z
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2+dense/kernel/Initializer/truncated_normal:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
�
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
�
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08"�
local_variables��
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"�
	variables��
z
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2+dense/kernel/Initializer/truncated_normal:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
�
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
�
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H
�
training/Adam/beta_1:0training/Adam/beta_1/Assign*training/Adam/beta_1/Read/ReadVariableOp:0(20training/Adam/beta_1/Initializer/initial_value:0H
�
training/Adam/beta_2:0training/Adam/beta_2/Assign*training/Adam/beta_2/Read/ReadVariableOp:0(20training/Adam/beta_2/Initializer/initial_value:0H
�
training/Adam/decay:0training/Adam/decay/Assign)training/Adam/decay/Read/ReadVariableOp:0(2/training/Adam/decay/Initializer/initial_value:0H
�
training/Adam/learning_rate:0"training/Adam/learning_rate/Assign1training/Adam/learning_rate/Read/ReadVariableOp:0(27training/Adam/learning_rate/Initializer/initial_value:0H
�
training/Adam/dense/kernel/m:0#training/Adam/dense/kernel/m/Assign2training/Adam/dense/kernel/m/Read/ReadVariableOp:0(20training/Adam/dense/kernel/m/Initializer/zeros:0
�
training/Adam/dense/bias/m:0!training/Adam/dense/bias/m/Assign0training/Adam/dense/bias/m/Read/ReadVariableOp:0(2.training/Adam/dense/bias/m/Initializer/zeros:0
�
 training/Adam/dense_1/kernel/m:0%training/Adam/dense_1/kernel/m/Assign4training/Adam/dense_1/kernel/m/Read/ReadVariableOp:0(22training/Adam/dense_1/kernel/m/Initializer/zeros:0
�
training/Adam/dense_1/bias/m:0#training/Adam/dense_1/bias/m/Assign2training/Adam/dense_1/bias/m/Read/ReadVariableOp:0(20training/Adam/dense_1/bias/m/Initializer/zeros:0
�
 training/Adam/dense_2/kernel/m:0%training/Adam/dense_2/kernel/m/Assign4training/Adam/dense_2/kernel/m/Read/ReadVariableOp:0(22training/Adam/dense_2/kernel/m/Initializer/zeros:0
�
training/Adam/dense_2/bias/m:0#training/Adam/dense_2/bias/m/Assign2training/Adam/dense_2/bias/m/Read/ReadVariableOp:0(20training/Adam/dense_2/bias/m/Initializer/zeros:0
�
training/Adam/dense/kernel/v:0#training/Adam/dense/kernel/v/Assign2training/Adam/dense/kernel/v/Read/ReadVariableOp:0(20training/Adam/dense/kernel/v/Initializer/zeros:0
�
training/Adam/dense/bias/v:0!training/Adam/dense/bias/v/Assign0training/Adam/dense/bias/v/Read/ReadVariableOp:0(2.training/Adam/dense/bias/v/Initializer/zeros:0
�
 training/Adam/dense_1/kernel/v:0%training/Adam/dense_1/kernel/v/Assign4training/Adam/dense_1/kernel/v/Read/ReadVariableOp:0(22training/Adam/dense_1/kernel/v/Initializer/zeros:0
�
training/Adam/dense_1/bias/v:0#training/Adam/dense_1/bias/v/Assign2training/Adam/dense_1/bias/v/Read/ReadVariableOp:0(20training/Adam/dense_1/bias/v/Initializer/zeros:0
�
 training/Adam/dense_2/kernel/v:0%training/Adam/dense_2/kernel/v/Assign4training/Adam/dense_2/kernel/v/Read/ReadVariableOp:0(22training/Adam/dense_2/kernel/v/Initializer/zeros:0
�
training/Adam/dense_2/bias/v:0#training/Adam/dense_2/bias/v/Assign2training/Adam/dense_2/bias/v/Read/ReadVariableOp:0(20training/Adam/dense_2/bias/v/Initializer/zeros:0*Q
__saved_model_train_op75
__saved_model_train_op
training_1/group_deps*�
train�
B
dense_2_target0
dense_2_target:0������������������
3
dense_input$
dense_input:0���������9
metrics/accuracy/update_op
metric_op_wrapper:0 -
metrics/accuracy/value
Identity_24:0 ?
predictions/dense_2(
dense_2/Sigmoid:0���������
loss

loss/mul:0 tensorflow/supervised/training*@
__saved_model_init_op'%
__saved_model_init_op
init_1��
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype�
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(�
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
.
Log1p
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
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
2	�
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�
9
VarIsInitializedOp
resource
is_initialized
�
&
	ZerosLike
x"T
y"T"	
Ttype"eval*2.0.02v2.0.0-rc2-26-g64c3d388��
n
dense_inputPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
�
/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *
_class
loc:@dense/kernel
�
.dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
�
0dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *d'?*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
�
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:*
T0*
_class
loc:@dense/kernel
�
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes

:*
T0*
_class
loc:@dense/kernel
�
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
�
dense/kernelVarHandleOp*
shared_namedense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: *
shape
:
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
m
dense/kernel/AssignAssignVariableOpdense/kernel)dense/kernel/Initializer/truncated_normal*
dtype0
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:
�
dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
�

dense/biasVarHandleOp*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: *
shape:*
shared_name
dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:
r
dense/MatMulMatMuldense_inputdense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
v
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:���������
S

dense/ReluReludense/BiasAdd*
T0*'
_output_shapes
:���������
�
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
�
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *�KF�*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
�
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *�KF?*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
�
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*
T0*!
_class
loc:@dense_1/kernel
�
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_1/kernel
�
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
_output_shapes

:*
T0
�
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
_output_shapes

:*
T0
�
dense_1/kernelVarHandleOp*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: *
shape
:*
shared_namedense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
�
dense_1/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
�
dense_1/biasVarHandleOp*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:
u
dense_1/MatMulMatMul
dense/Reludense_1/MatMul/ReadVariableOp*'
_output_shapes
:���������*
T0
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
|
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:���������
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:���������
�
/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"      *!
_class
loc:@dense_2/kernel*
dtype0
�
-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *  ��*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
�
-dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  �?*!
_class
loc:@dense_2/kernel*
dtype0
�
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:
�
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_2/kernel
�
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:
�
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
_output_shapes

:*
T0
�
dense_2/kernelVarHandleOp*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: *
shape
:*
shared_namedense_2/kernel
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 
q
dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*
dtype0
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
�
dense_2/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
�
dense_2/biasVarHandleOp*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_2/bias
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
b
dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
dtype0
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
l
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:
w
dense_2/MatMulMatMuldense_1/Reludense_2/MatMul/ReadVariableOp*'
_output_shapes
:���������*
T0
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
|
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:���������*
T0
]
dense_2/SigmoidSigmoiddense_2/BiasAdd*'
_output_shapes
:���������*
T0
�
dense_2_targetPlaceholder*%
shape:������������������*
dtype0*0
_output_shapes
:������������������
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
x
totalVarHandleOp*
shared_nametotal*
_class

loc:@total*
dtype0*
_output_shapes
: *
shape: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *
_class

loc:@count*
dtype0
x
countVarHandleOp*
_output_shapes
: *
shape: *
shared_namecount*
_class

loc:@count*
dtype0
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
\
metrics/accuracy/Cast/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 

metrics/accuracy/GreaterGreaterdense_2/Sigmoidmetrics/accuracy/Cast/x*
T0*'
_output_shapes
:���������
z
metrics/accuracy/Cast_1Castmetrics/accuracy/Greater*

SrcT0
*'
_output_shapes
:���������*

DstT0
�
metrics/accuracy/EqualEqualdense_2_targetmetrics/accuracy/Cast_1*0
_output_shapes
:������������������*
T0
�
metrics/accuracy/Cast_2Castmetrics/accuracy/Equal*0
_output_shapes
:������������������*

DstT0*

SrcT0

r
'metrics/accuracy/Mean/reduction_indicesConst*
_output_shapes
: *
valueB :
���������*
dtype0
�
metrics/accuracy/MeanMeanmetrics/accuracy/Cast_2'metrics/accuracy/Mean/reduction_indices*
T0*#
_output_shapes
:���������
`
metrics/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
k
metrics/accuracy/SumSummetrics/accuracy/Meanmetrics/accuracy/Const*
T0*
_output_shapes
: 
e
$metrics/accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/accuracy/Sum*
dtype0
�
metrics/accuracy/ReadVariableOpReadVariableOptotal%^metrics/accuracy/AssignAddVariableOp^metrics/accuracy/Sum*
dtype0*
_output_shapes
: 
U
metrics/accuracy/SizeSizemetrics/accuracy/Mean*
T0*
_output_shapes
: 
f
metrics/accuracy/Cast_3Castmetrics/accuracy/Size*
_output_shapes
: *

DstT0*

SrcT0
�
&metrics/accuracy/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/accuracy/Cast_3%^metrics/accuracy/AssignAddVariableOp*
dtype0
�
!metrics/accuracy/ReadVariableOp_1ReadVariableOpcount%^metrics/accuracy/AssignAddVariableOp'^metrics/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
�
*metrics/accuracy/div_no_nan/ReadVariableOpReadVariableOptotal'^metrics/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
�
,metrics/accuracy/div_no_nan/ReadVariableOp_1ReadVariableOpcount'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
�
metrics/accuracy/div_no_nanDivNoNan*metrics/accuracy/div_no_nan/ReadVariableOp,metrics/accuracy/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
c
metrics/accuracy/IdentityIdentitymetrics/accuracy/div_no_nan*
T0*
_output_shapes
: 
\
loss/dense_2_loss/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
*loss/dense_2_loss/logistic_loss/zeros_like	ZerosLikedense_2/BiasAdd*
T0*'
_output_shapes
:���������
�
,loss/dense_2_loss/logistic_loss/GreaterEqualGreaterEqualdense_2/BiasAdd*loss/dense_2_loss/logistic_loss/zeros_like*'
_output_shapes
:���������*
T0
�
&loss/dense_2_loss/logistic_loss/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualdense_2/BiasAdd*loss/dense_2_loss/logistic_loss/zeros_like*'
_output_shapes
:���������*
T0
m
#loss/dense_2_loss/logistic_loss/NegNegdense_2/BiasAdd*'
_output_shapes
:���������*
T0
�
(loss/dense_2_loss/logistic_loss/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqual#loss/dense_2_loss/logistic_loss/Negdense_2/BiasAdd*
T0*'
_output_shapes
:���������
�
#loss/dense_2_loss/logistic_loss/mulMuldense_2/BiasAdddense_2_target*
T0*0
_output_shapes
:������������������
�
#loss/dense_2_loss/logistic_loss/subSub&loss/dense_2_loss/logistic_loss/Select#loss/dense_2_loss/logistic_loss/mul*
T0*0
_output_shapes
:������������������
�
#loss/dense_2_loss/logistic_loss/ExpExp(loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:���������*
T0
�
%loss/dense_2_loss/logistic_loss/Log1pLog1p#loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:���������*
T0
�
loss/dense_2_loss/logistic_lossAdd#loss/dense_2_loss/logistic_loss/sub%loss/dense_2_loss/logistic_loss/Log1p*
T0*0
_output_shapes
:������������������
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/MeanMeanloss/dense_2_loss/logistic_loss(loss/dense_2_loss/Mean/reduction_indices*
T0*#
_output_shapes
:���������
k
&loss/dense_2_loss/weighted_loss/Cast/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
Tloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
�
Sloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
value	B : *
dtype0
�
Sloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/dense_2_loss/Mean*
T0*
_output_shapes
:
�
Rloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
j
bloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
�
Aloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeloss/dense_2_loss/Meanc^loss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
�
Aloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ConstConstc^loss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
;loss/dense_2_loss/weighted_loss/broadcast_weights/ones_likeFillAloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ShapeAloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:���������*
T0
�
1loss/dense_2_loss/weighted_loss/broadcast_weightsMul&loss/dense_2_loss/weighted_loss/Cast/x;loss/dense_2_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:���������
�
#loss/dense_2_loss/weighted_loss/MulMulloss/dense_2_loss/Mean1loss/dense_2_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:���������
c
loss/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
}
loss/dense_2_loss/SumSum#loss/dense_2_loss/weighted_loss/Mulloss/dense_2_loss/Const_1*
_output_shapes
: *
T0
l
loss/dense_2_loss/num_elementsSize#loss/dense_2_loss/weighted_loss/Mul*
T0*
_output_shapes
: 
{
#loss/dense_2_loss/num_elements/CastCastloss/dense_2_loss/num_elements*
_output_shapes
: *

DstT0*

SrcT0
\
loss/dense_2_loss/Const_2Const*
dtype0*
_output_shapes
: *
valueB 
q
loss/dense_2_loss/Sum_1Sumloss/dense_2_loss/Sumloss/dense_2_loss/Const_2*
T0*
_output_shapes
: 
�
loss/dense_2_loss/valueDivNoNanloss/dense_2_loss/Sum_1#loss/dense_2_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
U
loss/mulMul
loss/mul/xloss/dense_2_loss/value*
T0*
_output_shapes
: 
q
iter/Initializer/zerosConst*
value	B	 R *
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
u
iterVarHandleOp*
_class
	loc:@iter*
dtype0	*
_output_shapes
: *
shape: *
shared_nameiter
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
J
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	
U
iter/Read/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
(
evaluation/group_depsNoOp	^loss/mul
Z
ConstConst"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*�
value�B�B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
~
RestoreV2/shape_and_slicesConst"/device:CPU:0*!
valueBB B B B B B B *
dtype0*
_output_shapes
:
�
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes
	2	*0
_output_shapes
:::::::
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
G
AssignVariableOpAssignVariableOp
dense/biasIdentity*
dtype0
F

Identity_1IdentityRestoreV2:1*
T0*
_output_shapes
:
M
AssignVariableOp_1AssignVariableOpdense/kernel
Identity_1*
dtype0
F

Identity_2IdentityRestoreV2:2*
_output_shapes
:*
T0
M
AssignVariableOp_2AssignVariableOpdense_1/bias
Identity_2*
dtype0
F

Identity_3IdentityRestoreV2:3*
T0*
_output_shapes
:
O
AssignVariableOp_3AssignVariableOpdense_1/kernel
Identity_3*
dtype0
F

Identity_4IdentityRestoreV2:4*
_output_shapes
:*
T0
M
AssignVariableOp_4AssignVariableOpdense_2/bias
Identity_4*
dtype0
F

Identity_5IdentityRestoreV2:5*
T0*
_output_shapes
:
O
AssignVariableOp_5AssignVariableOpdense_2/kernel
Identity_5*
dtype0
F

Identity_6IdentityRestoreV2:6*
T0	*
_output_shapes
:
E
AssignVariableOp_6AssignVariableOpiter
Identity_6*
dtype0	
N
VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
P
VarIsInitializedOp_1VarIsInitializedOpdense_1/bias*
_output_shapes
: 
R
VarIsInitializedOp_2VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
N
VarIsInitializedOp_3VarIsInitializedOp
dense/bias*
_output_shapes
: 
R
VarIsInitializedOp_4VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
I
VarIsInitializedOp_5VarIsInitializedOpcount*
_output_shapes
: 
H
VarIsInitializedOp_6VarIsInitializedOpiter*
_output_shapes
: 
I
VarIsInitializedOp_7VarIsInitializedOptotal*
_output_shapes
: 
P
VarIsInitializedOp_8VarIsInitializedOpdense/kernel*
_output_shapes
: 
�
initNoOp^count/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^iter/Assign^total/Assign
W
div_no_nan/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
dtype0*
_output_shapes
: 
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
C

Identity_7Identity
div_no_nan*
T0*
_output_shapes
: 
}
metric_op_wrapperConst'^metrics/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: *
valueB 
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
�
save/SaveV2/tensor_namesConst*�
value�B�B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
q
save/SaveV2/shape_and_slicesConst*!
valueBB B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOpiter/Read/ReadVariableOp*
dtypes
	2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*!
valueBB B B B B B B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2	
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
Q
save/AssignVariableOpAssignVariableOp
dense/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
_output_shapes
:*
T0
W
save/AssignVariableOp_1AssignVariableOpdense/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
_output_shapes
:*
T0
W
save/AssignVariableOp_2AssignVariableOpdense_1/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Y
save/AssignVariableOp_3AssignVariableOpdense_1/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
W
save/AssignVariableOp_4AssignVariableOpdense_2/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
_output_shapes
:*
T0
Y
save/AssignVariableOp_5AssignVariableOpdense_2/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
_output_shapes
:*
T0	
O
save/AssignVariableOp_6AssignVariableOpitersave/Identity_6*
dtype0	
�
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6
,
init_1NoOp^count/Assign^total/Assign"wD
save/Const:0save/control_dependency:0save/restore_all 5 @F8"�
trainable_variables��
z
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2+dense/kernel/Initializer/truncated_normal:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
�
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
�
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08"�
local_variables��
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"�
	variables��
z
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2+dense/kernel/Initializer/truncated_normal:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
�
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
�
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H*�
eval�
B
dense_2_target0
dense_2_target:0������������������
3
dense_input$
dense_input:0���������?
predictions/dense_2(
dense_2/Sigmoid:0���������
loss

loss/mul:0 9
metrics/accuracy/update_op
metric_op_wrapper:0 ,
metrics/accuracy/value
Identity_7:0 tensorflow/supervised/eval*@
__saved_model_init_op'%
__saved_model_init_op
init_1׌
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
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
2	�
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
0
Sigmoid
x"T
y"T"
Ttype:

2
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.0.02v2.0.0-rc2-26-g64c3d388�q
n
dense_inputPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
�
/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
�
.dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
�
0dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *d'?*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
�
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
T0*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:
�
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
�
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
�
dense/kernelVarHandleOp*
shared_namedense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: *
shape
:
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
m
dense/kernel/AssignAssignVariableOpdense/kernel)dense/kernel/Initializer/truncated_normal*
dtype0
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:
�
dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
�

dense/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:*
shared_name
dense/bias*
_class
loc:@dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:
r
dense/MatMulMatMuldense_inputdense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
v
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*'
_output_shapes
:���������*
T0
S

dense/ReluReludense/BiasAdd*
T0*'
_output_shapes
:���������
�
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
�
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *�KF�*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
�
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *�KF?*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
�
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
_output_shapes

:*
T0*!
_class
loc:@dense_1/kernel*
dtype0
�
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
T0
�
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
�
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
�
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: *
shape
:
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:
�
dense_1/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
�
dense_1/biasVarHandleOp*
shape:*
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:
u
dense_1/MatMulMatMul
dense/Reludense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
|
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:���������
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:���������
�
/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:
�
-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *  ��*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
�
-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *  �?*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
�
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:
�
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_2/kernel
�
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:
�
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:
�
dense_2/kernelVarHandleOp*
shape
:*
shared_namedense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 
q
dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*
dtype0
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:
�
dense_2/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
�
dense_2/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_2/bias*
_class
loc:@dense_2/bias
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
b
dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
dtype0
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
l
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:
w
dense_2/MatMulMatMuldense_1/Reludense_2/MatMul/ReadVariableOp*'
_output_shapes
:���������*
T0
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
|
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:���������
]
dense_2/SigmoidSigmoiddense_2/BiasAdd*
T0*'
_output_shapes
:���������
,
predict/group_depsNoOp^dense_2/Sigmoid
Z
ConstConst"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
|
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B B *
dtype0*
_output_shapes
:
�
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes

2*,
_output_shapes
::::::
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
G
AssignVariableOpAssignVariableOp
dense/biasIdentity*
dtype0
F

Identity_1IdentityRestoreV2:1*
T0*
_output_shapes
:
M
AssignVariableOp_1AssignVariableOpdense/kernel
Identity_1*
dtype0
F

Identity_2IdentityRestoreV2:2*
T0*
_output_shapes
:
M
AssignVariableOp_2AssignVariableOpdense_1/bias
Identity_2*
dtype0
F

Identity_3IdentityRestoreV2:3*
T0*
_output_shapes
:
O
AssignVariableOp_3AssignVariableOpdense_1/kernel
Identity_3*
dtype0
F

Identity_4IdentityRestoreV2:4*
T0*
_output_shapes
:
M
AssignVariableOp_4AssignVariableOpdense_2/bias
Identity_4*
dtype0
F

Identity_5IdentityRestoreV2:5*
T0*
_output_shapes
:
O
AssignVariableOp_5AssignVariableOpdense_2/kernel
Identity_5*
dtype0
N
VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
R
VarIsInitializedOp_1VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
N
VarIsInitializedOp_2VarIsInitializedOp
dense/bias*
_output_shapes
: 
P
VarIsInitializedOp_3VarIsInitializedOpdense_1/bias*
_output_shapes
: 
R
VarIsInitializedOp_4VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_5VarIsInitializedOpdense_2/bias*
_output_shapes
: 
�
initNoOp^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
�
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
o
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB B B B B B 
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp*
dtypes

2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*,
_output_shapes
::::::*
dtypes

2
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
Q
save/AssignVariableOpAssignVariableOp
dense/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
W
save/AssignVariableOp_1AssignVariableOpdense/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
_output_shapes
:*
T0
W
save/AssignVariableOp_2AssignVariableOpdense_1/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Y
save/AssignVariableOp_3AssignVariableOpdense_1/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
_output_shapes
:*
T0
W
save/AssignVariableOp_4AssignVariableOpdense_2/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
Y
save/AssignVariableOp_5AssignVariableOpdense_2/kernelsave/Identity_5*
dtype0
�
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5

init_1NoOp"wD
save/Const:0save/control_dependency:0save/restore_all 5 @F8"�
	variables��
z
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2+dense/kernel/Initializer/truncated_normal:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
�
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
�
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08"�
trainable_variables��
z
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2+dense/kernel/Initializer/truncated_normal:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
�
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
�
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08*�
serving_default�
3
dense_input$
dense_input:0���������3
dense_2(
dense_2/Sigmoid:0���������tensorflow/serving/predict*@
__saved_model_init_op'%
__saved_model_init_op
init_1