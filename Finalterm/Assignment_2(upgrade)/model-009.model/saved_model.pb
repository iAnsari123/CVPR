©р

…ђ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
$
DisableCopyOnRead
resourceИ
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.12.02unknown8†л
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
Ж
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:2*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:2*
dtype0
Д
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
§Э2*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
§Э2*
dtype0
А
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:d*
dtype0
С
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:»d*'
shared_nameAdam/conv2d_1/kernel/v
К
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*'
_output_shapes
:»d*
dtype0
}
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*#
shared_nameAdam/conv2d/bias/v
v
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes	
:»*
dtype0
Н
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*%
shared_nameAdam/conv2d/kernel/v
Ж
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*'
_output_shapes
:»*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
Ж
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:2*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:2*
dtype0
Д
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
§Э2*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
§Э2*
dtype0
А
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:d*
dtype0
С
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:»d*'
shared_nameAdam/conv2d_1/kernel/m
К
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*'
_output_shapes
:»d*
dtype0
}
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*#
shared_nameAdam/conv2d/bias/m
v
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes	
:»*
dtype0
Н
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*%
shared_nameAdam/conv2d/kernel/m
Ж
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*'
_output_shapes
:»*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:2*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:2*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
§Э2*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
§Э2*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:d*
dtype0
Г
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:»d* 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:»d*
dtype0
o
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*
shared_nameconv2d/bias
h
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes	
:»*
dtype0

conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*
shared_nameconv2d/kernel
x
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*'
_output_shapes
:»*
dtype0
П
serving_default_conv2d_inputPlaceholder*/
_output_shapes
:€€€€€€€€€dd*
dtype0*$
shape:€€€€€€€€€dd
љ
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_10468

NoOpNoOp
•S
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*аR
value÷RB”R BћR
ґ
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
О
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 
О
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
»
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op*
О
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses* 
О
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
О
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses* 
•
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
J_random_generator* 
¶
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias*
¶
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

Ykernel
Zbias*
<
0
1
/2
03
Q4
R5
Y6
Z7*
<
0
1
/2
03
Q4
R5
Y6
Z7*
* 
∞
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
`trace_0
atrace_1
btrace_2
ctrace_3* 
6
dtrace_0
etrace_1
ftrace_2
gtrace_3* 
* 
д
hiter

ibeta_1

jbeta_2
	kdecay
llearning_ratemЅm¬/m√0mƒQm≈Rm∆Ym«Zm»v…v /vЋ0vћQvЌRvќYvѕZv–*

mserving_default* 

0
1*

0
1*
* 
У
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

strace_0* 

ttrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
С
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 

ztrace_0* 

{trace_0* 
* 
* 
* 
Т
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
Аlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

Бtrace_0* 

Вtrace_0* 

/0
01*

/0
01*
* 
Ш
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

Иtrace_0* 

Йtrace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 

Пtrace_0* 

Рtrace_0* 
* 
* 
* 
Ц
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 

Цtrace_0* 

Чtrace_0* 
* 
* 
* 
Ц
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 

Эtrace_0* 

Юtrace_0* 
* 
* 
* 
Ц
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

§trace_0
•trace_1* 

¶trace_0
Іtrace_1* 
* 

Q0
R1*

Q0
R1*
* 
Ш
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

≠trace_0* 

Ѓtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

Y0
Z1*

Y0
Z1*
* 
Ш
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

іtrace_0* 

µtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
0
1
2
3
4
5
6
7
	8

9*

ґ0
Ј1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Є	variables
є	keras_api

Їtotal

їcount*
M
Љ	variables
љ	keras_api

Њtotal

њcount
ј
_fn_kwargs*

Ї0
ї1*

Є	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Њ0
њ1*

Љ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Аz
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
п
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vConst*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_10968
к
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_11077ѓ«
н(
Ы
E__inference_sequential_layer_call_and_return_conditional_losses_10190
conv2d_input'
conv2d_10096:»
conv2d_10098:	»)
conv2d_1_10120:»d
conv2d_1_10122:d
dense_10167:
§Э2
dense_10169:2
dense_1_10184:2
dense_1_10186:
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdropout/StatefulPartitionedCallч
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_10096conv2d_10098*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€bb»*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_10095и
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€bb»* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_10106к
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€11»* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10063Ш
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_10120conv2d_1_10122*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10119н
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_10130п
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10075№
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€§Э* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_10139д
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€§Э* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10153Ж
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_10167dense_10169*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10166М
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_10184dense_1_10186*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_10183w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€о
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€dd: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:] Y
/
_output_shapes
:€€€€€€€€€dd
&
_user_specified_nameconv2d_input
Ѕ
Ф
'__inference_dense_1_layer_call_fn_10736

inputs
unknown:2
	unknown_0:
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_10183o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
§

a
B__inference_dropout_layer_call_and_return_conditional_losses_10153

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€§ЭQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕО
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Э*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:€€€€€€€€€§ЭT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Х
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Эc
IdentityIdentitydropout/SelectV2:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Э"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€§Э:Q M
)
_output_shapes
:€€€€€€€€€§Э
 
_user_specified_nameinputs
Ю

у
B__inference_dense_1_layer_call_and_return_conditional_losses_10183

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
Т2
є
E__inference_sequential_layer_call_and_return_conditional_losses_10554

inputs@
%conv2d_conv2d_readvariableop_resource:»5
&conv2d_biasadd_readvariableop_resource:	»B
'conv2d_1_conv2d_readvariableop_resource:»d6
(conv2d_1_biasadd_readvariableop_resource:d8
$dense_matmul_readvariableop_resource:
§Э23
%dense_biasadd_readvariableop_resource:28
&dense_1_matmul_readvariableop_resource:25
'dense_1_biasadd_readvariableop_resource:
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOpҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpЛ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:»*
dtype0©
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€bb»*
paddingVALID*
strides
Б
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0У
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€bb»k
activation/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€bb»≠
max_pooling2d/MaxPoolMaxPoolactivation/Relu:activations:0*0
_output_shapes
:€€€€€€€€€11»*
ksize
*
paddingVALID*
strides
П
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:»d*
dtype0ƒ
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//d*
paddingVALID*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//dn
activation_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€//d∞
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€d*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€§ќ  И
flatten/ReshapeReshape max_pooling2d_1/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€§ЭZ
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @И
dropout/dropout/MulMulflatten/Reshape:output:0dropout/dropout/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Эk
dropout/dropout/ShapeShapeflatten/Reshape:output:0*
T0*
_output_shapes
::нѕЮ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Э*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ј
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Э\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    µ
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*)
_output_shapes
:€€€€€€€€€§ЭВ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
§Э2*
dtype0Р
dense/MatMulMatMul!dropout/dropout/SelectV2:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Д
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Л
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€∆
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€dd: : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
ђ

ь
A__inference_conv2d_layer_call_and_return_conditional_losses_10095

inputs9
conv2d_readvariableop_resource:».
biasadd_readvariableop_resource:	»
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:»*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€bb»*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€bb»h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€bb»w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
∆
^
B__inference_flatten_layer_call_and_return_conditional_losses_10139

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€§ќ  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€§ЭZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Э"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€d:W S
/
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
и	
ќ
*__inference_sequential_layer_call_fn_10489

inputs"
unknown:»
	unknown_0:	»$
	unknown_1:»d
	unknown_2:d
	unknown_3:
§Э2
	unknown_4:2
	unknown_5:2
	unknown_6:
identityИҐStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10258o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€dd: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
ъ	
‘
*__inference_sequential_layer_call_fn_10328
conv2d_input"
unknown:»
	unknown_0:	»$
	unknown_1:»d
	unknown_2:d
	unknown_3:
§Э2
	unknown_4:2
	unknown_5:2
	unknown_6:
identityИҐStatefulPartitionedCall±
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10309o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€dd: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:€€€€€€€€€dd
&
_user_specified_nameconv2d_input
ќ	
Ќ
#__inference_signature_wrapper_10468
conv2d_input"
unknown:»
	unknown_0:	»$
	unknown_1:»d
	unknown_2:d
	unknown_3:
§Э2
	unknown_4:2
	unknown_5:2
	unknown_6:
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_10057o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€dd: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:€€€€€€€€€dd
&
_user_specified_nameconv2d_input
л
Э
&__inference_conv2d_layer_call_fn_10600

inputs"
unknown:»
	unknown_0:	»
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€bb»*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_10095x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€bb»`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€dd: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
∆
H
,__inference_activation_1_layer_call_fn_10654

inputs
identityљ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_10130h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€//d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€//d:W S
/
_output_shapes
:€€€€€€€€€//d
 
_user_specified_nameinputs
Ю

у
B__inference_dense_1_layer_call_and_return_conditional_losses_10747

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
µ
I
-__inference_max_pooling2d_layer_call_fn_10625

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10063Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Р
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10630

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
и	
ќ
*__inference_sequential_layer_call_fn_10510

inputs"
unknown:»
	unknown_0:	»$
	unknown_1:»d
	unknown_2:d
	unknown_3:
§Э2
	unknown_4:2
	unknown_5:2
	unknown_6:
identityИҐStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10309o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€dd: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
ъ	
‘
*__inference_sequential_layer_call_fn_10277
conv2d_input"
unknown:»
	unknown_0:	»$
	unknown_1:»d
	unknown_2:d
	unknown_3:
§Э2
	unknown_4:2
	unknown_5:2
	unknown_6:
identityИҐStatefulPartitionedCall±
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10258o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€dd: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:€€€€€€€€€dd
&
_user_specified_nameconv2d_input
н
a
E__inference_activation_layer_call_and_return_conditional_losses_10106

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:€€€€€€€€€bb»c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€bb»"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€bb»:X T
0
_output_shapes
:€€€€€€€€€bb»
 
_user_specified_nameinputs
ђ

ь
A__inference_conv2d_layer_call_and_return_conditional_losses_10610

inputs9
conv2d_readvariableop_resource:».
biasadd_readvariableop_resource:	»
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:»*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€bb»*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€bb»h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€bb»w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
к2
 
 __inference__wrapped_model_10057
conv2d_inputK
0sequential_conv2d_conv2d_readvariableop_resource:»@
1sequential_conv2d_biasadd_readvariableop_resource:	»M
2sequential_conv2d_1_conv2d_readvariableop_resource:»dA
3sequential_conv2d_1_biasadd_readvariableop_resource:dC
/sequential_dense_matmul_readvariableop_resource:
§Э2>
0sequential_dense_biasadd_readvariableop_resource:2C
1sequential_dense_1_matmul_readvariableop_resource:2@
2sequential_dense_1_biasadd_readvariableop_resource:
identityИҐ(sequential/conv2d/BiasAdd/ReadVariableOpҐ'sequential/conv2d/Conv2D/ReadVariableOpҐ*sequential/conv2d_1/BiasAdd/ReadVariableOpҐ)sequential/conv2d_1/Conv2D/ReadVariableOpҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOp°
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:»*
dtype0≈
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€bb»*
paddingVALID*
strides
Ч
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0і
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€bb»Б
sequential/activation/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€bb»√
 sequential/max_pooling2d/MaxPoolMaxPool(sequential/activation/Relu:activations:0*0
_output_shapes
:€€€€€€€€€11»*
ksize
*
paddingVALID*
strides
•
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:»d*
dtype0е
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//d*
paddingVALID*
strides
Ъ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0є
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//dД
sequential/activation_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€//d∆
"sequential/max_pooling2d_1/MaxPoolMaxPool*sequential/activation_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€d*
ksize
*
paddingVALID*
strides
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€§ќ  ©
sequential/flatten/ReshapeReshape+sequential/max_pooling2d_1/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€§ЭА
sequential/dropout/IdentityIdentity#sequential/flatten/Reshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€§ЭШ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
§Э2*
dtype0©
sequential/dense/MatMulMatMul$sequential/dropout/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Ф
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0©
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2r
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Ъ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ђ
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ѓ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€|
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€s
IdentityIdentity$sequential/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ю
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€dd: : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:] Y
/
_output_shapes
:€€€€€€€€€dd
&
_user_specified_nameconv2d_input
Р
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10063

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
л
c
G__inference_activation_1_layer_call_and_return_conditional_losses_10659

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€//db
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€//d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€//d:W S
/
_output_shapes
:€€€€€€€€€//d
 
_user_specified_nameinputs
Ђ

э
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10119

inputs9
conv2d_readvariableop_resource:»d-
biasadd_readvariableop_resource:d
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:»d*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//d*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//dg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€//dw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€11»: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€11»
 
_user_specified_nameinputs
џ(
Х
E__inference_sequential_layer_call_and_return_conditional_losses_10258

inputs'
conv2d_10231:»
conv2d_10233:	»)
conv2d_1_10238:»d
conv2d_1_10240:d
dense_10247:
§Э2
dense_10249:2
dense_1_10252:2
dense_1_10254:
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdropout/StatefulPartitionedCallс
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10231conv2d_10233*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€bb»*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_10095и
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€bb»* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_10106к
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€11»* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10063Ш
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_10238conv2d_1_10240*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10119н
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_10130п
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10075№
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€§Э* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_10139д
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€§Э* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10153Ж
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_10247dense_10249*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10166М
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_10252dense_1_10254*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_10183w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€о
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€dd: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
∆
^
B__inference_flatten_layer_call_and_return_conditional_losses_10680

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€§ќ  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€§ЭZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Э"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€d:W S
/
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
Ќ'
щ
E__inference_sequential_layer_call_and_return_conditional_losses_10225
conv2d_input'
conv2d_10193:»
conv2d_10195:	»)
conv2d_1_10200:»d
conv2d_1_10202:d
dense_10214:
§Э2
dense_10216:2
dense_1_10219:2
dense_1_10221:
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallч
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_10193conv2d_10195*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€bb»*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_10095и
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€bb»* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_10106к
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€11»* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10063Ш
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_10200conv2d_1_10202*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10119н
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_10130п
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10075№
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€§Э* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_10139‘
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€§Э* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10212ю
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_10214dense_10216*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10166М
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_10219dense_1_10221*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_10183w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ћ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€dd: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
/
_output_shapes
:€€€€€€€€€dd
&
_user_specified_nameconv2d_input
ї'
у
E__inference_sequential_layer_call_and_return_conditional_losses_10309

inputs'
conv2d_10282:»
conv2d_10284:	»)
conv2d_1_10289:»d
conv2d_1_10291:d
dense_10298:
§Э2
dense_10300:2
dense_1_10303:2
dense_1_10305:
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallс
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10282conv2d_10284*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€bb»*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_10095и
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€bb»* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_10106к
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€11»* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10063Ш
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_10289conv2d_1_10291*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10119н
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_10130п
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10075№
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€§Э* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_10139‘
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€§Э* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10212ю
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_10298dense_10300*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10166М
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_10303dense_1_10305*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_10183w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ћ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€dd: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
ѕО
д
!__inference__traced_restore_11077
file_prefix9
assignvariableop_conv2d_kernel:»-
assignvariableop_1_conv2d_bias:	»=
"assignvariableop_2_conv2d_1_kernel:»d.
 assignvariableop_3_conv2d_1_bias:d3
assignvariableop_4_dense_kernel:
§Э2+
assignvariableop_5_dense_bias:23
!assignvariableop_6_dense_1_kernel:2-
assignvariableop_7_dense_1_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: #
assignvariableop_15_total: #
assignvariableop_16_count: C
(assignvariableop_17_adam_conv2d_kernel_m:»5
&assignvariableop_18_adam_conv2d_bias_m:	»E
*assignvariableop_19_adam_conv2d_1_kernel_m:»d6
(assignvariableop_20_adam_conv2d_1_bias_m:d;
'assignvariableop_21_adam_dense_kernel_m:
§Э23
%assignvariableop_22_adam_dense_bias_m:2;
)assignvariableop_23_adam_dense_1_kernel_m:25
'assignvariableop_24_adam_dense_1_bias_m:C
(assignvariableop_25_adam_conv2d_kernel_v:»5
&assignvariableop_26_adam_conv2d_bias_v:	»E
*assignvariableop_27_adam_conv2d_1_kernel_v:»d6
(assignvariableop_28_adam_conv2d_1_bias_v:d;
'assignvariableop_29_adam_dense_kernel_v:
§Э23
%assignvariableop_30_adam_dense_bias_v:2;
)assignvariableop_31_adam_dense_1_kernel_v:25
'assignvariableop_32_adam_dense_1_bias_v:
identity_34ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9≤
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ў
valueќBЋ"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHі
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ћ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:≥
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_conv2d_kernel_mIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_conv2d_bias_mIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_conv2d_1_kernel_mIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_conv2d_1_bias_mIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_mIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_mIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_mIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_mIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv2d_kernel_vIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_conv2d_bias_vIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv2d_1_kernel_vIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv2d_1_bias_vIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_kernel_vIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_30AssignVariableOp%assignvariableop_30_adam_dense_bias_vIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_1_kernel_vIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_1_bias_vIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 •
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: Т
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
§
C
'__inference_dropout_layer_call_fn_10690

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€§Э* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10212b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Э"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€§Э:Q M
)
_output_shapes
:€€€€€€€€€§Э
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10075

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ет
Ѕ
__inference__traced_save_10968
file_prefix?
$read_disablecopyonread_conv2d_kernel:»3
$read_1_disablecopyonread_conv2d_bias:	»C
(read_2_disablecopyonread_conv2d_1_kernel:»d4
&read_3_disablecopyonread_conv2d_1_bias:d9
%read_4_disablecopyonread_dense_kernel:
§Э21
#read_5_disablecopyonread_dense_bias:29
'read_6_disablecopyonread_dense_1_kernel:23
%read_7_disablecopyonread_dense_1_bias:,
"read_8_disablecopyonread_adam_iter:	 .
$read_9_disablecopyonread_adam_beta_1: /
%read_10_disablecopyonread_adam_beta_2: .
$read_11_disablecopyonread_adam_decay: 6
,read_12_disablecopyonread_adam_learning_rate: +
!read_13_disablecopyonread_total_1: +
!read_14_disablecopyonread_count_1: )
read_15_disablecopyonread_total: )
read_16_disablecopyonread_count: I
.read_17_disablecopyonread_adam_conv2d_kernel_m:»;
,read_18_disablecopyonread_adam_conv2d_bias_m:	»K
0read_19_disablecopyonread_adam_conv2d_1_kernel_m:»d<
.read_20_disablecopyonread_adam_conv2d_1_bias_m:dA
-read_21_disablecopyonread_adam_dense_kernel_m:
§Э29
+read_22_disablecopyonread_adam_dense_bias_m:2A
/read_23_disablecopyonread_adam_dense_1_kernel_m:2;
-read_24_disablecopyonread_adam_dense_1_bias_m:I
.read_25_disablecopyonread_adam_conv2d_kernel_v:»;
,read_26_disablecopyonread_adam_conv2d_bias_v:	»K
0read_27_disablecopyonread_adam_conv2d_1_kernel_v:»d<
.read_28_disablecopyonread_adam_conv2d_1_bias_v:dA
-read_29_disablecopyonread_adam_dense_kernel_v:
§Э29
+read_30_disablecopyonread_adam_dense_bias_v:2A
/read_31_disablecopyonread_adam_dense_1_kernel_v:2;
-read_32_disablecopyonread_adam_dense_1_bias_v:
savev2_const
identity_67ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 ©
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:»*
dtype0r
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:»j

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*'
_output_shapes
:»x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 °
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:»*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:»`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:»|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ±
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:»d*
dtype0v

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:»dl

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*'
_output_shapes
:»dz
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:d_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:dy
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 І
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_dense_kernel^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
§Э2*
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
§Э2e

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
§Э2w
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 Я
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_dense_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:2{
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 І
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_dense_1_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:2y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 °
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_dense_1_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 Ъ
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_adam_iter^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: x
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 Ь
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_adam_beta_1^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: z
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 Я
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_adam_beta_2^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: y
Read_11/DisableCopyOnReadDisableCopyOnRead$read_11_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 Ю
Read_11/ReadVariableOpReadVariableOp$read_11_disablecopyonread_adam_decay^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: Б
Read_12/DisableCopyOnReadDisableCopyOnRead,read_12_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 ¶
Read_12/ReadVariableOpReadVariableOp,read_12_disablecopyonread_adam_learning_rate^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_13/DisableCopyOnReadDisableCopyOnRead!read_13_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_13/ReadVariableOpReadVariableOp!read_13_disablecopyonread_total_1^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_14/DisableCopyOnReadDisableCopyOnRead!read_14_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_14/ReadVariableOpReadVariableOp!read_14_disablecopyonread_count_1^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_15/DisableCopyOnReadDisableCopyOnReadread_15_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_15/ReadVariableOpReadVariableOpread_15_disablecopyonread_total^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_16/DisableCopyOnReadDisableCopyOnReadread_16_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_16/ReadVariableOpReadVariableOpread_16_disablecopyonread_count^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_17/DisableCopyOnReadDisableCopyOnRead.read_17_disablecopyonread_adam_conv2d_kernel_m"/device:CPU:0*
_output_shapes
 є
Read_17/ReadVariableOpReadVariableOp.read_17_disablecopyonread_adam_conv2d_kernel_m^Read_17/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:»*
dtype0x
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:»n
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*'
_output_shapes
:»Б
Read_18/DisableCopyOnReadDisableCopyOnRead,read_18_disablecopyonread_adam_conv2d_bias_m"/device:CPU:0*
_output_shapes
 Ђ
Read_18/ReadVariableOpReadVariableOp,read_18_disablecopyonread_adam_conv2d_bias_m^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:»*
dtype0l
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:»b
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes	
:»Е
Read_19/DisableCopyOnReadDisableCopyOnRead0read_19_disablecopyonread_adam_conv2d_1_kernel_m"/device:CPU:0*
_output_shapes
 ї
Read_19/ReadVariableOpReadVariableOp0read_19_disablecopyonread_adam_conv2d_1_kernel_m^Read_19/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:»d*
dtype0x
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:»dn
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*'
_output_shapes
:»dГ
Read_20/DisableCopyOnReadDisableCopyOnRead.read_20_disablecopyonread_adam_conv2d_1_bias_m"/device:CPU:0*
_output_shapes
 ђ
Read_20/ReadVariableOpReadVariableOp.read_20_disablecopyonread_adam_conv2d_1_bias_m^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:dВ
Read_21/DisableCopyOnReadDisableCopyOnRead-read_21_disablecopyonread_adam_dense_kernel_m"/device:CPU:0*
_output_shapes
 ±
Read_21/ReadVariableOpReadVariableOp-read_21_disablecopyonread_adam_dense_kernel_m^Read_21/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
§Э2*
dtype0q
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
§Э2g
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0* 
_output_shapes
:
§Э2А
Read_22/DisableCopyOnReadDisableCopyOnRead+read_22_disablecopyonread_adam_dense_bias_m"/device:CPU:0*
_output_shapes
 ©
Read_22/ReadVariableOpReadVariableOp+read_22_disablecopyonread_adam_dense_bias_m^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:2Д
Read_23/DisableCopyOnReadDisableCopyOnRead/read_23_disablecopyonread_adam_dense_1_kernel_m"/device:CPU:0*
_output_shapes
 ±
Read_23/ReadVariableOpReadVariableOp/read_23_disablecopyonread_adam_dense_1_kernel_m^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:2В
Read_24/DisableCopyOnReadDisableCopyOnRead-read_24_disablecopyonread_adam_dense_1_bias_m"/device:CPU:0*
_output_shapes
 Ђ
Read_24/ReadVariableOpReadVariableOp-read_24_disablecopyonread_adam_dense_1_bias_m^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:Г
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_conv2d_kernel_v"/device:CPU:0*
_output_shapes
 є
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_conv2d_kernel_v^Read_25/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:»*
dtype0x
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:»n
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*'
_output_shapes
:»Б
Read_26/DisableCopyOnReadDisableCopyOnRead,read_26_disablecopyonread_adam_conv2d_bias_v"/device:CPU:0*
_output_shapes
 Ђ
Read_26/ReadVariableOpReadVariableOp,read_26_disablecopyonread_adam_conv2d_bias_v^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:»*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:»b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:»Е
Read_27/DisableCopyOnReadDisableCopyOnRead0read_27_disablecopyonread_adam_conv2d_1_kernel_v"/device:CPU:0*
_output_shapes
 ї
Read_27/ReadVariableOpReadVariableOp0read_27_disablecopyonread_adam_conv2d_1_kernel_v^Read_27/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:»d*
dtype0x
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:»dn
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*'
_output_shapes
:»dГ
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adam_conv2d_1_bias_v"/device:CPU:0*
_output_shapes
 ђ
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adam_conv2d_1_bias_v^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:dВ
Read_29/DisableCopyOnReadDisableCopyOnRead-read_29_disablecopyonread_adam_dense_kernel_v"/device:CPU:0*
_output_shapes
 ±
Read_29/ReadVariableOpReadVariableOp-read_29_disablecopyonread_adam_dense_kernel_v^Read_29/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
§Э2*
dtype0q
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
§Э2g
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0* 
_output_shapes
:
§Э2А
Read_30/DisableCopyOnReadDisableCopyOnRead+read_30_disablecopyonread_adam_dense_bias_v"/device:CPU:0*
_output_shapes
 ©
Read_30/ReadVariableOpReadVariableOp+read_30_disablecopyonread_adam_dense_bias_v^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:2Д
Read_31/DisableCopyOnReadDisableCopyOnRead/read_31_disablecopyonread_adam_dense_1_kernel_v"/device:CPU:0*
_output_shapes
 ±
Read_31/ReadVariableOpReadVariableOp/read_31_disablecopyonread_adam_dense_1_kernel_v^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes

:2В
Read_32/DisableCopyOnReadDisableCopyOnRead-read_32_disablecopyonread_adam_dense_1_bias_v"/device:CPU:0*
_output_shapes
 Ђ
Read_32/ReadVariableOpReadVariableOp-read_32_disablecopyonread_adam_dense_1_bias_v^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:ѓ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ў
valueќBЋ"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH±
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B  
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *0
dtypes&
$2"	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_66Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_67IdentityIdentity_66:output:0^NoOp*
T0*
_output_shapes
: Ш
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_67Identity_67:output:0*Y
_input_shapesH
F: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:"

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ц
`
'__inference_dropout_layer_call_fn_10685

inputs
identityИҐStatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€§Э* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10153q
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:€€€€€€€€€§Э`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€§Э22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:€€€€€€€€€§Э
 
_user_specified_nameinputs
∆
F
*__inference_activation_layer_call_fn_10615

inputs
identityЉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€bb»* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_10106i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€bb»"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€bb»:X T
0
_output_shapes
:€€€€€€€€€bb»
 
_user_specified_nameinputs
§

a
B__inference_dropout_layer_call_and_return_conditional_losses_10702

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€§ЭQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕО
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Э*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:€€€€€€€€€§ЭT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Х
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Эc
IdentityIdentitydropout/SelectV2:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Э"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€§Э:Q M
)
_output_shapes
:€€€€€€€€€§Э
 
_user_specified_nameinputs
о
Ю
(__inference_conv2d_1_layer_call_fn_10639

inputs"
unknown:»d
	unknown_0:d
identityИҐStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10119w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€//d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€11»: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€11»
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10669

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ё
`
B__inference_dropout_layer_call_and_return_conditional_losses_10707

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:€€€€€€€€€§Э]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Э"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€§Э:Q M
)
_output_shapes
:€€€€€€€€€§Э
 
_user_specified_nameinputs
н
a
E__inference_activation_layer_call_and_return_conditional_losses_10620

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:€€€€€€€€€bb»c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€bb»"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€bb»:X T
0
_output_shapes
:€€€€€€€€€bb»
 
_user_specified_nameinputs
√*
є
E__inference_sequential_layer_call_and_return_conditional_losses_10591

inputs@
%conv2d_conv2d_readvariableop_resource:»5
&conv2d_biasadd_readvariableop_resource:	»B
'conv2d_1_conv2d_readvariableop_resource:»d6
(conv2d_1_biasadd_readvariableop_resource:d8
$dense_matmul_readvariableop_resource:
§Э23
%dense_biasadd_readvariableop_resource:28
&dense_1_matmul_readvariableop_resource:25
'dense_1_biasadd_readvariableop_resource:
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOpҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpЛ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:»*
dtype0©
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€bb»*
paddingVALID*
strides
Б
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0У
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€bb»k
activation/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€bb»≠
max_pooling2d/MaxPoolMaxPoolactivation/Relu:activations:0*0
_output_shapes
:€€€€€€€€€11»*
ksize
*
paddingVALID*
strides
П
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:»d*
dtype0ƒ
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//d*
paddingVALID*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//dn
activation_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€//d∞
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€d*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€§ќ  И
flatten/ReshapeReshape max_pooling2d_1/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Эj
dropout/IdentityIdentityflatten/Reshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€§ЭВ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
§Э2*
dtype0И
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Д
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Л
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€∆
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€dd: : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
Я

у
@__inference_dense_layer_call_and_return_conditional_losses_10166

inputs2
matmul_readvariableop_resource:
§Э2-
biasadd_readvariableop_resource:2
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
§Э2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€§Э: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:€€€€€€€€€§Э
 
_user_specified_nameinputs
√
Ф
%__inference_dense_layer_call_fn_10716

inputs
unknown:
§Э2
	unknown_0:2
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10166o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€§Э: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:€€€€€€€€€§Э
 
_user_specified_nameinputs
Ё
`
B__inference_dropout_layer_call_and_return_conditional_losses_10212

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:€€€€€€€€€§Э]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Э"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€§Э:Q M
)
_output_shapes
:€€€€€€€€€§Э
 
_user_specified_nameinputs
Ђ

э
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10649

inputs9
conv2d_readvariableop_resource:»d-
biasadd_readvariableop_resource:d
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:»d*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//d*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//dg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€//dw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€11»: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€11»
 
_user_specified_nameinputs
л
c
G__inference_activation_1_layer_call_and_return_conditional_losses_10130

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€//db
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€//d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€//d:W S
/
_output_shapes
:€€€€€€€€€//d
 
_user_specified_nameinputs
є
K
/__inference_max_pooling2d_1_layer_call_fn_10664

inputs
identityџ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10075Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
∞
C
'__inference_flatten_layer_call_fn_10674

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€§Э* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_10139b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:€€€€€€€€€§Э"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€d:W S
/
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
Я

у
@__inference_dense_layer_call_and_return_conditional_losses_10727

inputs2
matmul_readvariableop_resource:
§Э2-
biasadd_readvariableop_resource:2
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
§Э2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€§Э: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:€€€€€€€€€§Э
 
_user_specified_nameinputs"у
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Љ
serving_default®
M
conv2d_input=
serving_default_conv2d_input:0€€€€€€€€€dd;
dense_10
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:«о
–
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
•
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
•
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op"
_tf_keras_layer
•
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
•
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
•
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
J_random_generator"
_tf_keras_layer
ї
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias"
_tf_keras_layer
ї
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

Ykernel
Zbias"
_tf_keras_layer
X
0
1
/2
03
Q4
R5
Y6
Z7"
trackable_list_wrapper
X
0
1
/2
03
Q4
R5
Y6
Z7"
trackable_list_wrapper
 "
trackable_list_wrapper
 
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
”
`trace_0
atrace_1
btrace_2
ctrace_32и
*__inference_sequential_layer_call_fn_10277
*__inference_sequential_layer_call_fn_10328
*__inference_sequential_layer_call_fn_10489
*__inference_sequential_layer_call_fn_10510µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z`trace_0zatrace_1zbtrace_2zctrace_3
њ
dtrace_0
etrace_1
ftrace_2
gtrace_32‘
E__inference_sequential_layer_call_and_return_conditional_losses_10190
E__inference_sequential_layer_call_and_return_conditional_losses_10225
E__inference_sequential_layer_call_and_return_conditional_losses_10554
E__inference_sequential_layer_call_and_return_conditional_losses_10591µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zdtrace_0zetrace_1zftrace_2zgtrace_3
–BЌ
 __inference__wrapped_model_10057conv2d_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у
hiter

ibeta_1

jbeta_2
	kdecay
llearning_ratemЅm¬/m√0mƒQm≈Rm∆Ym«Zm»v…v /vЋ0vћQvЌRvќYvѕZv–"
	optimizer
,
mserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
а
strace_02√
&__inference_conv2d_layer_call_fn_10600Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zstrace_0
ы
ttrace_02ё
A__inference_conv2d_layer_call_and_return_conditional_losses_10610Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zttrace_0
(:&»2conv2d/kernel
:»2conv2d/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
д
ztrace_02«
*__inference_activation_layer_call_fn_10615Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zztrace_0
€
{trace_02в
E__inference_activation_layer_call_and_return_conditional_losses_10620Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z{trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ѓ
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
Аlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
й
Бtrace_02 
-__inference_max_pooling2d_layer_call_fn_10625Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zБtrace_0
Д
Вtrace_02е
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10630Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zВtrace_0
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
д
Иtrace_02≈
(__inference_conv2d_1_layer_call_fn_10639Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zИtrace_0
€
Йtrace_02а
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10649Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЙtrace_0
*:(»d2conv2d_1/kernel
:d2conv2d_1/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
и
Пtrace_02…
,__inference_activation_1_layer_call_fn_10654Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zПtrace_0
Г
Рtrace_02д
G__inference_activation_1_layer_call_and_return_conditional_losses_10659Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zРtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
л
Цtrace_02ћ
/__inference_max_pooling2d_1_layer_call_fn_10664Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЦtrace_0
Ж
Чtrace_02з
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10669Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЧtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
г
Эtrace_02ƒ
'__inference_flatten_layer_call_fn_10674Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЭtrace_0
ю
Юtrace_02я
B__inference_flatten_layer_call_and_return_conditional_losses_10680Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЮtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
є
§trace_0
•trace_12ю
'__inference_dropout_layer_call_fn_10685
'__inference_dropout_layer_call_fn_10690©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z§trace_0z•trace_1
п
¶trace_0
Іtrace_12і
B__inference_dropout_layer_call_and_return_conditional_losses_10702
B__inference_dropout_layer_call_and_return_conditional_losses_10707©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z¶trace_0zІtrace_1
"
_generic_user_object
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
б
≠trace_02¬
%__inference_dense_layer_call_fn_10716Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≠trace_0
ь
Ѓtrace_02Ё
@__inference_dense_layer_call_and_return_conditional_losses_10727Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЃtrace_0
 :
§Э22dense/kernel
:22
dense/bias
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
г
іtrace_02ƒ
'__inference_dense_1_layer_call_fn_10736Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zіtrace_0
ю
µtrace_02я
B__inference_dense_1_layer_call_and_return_conditional_losses_10747Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zµtrace_0
 :22dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
0
ґ0
Ј1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
чBф
*__inference_sequential_layer_call_fn_10277conv2d_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
*__inference_sequential_layer_call_fn_10328conv2d_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
*__inference_sequential_layer_call_fn_10489inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
*__inference_sequential_layer_call_fn_10510inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ТBП
E__inference_sequential_layer_call_and_return_conditional_losses_10190conv2d_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ТBП
E__inference_sequential_layer_call_and_return_conditional_losses_10225conv2d_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
МBЙ
E__inference_sequential_layer_call_and_return_conditional_losses_10554inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
МBЙ
E__inference_sequential_layer_call_and_return_conditional_losses_10591inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ѕBћ
#__inference_signature_wrapper_10468conv2d_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
–BЌ
&__inference_conv2d_layer_call_fn_10600inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
лBи
A__inference_conv2d_layer_call_and_return_conditional_losses_10610inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
‘B—
*__inference_activation_layer_call_fn_10615inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_activation_layer_call_and_return_conditional_losses_10620inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
„B‘
-__inference_max_pooling2d_layer_call_fn_10625inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
тBп
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10630inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv2d_1_layer_call_fn_10639inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10649inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
÷B”
,__inference_activation_1_layer_call_fn_10654inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
G__inference_activation_1_layer_call_and_return_conditional_losses_10659inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўB÷
/__inference_max_pooling2d_1_layer_call_fn_10664inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10669inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
—Bќ
'__inference_flatten_layer_call_fn_10674inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
мBй
B__inference_flatten_layer_call_and_return_conditional_losses_10680inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
вBя
'__inference_dropout_layer_call_fn_10685inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
вBя
'__inference_dropout_layer_call_fn_10690inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
B__inference_dropout_layer_call_and_return_conditional_losses_10702inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
B__inference_dropout_layer_call_and_return_conditional_losses_10707inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ѕBћ
%__inference_dense_layer_call_fn_10716inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
кBз
@__inference_dense_layer_call_and_return_conditional_losses_10727inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
—Bќ
'__inference_dense_1_layer_call_fn_10736inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
мBй
B__inference_dense_1_layer_call_and_return_conditional_losses_10747inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
Є	variables
є	keras_api

Їtotal

їcount"
_tf_keras_metric
c
Љ	variables
љ	keras_api

Њtotal

њcount
ј
_fn_kwargs"
_tf_keras_metric
0
Ї0
ї1"
trackable_list_wrapper
.
Є	variables"
_generic_user_object
:  (2total
:  (2count
0
Њ0
њ1"
trackable_list_wrapper
.
Љ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
-:+»2Adam/conv2d/kernel/m
:»2Adam/conv2d/bias/m
/:-»d2Adam/conv2d_1/kernel/m
 :d2Adam/conv2d_1/bias/m
%:#
§Э22Adam/dense/kernel/m
:22Adam/dense/bias/m
%:#22Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
-:+»2Adam/conv2d/kernel/v
:»2Adam/conv2d/bias/v
/:-»d2Adam/conv2d_1/kernel/v
 :d2Adam/conv2d_1/bias/v
%:#
§Э22Adam/dense/kernel/v
:22Adam/dense/bias/v
%:#22Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v†
 __inference__wrapped_model_10057|/0QRYZ=Ґ:
3Ґ0
.К+
conv2d_input€€€€€€€€€dd
™ "1™.
,
dense_1!К
dense_1€€€€€€€€€Ї
G__inference_activation_1_layer_call_and_return_conditional_losses_10659o7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€//d
™ "4Ґ1
*К'
tensor_0€€€€€€€€€//d
Ъ Ф
,__inference_activation_1_layer_call_fn_10654d7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€//d
™ ")К&
unknown€€€€€€€€€//dЇ
E__inference_activation_layer_call_and_return_conditional_losses_10620q8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€bb»
™ "5Ґ2
+К(
tensor_0€€€€€€€€€bb»
Ъ Ф
*__inference_activation_layer_call_fn_10615f8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€bb»
™ "*К'
unknown€€€€€€€€€bb»ї
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10649t/08Ґ5
.Ґ+
)К&
inputs€€€€€€€€€11»
™ "4Ґ1
*К'
tensor_0€€€€€€€€€//d
Ъ Х
(__inference_conv2d_1_layer_call_fn_10639i/08Ґ5
.Ґ+
)К&
inputs€€€€€€€€€11»
™ ")К&
unknown€€€€€€€€€//dє
A__inference_conv2d_layer_call_and_return_conditional_losses_10610t7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€dd
™ "5Ґ2
+К(
tensor_0€€€€€€€€€bb»
Ъ У
&__inference_conv2d_layer_call_fn_10600i7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€dd
™ "*К'
unknown€€€€€€€€€bb»©
B__inference_dense_1_layer_call_and_return_conditional_losses_10747cYZ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€2
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Г
'__inference_dense_1_layer_call_fn_10736XYZ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€2
™ "!К
unknown€€€€€€€€€©
@__inference_dense_layer_call_and_return_conditional_losses_10727eQR1Ґ.
'Ґ$
"К
inputs€€€€€€€€€§Э
™ ",Ґ)
"К
tensor_0€€€€€€€€€2
Ъ Г
%__inference_dense_layer_call_fn_10716ZQR1Ґ.
'Ґ$
"К
inputs€€€€€€€€€§Э
™ "!К
unknown€€€€€€€€€2≠
B__inference_dropout_layer_call_and_return_conditional_losses_10702g5Ґ2
+Ґ(
"К
inputs€€€€€€€€€§Э
p
™ ".Ґ+
$К!
tensor_0€€€€€€€€€§Э
Ъ ≠
B__inference_dropout_layer_call_and_return_conditional_losses_10707g5Ґ2
+Ґ(
"К
inputs€€€€€€€€€§Э
p 
™ ".Ґ+
$К!
tensor_0€€€€€€€€€§Э
Ъ З
'__inference_dropout_layer_call_fn_10685\5Ґ2
+Ґ(
"К
inputs€€€€€€€€€§Э
p
™ "#К 
unknown€€€€€€€€€§ЭЗ
'__inference_dropout_layer_call_fn_10690\5Ґ2
+Ґ(
"К
inputs€€€€€€€€€§Э
p 
™ "#К 
unknown€€€€€€€€€§Эѓ
B__inference_flatten_layer_call_and_return_conditional_losses_10680i7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€d
™ ".Ґ+
$К!
tensor_0€€€€€€€€€§Э
Ъ Й
'__inference_flatten_layer_call_fn_10674^7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€d
™ "#К 
unknown€€€€€€€€€§Эф
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10669•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ќ
/__inference_max_pooling2d_1_layer_call_fn_10664ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€т
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10630•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ћ
-__inference_max_pooling2d_layer_call_fn_10625ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€»
E__inference_sequential_layer_call_and_return_conditional_losses_10190/0QRYZEҐB
;Ґ8
.К+
conv2d_input€€€€€€€€€dd
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ »
E__inference_sequential_layer_call_and_return_conditional_losses_10225/0QRYZEҐB
;Ґ8
.К+
conv2d_input€€€€€€€€€dd
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ¬
E__inference_sequential_layer_call_and_return_conditional_losses_10554y/0QRYZ?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ¬
E__inference_sequential_layer_call_and_return_conditional_losses_10591y/0QRYZ?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ґ
*__inference_sequential_layer_call_fn_10277t/0QRYZEҐB
;Ґ8
.К+
conv2d_input€€€€€€€€€dd
p

 
™ "!К
unknown€€€€€€€€€Ґ
*__inference_sequential_layer_call_fn_10328t/0QRYZEҐB
;Ґ8
.К+
conv2d_input€€€€€€€€€dd
p 

 
™ "!К
unknown€€€€€€€€€Ь
*__inference_sequential_layer_call_fn_10489n/0QRYZ?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p

 
™ "!К
unknown€€€€€€€€€Ь
*__inference_sequential_layer_call_fn_10510n/0QRYZ?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p 

 
™ "!К
unknown€€€€€€€€€і
#__inference_signature_wrapper_10468М/0QRYZMҐJ
Ґ 
C™@
>
conv2d_input.К+
conv2d_input€€€€€€€€€dd"1™.
,
dense_1!К
dense_1€€€€€€€€€