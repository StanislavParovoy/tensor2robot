¯à

:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
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
;
Elu
features"T
activations"T"
Ttype:
2
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.14.02unknown8Ö

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
shape: *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 

global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
t
measured_positionPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
]
strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
_
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
_
strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
½
strided_sliceStridedSlicemeasured_positionstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
_output_shapes
:*
Index0*
shrink_axis_mask
_
strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Å
strided_slice_1StridedSlicemeasured_positionstrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
T0*
_output_shapes
:*
Index0*
shrink_axis_mask
_
strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB: 
a
strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
a
strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Å
strided_slice_2StridedSlicemeasured_positionstrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
_output_shapes
:*
Index0*
shrink_axis_mask*
T0
½
<MockT2RModel.dense.0/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"       *.
_class$
" loc:@MockT2RModel.dense.0/kernel
¯
:MockT2RModel.dense.0/kernel/Initializer/random_uniform/minConst*
valueB
 *÷üÓ¾*.
_class$
" loc:@MockT2RModel.dense.0/kernel*
dtype0*
_output_shapes
: 
¯
:MockT2RModel.dense.0/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *÷üÓ>*.
_class$
" loc:@MockT2RModel.dense.0/kernel
ù
DMockT2RModel.dense.0/kernel/Initializer/random_uniform/RandomUniformRandomUniform<MockT2RModel.dense.0/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: *
T0*.
_class$
" loc:@MockT2RModel.dense.0/kernel

:MockT2RModel.dense.0/kernel/Initializer/random_uniform/subSub:MockT2RModel.dense.0/kernel/Initializer/random_uniform/max:MockT2RModel.dense.0/kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@MockT2RModel.dense.0/kernel*
_output_shapes
: 

:MockT2RModel.dense.0/kernel/Initializer/random_uniform/mulMulDMockT2RModel.dense.0/kernel/Initializer/random_uniform/RandomUniform:MockT2RModel.dense.0/kernel/Initializer/random_uniform/sub*
T0*.
_class$
" loc:@MockT2RModel.dense.0/kernel*
_output_shapes

: 

6MockT2RModel.dense.0/kernel/Initializer/random_uniformAdd:MockT2RModel.dense.0/kernel/Initializer/random_uniform/mul:MockT2RModel.dense.0/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*.
_class$
" loc:@MockT2RModel.dense.0/kernel

MockT2RModel.dense.0/kernel
VariableV2*
dtype0*
_output_shapes

: *
shape
: *.
_class$
" loc:@MockT2RModel.dense.0/kernel
Ú
"MockT2RModel.dense.0/kernel/AssignAssignMockT2RModel.dense.0/kernel6MockT2RModel.dense.0/kernel/Initializer/random_uniform*
_output_shapes

: *
T0*.
_class$
" loc:@MockT2RModel.dense.0/kernel
¢
 MockT2RModel.dense.0/kernel/readIdentityMockT2RModel.dense.0/kernel*
_output_shapes

: *
T0*.
_class$
" loc:@MockT2RModel.dense.0/kernel
¦
+MockT2RModel.dense.0/bias/Initializer/zerosConst*
valueB *    *,
_class"
 loc:@MockT2RModel.dense.0/bias*
dtype0*
_output_shapes
: 

MockT2RModel.dense.0/bias
VariableV2*
dtype0*
_output_shapes
: *
shape: *,
_class"
 loc:@MockT2RModel.dense.0/bias
Å
 MockT2RModel.dense.0/bias/AssignAssignMockT2RModel.dense.0/bias+MockT2RModel.dense.0/bias/Initializer/zeros*
_output_shapes
: *
T0*,
_class"
 loc:@MockT2RModel.dense.0/bias

MockT2RModel.dense.0/bias/readIdentityMockT2RModel.dense.0/bias*
_output_shapes
: *
T0*,
_class"
 loc:@MockT2RModel.dense.0/bias

MockT2RModel.dense.0/MatMulMatMulmeasured_position MockT2RModel.dense.0/kernel/read*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

MockT2RModel.dense.0/BiasAddBiasAddMockT2RModel.dense.0/MatMulMockT2RModel.dense.0/bias/read*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
T0
o
MockT2RModel.dense.0/EluEluMockT2RModel.dense.0/BiasAdd*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
T0
±
0MockT2RModel.batch_norm.0/gamma/Initializer/onesConst*
valueB *  ?*2
_class(
&$loc:@MockT2RModel.batch_norm.0/gamma*
dtype0*
_output_shapes
: 

MockT2RModel.batch_norm.0/gamma
VariableV2*
dtype0*
_output_shapes
: *
shape: *2
_class(
&$loc:@MockT2RModel.batch_norm.0/gamma
Ü
&MockT2RModel.batch_norm.0/gamma/AssignAssignMockT2RModel.batch_norm.0/gamma0MockT2RModel.batch_norm.0/gamma/Initializer/ones*
_output_shapes
: *
T0*2
_class(
&$loc:@MockT2RModel.batch_norm.0/gamma
ª
$MockT2RModel.batch_norm.0/gamma/readIdentityMockT2RModel.batch_norm.0/gamma*
_output_shapes
: *
T0*2
_class(
&$loc:@MockT2RModel.batch_norm.0/gamma
°
0MockT2RModel.batch_norm.0/beta/Initializer/zerosConst*
valueB *    *1
_class'
%#loc:@MockT2RModel.batch_norm.0/beta*
dtype0*
_output_shapes
: 

MockT2RModel.batch_norm.0/beta
VariableV2*
shape: *1
_class'
%#loc:@MockT2RModel.batch_norm.0/beta*
dtype0*
_output_shapes
: 
Ù
%MockT2RModel.batch_norm.0/beta/AssignAssignMockT2RModel.batch_norm.0/beta0MockT2RModel.batch_norm.0/beta/Initializer/zeros*
_output_shapes
: *
T0*1
_class'
%#loc:@MockT2RModel.batch_norm.0/beta
§
#MockT2RModel.batch_norm.0/beta/readIdentityMockT2RModel.batch_norm.0/beta*
T0*1
_class'
%#loc:@MockT2RModel.batch_norm.0/beta*
_output_shapes
: 
¾
7MockT2RModel.batch_norm.0/moving_mean/Initializer/zerosConst*
valueB *    *8
_class.
,*loc:@MockT2RModel.batch_norm.0/moving_mean*
dtype0*
_output_shapes
: 
§
%MockT2RModel.batch_norm.0/moving_mean
VariableV2*
shape: *8
_class.
,*loc:@MockT2RModel.batch_norm.0/moving_mean*
dtype0*
_output_shapes
: 
õ
,MockT2RModel.batch_norm.0/moving_mean/AssignAssign%MockT2RModel.batch_norm.0/moving_mean7MockT2RModel.batch_norm.0/moving_mean/Initializer/zeros*
T0*8
_class.
,*loc:@MockT2RModel.batch_norm.0/moving_mean*
_output_shapes
: 
¼
*MockT2RModel.batch_norm.0/moving_mean/readIdentity%MockT2RModel.batch_norm.0/moving_mean*
T0*8
_class.
,*loc:@MockT2RModel.batch_norm.0/moving_mean*
_output_shapes
: 
Å
:MockT2RModel.batch_norm.0/moving_variance/Initializer/onesConst*
valueB *  ?*<
_class2
0.loc:@MockT2RModel.batch_norm.0/moving_variance*
dtype0*
_output_shapes
: 
¯
)MockT2RModel.batch_norm.0/moving_variance
VariableV2*
shape: *<
_class2
0.loc:@MockT2RModel.batch_norm.0/moving_variance*
dtype0*
_output_shapes
: 

0MockT2RModel.batch_norm.0/moving_variance/AssignAssign)MockT2RModel.batch_norm.0/moving_variance:MockT2RModel.batch_norm.0/moving_variance/Initializer/ones*
T0*<
_class2
0.loc:@MockT2RModel.batch_norm.0/moving_variance*
_output_shapes
: 
È
.MockT2RModel.batch_norm.0/moving_variance/readIdentity)MockT2RModel.batch_norm.0/moving_variance*
_output_shapes
: *
T0*<
_class2
0.loc:@MockT2RModel.batch_norm.0/moving_variance
n
)MockT2RModel.batch_norm.0/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o:
°
'MockT2RModel.batch_norm.0/batchnorm/addAddV2.MockT2RModel.batch_norm.0/moving_variance/read)MockT2RModel.batch_norm.0/batchnorm/add/y*
_output_shapes
: *
T0

)MockT2RModel.batch_norm.0/batchnorm/RsqrtRsqrt'MockT2RModel.batch_norm.0/batchnorm/add*
T0*
_output_shapes
: 
¤
'MockT2RModel.batch_norm.0/batchnorm/mulMul)MockT2RModel.batch_norm.0/batchnorm/Rsqrt$MockT2RModel.batch_norm.0/gamma/read*
_output_shapes
: *
T0
¥
)MockT2RModel.batch_norm.0/batchnorm/mul_1MulMockT2RModel.dense.0/Elu'MockT2RModel.batch_norm.0/batchnorm/mul*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
T0
ª
)MockT2RModel.batch_norm.0/batchnorm/mul_2Mul*MockT2RModel.batch_norm.0/moving_mean/read'MockT2RModel.batch_norm.0/batchnorm/mul*
T0*
_output_shapes
: 
£
'MockT2RModel.batch_norm.0/batchnorm/subSub#MockT2RModel.batch_norm.0/beta/read)MockT2RModel.batch_norm.0/batchnorm/mul_2*
T0*
_output_shapes
: 
¸
)MockT2RModel.batch_norm.0/batchnorm/add_1AddV2)MockT2RModel.batch_norm.0/batchnorm/mul_1'MockT2RModel.batch_norm.0/batchnorm/sub*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
½
<MockT2RModel.dense.1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"       *.
_class$
" loc:@MockT2RModel.dense.1/kernel
¯
:MockT2RModel.dense.1/kernel/Initializer/random_uniform/minConst*
valueB
 *óµ¾*.
_class$
" loc:@MockT2RModel.dense.1/kernel*
dtype0*
_output_shapes
: 
¯
:MockT2RModel.dense.1/kernel/Initializer/random_uniform/maxConst*
valueB
 *óµ>*.
_class$
" loc:@MockT2RModel.dense.1/kernel*
dtype0*
_output_shapes
: 
ù
DMockT2RModel.dense.1/kernel/Initializer/random_uniform/RandomUniformRandomUniform<MockT2RModel.dense.1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: *
T0*.
_class$
" loc:@MockT2RModel.dense.1/kernel

:MockT2RModel.dense.1/kernel/Initializer/random_uniform/subSub:MockT2RModel.dense.1/kernel/Initializer/random_uniform/max:MockT2RModel.dense.1/kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@MockT2RModel.dense.1/kernel*
_output_shapes
: 

:MockT2RModel.dense.1/kernel/Initializer/random_uniform/mulMulDMockT2RModel.dense.1/kernel/Initializer/random_uniform/RandomUniform:MockT2RModel.dense.1/kernel/Initializer/random_uniform/sub*
_output_shapes

: *
T0*.
_class$
" loc:@MockT2RModel.dense.1/kernel

6MockT2RModel.dense.1/kernel/Initializer/random_uniformAdd:MockT2RModel.dense.1/kernel/Initializer/random_uniform/mul:MockT2RModel.dense.1/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*.
_class$
" loc:@MockT2RModel.dense.1/kernel

MockT2RModel.dense.1/kernel
VariableV2*
dtype0*
_output_shapes

: *
shape
: *.
_class$
" loc:@MockT2RModel.dense.1/kernel
Ú
"MockT2RModel.dense.1/kernel/AssignAssignMockT2RModel.dense.1/kernel6MockT2RModel.dense.1/kernel/Initializer/random_uniform*
_output_shapes

: *
T0*.
_class$
" loc:@MockT2RModel.dense.1/kernel
¢
 MockT2RModel.dense.1/kernel/readIdentityMockT2RModel.dense.1/kernel*
T0*.
_class$
" loc:@MockT2RModel.dense.1/kernel*
_output_shapes

: 
¦
+MockT2RModel.dense.1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *,
_class"
 loc:@MockT2RModel.dense.1/bias

MockT2RModel.dense.1/bias
VariableV2*
shape:*,
_class"
 loc:@MockT2RModel.dense.1/bias*
dtype0*
_output_shapes
:
Å
 MockT2RModel.dense.1/bias/AssignAssignMockT2RModel.dense.1/bias+MockT2RModel.dense.1/bias/Initializer/zeros*
T0*,
_class"
 loc:@MockT2RModel.dense.1/bias*
_output_shapes
:

MockT2RModel.dense.1/bias/readIdentityMockT2RModel.dense.1/bias*
T0*,
_class"
 loc:@MockT2RModel.dense.1/bias*
_output_shapes
:
¤
MockT2RModel.dense.1/MatMulMatMul)MockT2RModel.batch_norm.0/batchnorm/add_1 MockT2RModel.dense.1/kernel/read*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

MockT2RModel.dense.1/BiasAddBiasAddMockT2RModel.dense.1/MatMulMockT2RModel.dense.1/bias/read*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
o
MockT2RModel.dense.1/EluEluMockT2RModel.dense.1/BiasAdd*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
±
0MockT2RModel.batch_norm.1/gamma/Initializer/onesConst*
valueB*  ?*2
_class(
&$loc:@MockT2RModel.batch_norm.1/gamma*
dtype0*
_output_shapes
:

MockT2RModel.batch_norm.1/gamma
VariableV2*
shape:*2
_class(
&$loc:@MockT2RModel.batch_norm.1/gamma*
dtype0*
_output_shapes
:
Ü
&MockT2RModel.batch_norm.1/gamma/AssignAssignMockT2RModel.batch_norm.1/gamma0MockT2RModel.batch_norm.1/gamma/Initializer/ones*
_output_shapes
:*
T0*2
_class(
&$loc:@MockT2RModel.batch_norm.1/gamma
ª
$MockT2RModel.batch_norm.1/gamma/readIdentityMockT2RModel.batch_norm.1/gamma*
_output_shapes
:*
T0*2
_class(
&$loc:@MockT2RModel.batch_norm.1/gamma
°
0MockT2RModel.batch_norm.1/beta/Initializer/zerosConst*
valueB*    *1
_class'
%#loc:@MockT2RModel.batch_norm.1/beta*
dtype0*
_output_shapes
:

MockT2RModel.batch_norm.1/beta
VariableV2*
dtype0*
_output_shapes
:*
shape:*1
_class'
%#loc:@MockT2RModel.batch_norm.1/beta
Ù
%MockT2RModel.batch_norm.1/beta/AssignAssignMockT2RModel.batch_norm.1/beta0MockT2RModel.batch_norm.1/beta/Initializer/zeros*
T0*1
_class'
%#loc:@MockT2RModel.batch_norm.1/beta*
_output_shapes
:
§
#MockT2RModel.batch_norm.1/beta/readIdentityMockT2RModel.batch_norm.1/beta*
T0*1
_class'
%#loc:@MockT2RModel.batch_norm.1/beta*
_output_shapes
:
¾
7MockT2RModel.batch_norm.1/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *8
_class.
,*loc:@MockT2RModel.batch_norm.1/moving_mean
§
%MockT2RModel.batch_norm.1/moving_mean
VariableV2*
shape:*8
_class.
,*loc:@MockT2RModel.batch_norm.1/moving_mean*
dtype0*
_output_shapes
:
õ
,MockT2RModel.batch_norm.1/moving_mean/AssignAssign%MockT2RModel.batch_norm.1/moving_mean7MockT2RModel.batch_norm.1/moving_mean/Initializer/zeros*
T0*8
_class.
,*loc:@MockT2RModel.batch_norm.1/moving_mean*
_output_shapes
:
¼
*MockT2RModel.batch_norm.1/moving_mean/readIdentity%MockT2RModel.batch_norm.1/moving_mean*
T0*8
_class.
,*loc:@MockT2RModel.batch_norm.1/moving_mean*
_output_shapes
:
Å
:MockT2RModel.batch_norm.1/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:*
valueB*  ?*<
_class2
0.loc:@MockT2RModel.batch_norm.1/moving_variance
¯
)MockT2RModel.batch_norm.1/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shape:*<
_class2
0.loc:@MockT2RModel.batch_norm.1/moving_variance

0MockT2RModel.batch_norm.1/moving_variance/AssignAssign)MockT2RModel.batch_norm.1/moving_variance:MockT2RModel.batch_norm.1/moving_variance/Initializer/ones*
_output_shapes
:*
T0*<
_class2
0.loc:@MockT2RModel.batch_norm.1/moving_variance
È
.MockT2RModel.batch_norm.1/moving_variance/readIdentity)MockT2RModel.batch_norm.1/moving_variance*
T0*<
_class2
0.loc:@MockT2RModel.batch_norm.1/moving_variance*
_output_shapes
:
n
)MockT2RModel.batch_norm.1/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
°
'MockT2RModel.batch_norm.1/batchnorm/addAddV2.MockT2RModel.batch_norm.1/moving_variance/read)MockT2RModel.batch_norm.1/batchnorm/add/y*
_output_shapes
:*
T0

)MockT2RModel.batch_norm.1/batchnorm/RsqrtRsqrt'MockT2RModel.batch_norm.1/batchnorm/add*
T0*
_output_shapes
:
¤
'MockT2RModel.batch_norm.1/batchnorm/mulMul)MockT2RModel.batch_norm.1/batchnorm/Rsqrt$MockT2RModel.batch_norm.1/gamma/read*
T0*
_output_shapes
:
¥
)MockT2RModel.batch_norm.1/batchnorm/mul_1MulMockT2RModel.dense.1/Elu'MockT2RModel.batch_norm.1/batchnorm/mul*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
)MockT2RModel.batch_norm.1/batchnorm/mul_2Mul*MockT2RModel.batch_norm.1/moving_mean/read'MockT2RModel.batch_norm.1/batchnorm/mul*
T0*
_output_shapes
:
£
'MockT2RModel.batch_norm.1/batchnorm/subSub#MockT2RModel.batch_norm.1/beta/read)MockT2RModel.batch_norm.1/batchnorm/mul_2*
_output_shapes
:*
T0
¸
)MockT2RModel.batch_norm.1/batchnorm/add_1AddV2)MockT2RModel.batch_norm.1/batchnorm/mul_1'MockT2RModel.batch_norm.1/batchnorm/sub*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
½
<MockT2RModel.dense.2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *.
_class$
" loc:@MockT2RModel.dense.2/kernel
¯
:MockT2RModel.dense.2/kernel/Initializer/random_uniform/minConst*
valueB
 *   ¿*.
_class$
" loc:@MockT2RModel.dense.2/kernel*
dtype0*
_output_shapes
: 
¯
:MockT2RModel.dense.2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *   ?*.
_class$
" loc:@MockT2RModel.dense.2/kernel
ù
DMockT2RModel.dense.2/kernel/Initializer/random_uniform/RandomUniformRandomUniform<MockT2RModel.dense.2/kernel/Initializer/random_uniform/shape*
T0*.
_class$
" loc:@MockT2RModel.dense.2/kernel*
dtype0*
_output_shapes

:

:MockT2RModel.dense.2/kernel/Initializer/random_uniform/subSub:MockT2RModel.dense.2/kernel/Initializer/random_uniform/max:MockT2RModel.dense.2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*.
_class$
" loc:@MockT2RModel.dense.2/kernel

:MockT2RModel.dense.2/kernel/Initializer/random_uniform/mulMulDMockT2RModel.dense.2/kernel/Initializer/random_uniform/RandomUniform:MockT2RModel.dense.2/kernel/Initializer/random_uniform/sub*
T0*.
_class$
" loc:@MockT2RModel.dense.2/kernel*
_output_shapes

:

6MockT2RModel.dense.2/kernel/Initializer/random_uniformAdd:MockT2RModel.dense.2/kernel/Initializer/random_uniform/mul:MockT2RModel.dense.2/kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@MockT2RModel.dense.2/kernel*
_output_shapes

:

MockT2RModel.dense.2/kernel
VariableV2*
shape
:*.
_class$
" loc:@MockT2RModel.dense.2/kernel*
dtype0*
_output_shapes

:
Ú
"MockT2RModel.dense.2/kernel/AssignAssignMockT2RModel.dense.2/kernel6MockT2RModel.dense.2/kernel/Initializer/random_uniform*
T0*.
_class$
" loc:@MockT2RModel.dense.2/kernel*
_output_shapes

:
¢
 MockT2RModel.dense.2/kernel/readIdentityMockT2RModel.dense.2/kernel*
_output_shapes

:*
T0*.
_class$
" loc:@MockT2RModel.dense.2/kernel
¦
+MockT2RModel.dense.2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *,
_class"
 loc:@MockT2RModel.dense.2/bias

MockT2RModel.dense.2/bias
VariableV2*
shape:*,
_class"
 loc:@MockT2RModel.dense.2/bias*
dtype0*
_output_shapes
:
Å
 MockT2RModel.dense.2/bias/AssignAssignMockT2RModel.dense.2/bias+MockT2RModel.dense.2/bias/Initializer/zeros*
T0*,
_class"
 loc:@MockT2RModel.dense.2/bias*
_output_shapes
:

MockT2RModel.dense.2/bias/readIdentityMockT2RModel.dense.2/bias*
_output_shapes
:*
T0*,
_class"
 loc:@MockT2RModel.dense.2/bias
¤
MockT2RModel.dense.2/MatMulMatMul)MockT2RModel.batch_norm.1/batchnorm/add_1 MockT2RModel.dense.2/kernel/read*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

MockT2RModel.dense.2/BiasAddBiasAddMockT2RModel.dense.2/MatMulMockT2RModel.dense.2/bias/read*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
o
MockT2RModel.dense.2/EluEluMockT2RModel.dense.2/BiasAdd*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
±
0MockT2RModel.batch_norm.2/gamma/Initializer/onesConst*
valueB*  ?*2
_class(
&$loc:@MockT2RModel.batch_norm.2/gamma*
dtype0*
_output_shapes
:

MockT2RModel.batch_norm.2/gamma
VariableV2*
shape:*2
_class(
&$loc:@MockT2RModel.batch_norm.2/gamma*
dtype0*
_output_shapes
:
Ü
&MockT2RModel.batch_norm.2/gamma/AssignAssignMockT2RModel.batch_norm.2/gamma0MockT2RModel.batch_norm.2/gamma/Initializer/ones*
_output_shapes
:*
T0*2
_class(
&$loc:@MockT2RModel.batch_norm.2/gamma
ª
$MockT2RModel.batch_norm.2/gamma/readIdentityMockT2RModel.batch_norm.2/gamma*
_output_shapes
:*
T0*2
_class(
&$loc:@MockT2RModel.batch_norm.2/gamma
°
0MockT2RModel.batch_norm.2/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *1
_class'
%#loc:@MockT2RModel.batch_norm.2/beta

MockT2RModel.batch_norm.2/beta
VariableV2*
dtype0*
_output_shapes
:*
shape:*1
_class'
%#loc:@MockT2RModel.batch_norm.2/beta
Ù
%MockT2RModel.batch_norm.2/beta/AssignAssignMockT2RModel.batch_norm.2/beta0MockT2RModel.batch_norm.2/beta/Initializer/zeros*
T0*1
_class'
%#loc:@MockT2RModel.batch_norm.2/beta*
_output_shapes
:
§
#MockT2RModel.batch_norm.2/beta/readIdentityMockT2RModel.batch_norm.2/beta*
T0*1
_class'
%#loc:@MockT2RModel.batch_norm.2/beta*
_output_shapes
:
¾
7MockT2RModel.batch_norm.2/moving_mean/Initializer/zerosConst*
valueB*    *8
_class.
,*loc:@MockT2RModel.batch_norm.2/moving_mean*
dtype0*
_output_shapes
:
§
%MockT2RModel.batch_norm.2/moving_mean
VariableV2*
shape:*8
_class.
,*loc:@MockT2RModel.batch_norm.2/moving_mean*
dtype0*
_output_shapes
:
õ
,MockT2RModel.batch_norm.2/moving_mean/AssignAssign%MockT2RModel.batch_norm.2/moving_mean7MockT2RModel.batch_norm.2/moving_mean/Initializer/zeros*
_output_shapes
:*
T0*8
_class.
,*loc:@MockT2RModel.batch_norm.2/moving_mean
¼
*MockT2RModel.batch_norm.2/moving_mean/readIdentity%MockT2RModel.batch_norm.2/moving_mean*
_output_shapes
:*
T0*8
_class.
,*loc:@MockT2RModel.batch_norm.2/moving_mean
Å
:MockT2RModel.batch_norm.2/moving_variance/Initializer/onesConst*
valueB*  ?*<
_class2
0.loc:@MockT2RModel.batch_norm.2/moving_variance*
dtype0*
_output_shapes
:
¯
)MockT2RModel.batch_norm.2/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shape:*<
_class2
0.loc:@MockT2RModel.batch_norm.2/moving_variance

0MockT2RModel.batch_norm.2/moving_variance/AssignAssign)MockT2RModel.batch_norm.2/moving_variance:MockT2RModel.batch_norm.2/moving_variance/Initializer/ones*
_output_shapes
:*
T0*<
_class2
0.loc:@MockT2RModel.batch_norm.2/moving_variance
È
.MockT2RModel.batch_norm.2/moving_variance/readIdentity)MockT2RModel.batch_norm.2/moving_variance*
T0*<
_class2
0.loc:@MockT2RModel.batch_norm.2/moving_variance*
_output_shapes
:
n
)MockT2RModel.batch_norm.2/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
°
'MockT2RModel.batch_norm.2/batchnorm/addAddV2.MockT2RModel.batch_norm.2/moving_variance/read)MockT2RModel.batch_norm.2/batchnorm/add/y*
_output_shapes
:*
T0

)MockT2RModel.batch_norm.2/batchnorm/RsqrtRsqrt'MockT2RModel.batch_norm.2/batchnorm/add*
_output_shapes
:*
T0
¤
'MockT2RModel.batch_norm.2/batchnorm/mulMul)MockT2RModel.batch_norm.2/batchnorm/Rsqrt$MockT2RModel.batch_norm.2/gamma/read*
_output_shapes
:*
T0
¥
)MockT2RModel.batch_norm.2/batchnorm/mul_1MulMockT2RModel.dense.2/Elu'MockT2RModel.batch_norm.2/batchnorm/mul*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
)MockT2RModel.batch_norm.2/batchnorm/mul_2Mul*MockT2RModel.batch_norm.2/moving_mean/read'MockT2RModel.batch_norm.2/batchnorm/mul*
T0*
_output_shapes
:
£
'MockT2RModel.batch_norm.2/batchnorm/subSub#MockT2RModel.batch_norm.2/beta/read)MockT2RModel.batch_norm.2/batchnorm/mul_2*
_output_shapes
:*
T0
¸
)MockT2RModel.batch_norm.2/batchnorm/add_1AddV2)MockT2RModel.batch_norm.2/batchnorm/mul_1'MockT2RModel.batch_norm.2/batchnorm/sub*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
½
<MockT2RModel.dense.4/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *.
_class$
" loc:@MockT2RModel.dense.4/kernel
¯
:MockT2RModel.dense.4/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ìQ¿*.
_class$
" loc:@MockT2RModel.dense.4/kernel
¯
:MockT2RModel.dense.4/kernel/Initializer/random_uniform/maxConst*
valueB
 *ìQ?*.
_class$
" loc:@MockT2RModel.dense.4/kernel*
dtype0*
_output_shapes
: 
ù
DMockT2RModel.dense.4/kernel/Initializer/random_uniform/RandomUniformRandomUniform<MockT2RModel.dense.4/kernel/Initializer/random_uniform/shape*
T0*.
_class$
" loc:@MockT2RModel.dense.4/kernel*
dtype0*
_output_shapes

:

:MockT2RModel.dense.4/kernel/Initializer/random_uniform/subSub:MockT2RModel.dense.4/kernel/Initializer/random_uniform/max:MockT2RModel.dense.4/kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@MockT2RModel.dense.4/kernel*
_output_shapes
: 

:MockT2RModel.dense.4/kernel/Initializer/random_uniform/mulMulDMockT2RModel.dense.4/kernel/Initializer/random_uniform/RandomUniform:MockT2RModel.dense.4/kernel/Initializer/random_uniform/sub*
_output_shapes

:*
T0*.
_class$
" loc:@MockT2RModel.dense.4/kernel

6MockT2RModel.dense.4/kernel/Initializer/random_uniformAdd:MockT2RModel.dense.4/kernel/Initializer/random_uniform/mul:MockT2RModel.dense.4/kernel/Initializer/random_uniform/min*
_output_shapes

:*
T0*.
_class$
" loc:@MockT2RModel.dense.4/kernel

MockT2RModel.dense.4/kernel
VariableV2*
dtype0*
_output_shapes

:*
shape
:*.
_class$
" loc:@MockT2RModel.dense.4/kernel
Ú
"MockT2RModel.dense.4/kernel/AssignAssignMockT2RModel.dense.4/kernel6MockT2RModel.dense.4/kernel/Initializer/random_uniform*
T0*.
_class$
" loc:@MockT2RModel.dense.4/kernel*
_output_shapes

:
¢
 MockT2RModel.dense.4/kernel/readIdentityMockT2RModel.dense.4/kernel*
_output_shapes

:*
T0*.
_class$
" loc:@MockT2RModel.dense.4/kernel
¦
+MockT2RModel.dense.4/bias/Initializer/zerosConst*
valueB*    *,
_class"
 loc:@MockT2RModel.dense.4/bias*
dtype0*
_output_shapes
:

MockT2RModel.dense.4/bias
VariableV2*
shape:*,
_class"
 loc:@MockT2RModel.dense.4/bias*
dtype0*
_output_shapes
:
Å
 MockT2RModel.dense.4/bias/AssignAssignMockT2RModel.dense.4/bias+MockT2RModel.dense.4/bias/Initializer/zeros*
T0*,
_class"
 loc:@MockT2RModel.dense.4/bias*
_output_shapes
:

MockT2RModel.dense.4/bias/readIdentityMockT2RModel.dense.4/bias*
T0*,
_class"
 loc:@MockT2RModel.dense.4/bias*
_output_shapes
:
¤
MockT2RModel.dense.4/MatMulMatMul)MockT2RModel.batch_norm.2/batchnorm/add_1 MockT2RModel.dense.4/kernel/read*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

MockT2RModel.dense.4/BiasAddBiasAddMockT2RModel.dense.4/MatMulMockT2RModel.dense.4/bias/read*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
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

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_d222a2eea60d45408054b6d5c6b4c897/part
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*»
value±B®BMockT2RModel.batch_norm.0/betaBMockT2RModel.batch_norm.0/gammaB%MockT2RModel.batch_norm.0/moving_meanB)MockT2RModel.batch_norm.0/moving_varianceBMockT2RModel.batch_norm.1/betaBMockT2RModel.batch_norm.1/gammaB%MockT2RModel.batch_norm.1/moving_meanB)MockT2RModel.batch_norm.1/moving_varianceBMockT2RModel.batch_norm.2/betaBMockT2RModel.batch_norm.2/gammaB%MockT2RModel.batch_norm.2/moving_meanB)MockT2RModel.batch_norm.2/moving_varianceBMockT2RModel.dense.0/biasBMockT2RModel.dense.0/kernelBMockT2RModel.dense.1/biasBMockT2RModel.dense.1/kernelBMockT2RModel.dense.2/biasBMockT2RModel.dense.2/kernelBMockT2RModel.dense.4/biasBMockT2RModel.dense.4/kernelBglobal_step

save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*=
value4B2B B B B B B B B B B B B B B B B B B B B B 
½
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesMockT2RModel.batch_norm.0/betaMockT2RModel.batch_norm.0/gamma%MockT2RModel.batch_norm.0/moving_mean)MockT2RModel.batch_norm.0/moving_varianceMockT2RModel.batch_norm.1/betaMockT2RModel.batch_norm.1/gamma%MockT2RModel.batch_norm.1/moving_mean)MockT2RModel.batch_norm.1/moving_varianceMockT2RModel.batch_norm.2/betaMockT2RModel.batch_norm.2/gamma%MockT2RModel.batch_norm.2/moving_mean)MockT2RModel.batch_norm.2/moving_varianceMockT2RModel.dense.0/biasMockT2RModel.dense.0/kernelMockT2RModel.dense.1/biasMockT2RModel.dense.1/kernelMockT2RModel.dense.2/biasMockT2RModel.dense.2/kernelMockT2RModel.dense.4/biasMockT2RModel.dense.4/kernelglobal_step"/device:CPU:0*#
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
_output_shapes
:*
T0*
N
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0

save/RestoreV2/tensor_namesConst"/device:CPU:0*»
value±B®BMockT2RModel.batch_norm.0/betaBMockT2RModel.batch_norm.0/gammaB%MockT2RModel.batch_norm.0/moving_meanB)MockT2RModel.batch_norm.0/moving_varianceBMockT2RModel.batch_norm.1/betaBMockT2RModel.batch_norm.1/gammaB%MockT2RModel.batch_norm.1/moving_meanB)MockT2RModel.batch_norm.1/moving_varianceBMockT2RModel.batch_norm.2/betaBMockT2RModel.batch_norm.2/gammaB%MockT2RModel.batch_norm.2/moving_meanB)MockT2RModel.batch_norm.2/moving_varianceBMockT2RModel.dense.0/biasBMockT2RModel.dense.0/kernelBMockT2RModel.dense.1/biasBMockT2RModel.dense.1/kernelBMockT2RModel.dense.2/biasBMockT2RModel.dense.2/kernelBMockT2RModel.dense.4/biasBMockT2RModel.dense.4/kernelBglobal_step*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*=
value4B2B B B B B B B B B B B B B B B B B B B B B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2	

save/AssignAssignMockT2RModel.batch_norm.0/betasave/RestoreV2*
_output_shapes
: *
T0*1
_class'
%#loc:@MockT2RModel.batch_norm.0/beta
£
save/Assign_1AssignMockT2RModel.batch_norm.0/gammasave/RestoreV2:1*
T0*2
_class(
&$loc:@MockT2RModel.batch_norm.0/gamma*
_output_shapes
: 
¯
save/Assign_2Assign%MockT2RModel.batch_norm.0/moving_meansave/RestoreV2:2*
T0*8
_class.
,*loc:@MockT2RModel.batch_norm.0/moving_mean*
_output_shapes
: 
·
save/Assign_3Assign)MockT2RModel.batch_norm.0/moving_variancesave/RestoreV2:3*
T0*<
_class2
0.loc:@MockT2RModel.batch_norm.0/moving_variance*
_output_shapes
: 
¡
save/Assign_4AssignMockT2RModel.batch_norm.1/betasave/RestoreV2:4*
T0*1
_class'
%#loc:@MockT2RModel.batch_norm.1/beta*
_output_shapes
:
£
save/Assign_5AssignMockT2RModel.batch_norm.1/gammasave/RestoreV2:5*
_output_shapes
:*
T0*2
_class(
&$loc:@MockT2RModel.batch_norm.1/gamma
¯
save/Assign_6Assign%MockT2RModel.batch_norm.1/moving_meansave/RestoreV2:6*
_output_shapes
:*
T0*8
_class.
,*loc:@MockT2RModel.batch_norm.1/moving_mean
·
save/Assign_7Assign)MockT2RModel.batch_norm.1/moving_variancesave/RestoreV2:7*
T0*<
_class2
0.loc:@MockT2RModel.batch_norm.1/moving_variance*
_output_shapes
:
¡
save/Assign_8AssignMockT2RModel.batch_norm.2/betasave/RestoreV2:8*
T0*1
_class'
%#loc:@MockT2RModel.batch_norm.2/beta*
_output_shapes
:
£
save/Assign_9AssignMockT2RModel.batch_norm.2/gammasave/RestoreV2:9*
_output_shapes
:*
T0*2
_class(
&$loc:@MockT2RModel.batch_norm.2/gamma
±
save/Assign_10Assign%MockT2RModel.batch_norm.2/moving_meansave/RestoreV2:10*
T0*8
_class.
,*loc:@MockT2RModel.batch_norm.2/moving_mean*
_output_shapes
:
¹
save/Assign_11Assign)MockT2RModel.batch_norm.2/moving_variancesave/RestoreV2:11*
_output_shapes
:*
T0*<
_class2
0.loc:@MockT2RModel.batch_norm.2/moving_variance

save/Assign_12AssignMockT2RModel.dense.0/biassave/RestoreV2:12*
_output_shapes
: *
T0*,
_class"
 loc:@MockT2RModel.dense.0/bias
¡
save/Assign_13AssignMockT2RModel.dense.0/kernelsave/RestoreV2:13*
T0*.
_class$
" loc:@MockT2RModel.dense.0/kernel*
_output_shapes

: 

save/Assign_14AssignMockT2RModel.dense.1/biassave/RestoreV2:14*
T0*,
_class"
 loc:@MockT2RModel.dense.1/bias*
_output_shapes
:
¡
save/Assign_15AssignMockT2RModel.dense.1/kernelsave/RestoreV2:15*
T0*.
_class$
" loc:@MockT2RModel.dense.1/kernel*
_output_shapes

: 

save/Assign_16AssignMockT2RModel.dense.2/biassave/RestoreV2:16*
_output_shapes
:*
T0*,
_class"
 loc:@MockT2RModel.dense.2/bias
¡
save/Assign_17AssignMockT2RModel.dense.2/kernelsave/RestoreV2:17*
_output_shapes

:*
T0*.
_class$
" loc:@MockT2RModel.dense.2/kernel

save/Assign_18AssignMockT2RModel.dense.4/biassave/RestoreV2:18*
_output_shapes
:*
T0*,
_class"
 loc:@MockT2RModel.dense.4/bias
¡
save/Assign_19AssignMockT2RModel.dense.4/kernelsave/RestoreV2:19*
_output_shapes

:*
T0*.
_class$
" loc:@MockT2RModel.dense.4/kernel
y
save/Assign_20Assignglobal_stepsave/RestoreV2:20*
T0	*
_class
loc:@global_step*
_output_shapes
: 
ó
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"x<
save/Const:0save/Identity:0save/restore_all (5 @F8"
trainable_variablesîë
£
MockT2RModel.dense.0/kernel:0"MockT2RModel.dense.0/kernel/Assign"MockT2RModel.dense.0/kernel/read:028MockT2RModel.dense.0/kernel/Initializer/random_uniform:08

MockT2RModel.dense.0/bias:0 MockT2RModel.dense.0/bias/Assign MockT2RModel.dense.0/bias/read:02-MockT2RModel.dense.0/bias/Initializer/zeros:08
©
!MockT2RModel.batch_norm.0/gamma:0&MockT2RModel.batch_norm.0/gamma/Assign&MockT2RModel.batch_norm.0/gamma/read:022MockT2RModel.batch_norm.0/gamma/Initializer/ones:08
¦
 MockT2RModel.batch_norm.0/beta:0%MockT2RModel.batch_norm.0/beta/Assign%MockT2RModel.batch_norm.0/beta/read:022MockT2RModel.batch_norm.0/beta/Initializer/zeros:08
£
MockT2RModel.dense.1/kernel:0"MockT2RModel.dense.1/kernel/Assign"MockT2RModel.dense.1/kernel/read:028MockT2RModel.dense.1/kernel/Initializer/random_uniform:08

MockT2RModel.dense.1/bias:0 MockT2RModel.dense.1/bias/Assign MockT2RModel.dense.1/bias/read:02-MockT2RModel.dense.1/bias/Initializer/zeros:08
©
!MockT2RModel.batch_norm.1/gamma:0&MockT2RModel.batch_norm.1/gamma/Assign&MockT2RModel.batch_norm.1/gamma/read:022MockT2RModel.batch_norm.1/gamma/Initializer/ones:08
¦
 MockT2RModel.batch_norm.1/beta:0%MockT2RModel.batch_norm.1/beta/Assign%MockT2RModel.batch_norm.1/beta/read:022MockT2RModel.batch_norm.1/beta/Initializer/zeros:08
£
MockT2RModel.dense.2/kernel:0"MockT2RModel.dense.2/kernel/Assign"MockT2RModel.dense.2/kernel/read:028MockT2RModel.dense.2/kernel/Initializer/random_uniform:08

MockT2RModel.dense.2/bias:0 MockT2RModel.dense.2/bias/Assign MockT2RModel.dense.2/bias/read:02-MockT2RModel.dense.2/bias/Initializer/zeros:08
©
!MockT2RModel.batch_norm.2/gamma:0&MockT2RModel.batch_norm.2/gamma/Assign&MockT2RModel.batch_norm.2/gamma/read:022MockT2RModel.batch_norm.2/gamma/Initializer/ones:08
¦
 MockT2RModel.batch_norm.2/beta:0%MockT2RModel.batch_norm.2/beta/Assign%MockT2RModel.batch_norm.2/beta/read:022MockT2RModel.batch_norm.2/beta/Initializer/zeros:08
£
MockT2RModel.dense.4/kernel:0"MockT2RModel.dense.4/kernel/Assign"MockT2RModel.dense.4/kernel/read:028MockT2RModel.dense.4/kernel/Initializer/random_uniform:08

MockT2RModel.dense.4/bias:0 MockT2RModel.dense.4/bias/Assign MockT2RModel.dense.4/bias/read:02-MockT2RModel.dense.4/bias/Initializer/zeros:08"¯
	variables¡
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
£
MockT2RModel.dense.0/kernel:0"MockT2RModel.dense.0/kernel/Assign"MockT2RModel.dense.0/kernel/read:028MockT2RModel.dense.0/kernel/Initializer/random_uniform:08

MockT2RModel.dense.0/bias:0 MockT2RModel.dense.0/bias/Assign MockT2RModel.dense.0/bias/read:02-MockT2RModel.dense.0/bias/Initializer/zeros:08
©
!MockT2RModel.batch_norm.0/gamma:0&MockT2RModel.batch_norm.0/gamma/Assign&MockT2RModel.batch_norm.0/gamma/read:022MockT2RModel.batch_norm.0/gamma/Initializer/ones:08
¦
 MockT2RModel.batch_norm.0/beta:0%MockT2RModel.batch_norm.0/beta/Assign%MockT2RModel.batch_norm.0/beta/read:022MockT2RModel.batch_norm.0/beta/Initializer/zeros:08
Ä
'MockT2RModel.batch_norm.0/moving_mean:0,MockT2RModel.batch_norm.0/moving_mean/Assign,MockT2RModel.batch_norm.0/moving_mean/read:029MockT2RModel.batch_norm.0/moving_mean/Initializer/zeros:0@H
Ó
+MockT2RModel.batch_norm.0/moving_variance:00MockT2RModel.batch_norm.0/moving_variance/Assign0MockT2RModel.batch_norm.0/moving_variance/read:02<MockT2RModel.batch_norm.0/moving_variance/Initializer/ones:0@H
£
MockT2RModel.dense.1/kernel:0"MockT2RModel.dense.1/kernel/Assign"MockT2RModel.dense.1/kernel/read:028MockT2RModel.dense.1/kernel/Initializer/random_uniform:08

MockT2RModel.dense.1/bias:0 MockT2RModel.dense.1/bias/Assign MockT2RModel.dense.1/bias/read:02-MockT2RModel.dense.1/bias/Initializer/zeros:08
©
!MockT2RModel.batch_norm.1/gamma:0&MockT2RModel.batch_norm.1/gamma/Assign&MockT2RModel.batch_norm.1/gamma/read:022MockT2RModel.batch_norm.1/gamma/Initializer/ones:08
¦
 MockT2RModel.batch_norm.1/beta:0%MockT2RModel.batch_norm.1/beta/Assign%MockT2RModel.batch_norm.1/beta/read:022MockT2RModel.batch_norm.1/beta/Initializer/zeros:08
Ä
'MockT2RModel.batch_norm.1/moving_mean:0,MockT2RModel.batch_norm.1/moving_mean/Assign,MockT2RModel.batch_norm.1/moving_mean/read:029MockT2RModel.batch_norm.1/moving_mean/Initializer/zeros:0@H
Ó
+MockT2RModel.batch_norm.1/moving_variance:00MockT2RModel.batch_norm.1/moving_variance/Assign0MockT2RModel.batch_norm.1/moving_variance/read:02<MockT2RModel.batch_norm.1/moving_variance/Initializer/ones:0@H
£
MockT2RModel.dense.2/kernel:0"MockT2RModel.dense.2/kernel/Assign"MockT2RModel.dense.2/kernel/read:028MockT2RModel.dense.2/kernel/Initializer/random_uniform:08

MockT2RModel.dense.2/bias:0 MockT2RModel.dense.2/bias/Assign MockT2RModel.dense.2/bias/read:02-MockT2RModel.dense.2/bias/Initializer/zeros:08
©
!MockT2RModel.batch_norm.2/gamma:0&MockT2RModel.batch_norm.2/gamma/Assign&MockT2RModel.batch_norm.2/gamma/read:022MockT2RModel.batch_norm.2/gamma/Initializer/ones:08
¦
 MockT2RModel.batch_norm.2/beta:0%MockT2RModel.batch_norm.2/beta/Assign%MockT2RModel.batch_norm.2/beta/read:022MockT2RModel.batch_norm.2/beta/Initializer/zeros:08
Ä
'MockT2RModel.batch_norm.2/moving_mean:0,MockT2RModel.batch_norm.2/moving_mean/Assign,MockT2RModel.batch_norm.2/moving_mean/read:029MockT2RModel.batch_norm.2/moving_mean/Initializer/zeros:0@H
Ó
+MockT2RModel.batch_norm.2/moving_variance:00MockT2RModel.batch_norm.2/moving_variance/Assign0MockT2RModel.batch_norm.2/moving_variance/read:02<MockT2RModel.batch_norm.2/moving_variance/Initializer/ones:0@H
£
MockT2RModel.dense.4/kernel:0"MockT2RModel.dense.4/kernel/Assign"MockT2RModel.dense.4/kernel/read:028MockT2RModel.dense.4/kernel/Initializer/random_uniform:08

MockT2RModel.dense.4/bias:0 MockT2RModel.dense.4/bias/Assign MockT2RModel.dense.4/bias/read:02-MockT2RModel.dense.4/bias/Initializer/zeros:08"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"%
saved_model_main_op


group_deps*¡
serving_default
/
x*
measured_position:0ÿÿÿÿÿÿÿÿÿ>
logit5
MockT2RModel.dense.4/BiasAdd:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict