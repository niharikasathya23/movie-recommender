ª
ôÃ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
®
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-15-g6290819256d8
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
·
-Adam/v/recommender_net/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	üK*>
shared_name/-Adam/v/recommender_net/embedding_3/embeddings
°
AAdam/v/recommender_net/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp-Adam/v/recommender_net/embedding_3/embeddings*
_output_shapes
:	üK*
dtype0
·
-Adam/m/recommender_net/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	üK*>
shared_name/-Adam/m/recommender_net/embedding_3/embeddings
°
AAdam/m/recommender_net/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp-Adam/m/recommender_net/embedding_3/embeddings*
_output_shapes
:	üK*
dtype0
·
-Adam/v/recommender_net/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	üK2*>
shared_name/-Adam/v/recommender_net/embedding_2/embeddings
°
AAdam/v/recommender_net/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp-Adam/v/recommender_net/embedding_2/embeddings*
_output_shapes
:	üK2*
dtype0
·
-Adam/m/recommender_net/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	üK2*>
shared_name/-Adam/m/recommender_net/embedding_2/embeddings
°
AAdam/m/recommender_net/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp-Adam/m/recommender_net/embedding_2/embeddings*
_output_shapes
:	üK2*
dtype0
·
-Adam/v/recommender_net/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	â*>
shared_name/-Adam/v/recommender_net/embedding_1/embeddings
°
AAdam/v/recommender_net/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp-Adam/v/recommender_net/embedding_1/embeddings*
_output_shapes
:	â*
dtype0
·
-Adam/m/recommender_net/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	â*>
shared_name/-Adam/m/recommender_net/embedding_1/embeddings
°
AAdam/m/recommender_net/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp-Adam/m/recommender_net/embedding_1/embeddings*
_output_shapes
:	â*
dtype0
³
+Adam/v/recommender_net/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	â2*<
shared_name-+Adam/v/recommender_net/embedding/embeddings
¬
?Adam/v/recommender_net/embedding/embeddings/Read/ReadVariableOpReadVariableOp+Adam/v/recommender_net/embedding/embeddings*
_output_shapes
:	â2*
dtype0
³
+Adam/m/recommender_net/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	â2*<
shared_name-+Adam/m/recommender_net/embedding/embeddings
¬
?Adam/m/recommender_net/embedding/embeddings/Read/ReadVariableOpReadVariableOp+Adam/m/recommender_net/embedding/embeddings*
_output_shapes
:	â2*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
©
&recommender_net/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	üK*7
shared_name(&recommender_net/embedding_3/embeddings
¢
:recommender_net/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp&recommender_net/embedding_3/embeddings*
_output_shapes
:	üK*
dtype0
©
&recommender_net/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	üK2*7
shared_name(&recommender_net/embedding_2/embeddings
¢
:recommender_net/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp&recommender_net/embedding_2/embeddings*
_output_shapes
:	üK2*
dtype0
©
&recommender_net/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	â*7
shared_name(&recommender_net/embedding_1/embeddings
¢
:recommender_net/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp&recommender_net/embedding_1/embeddings*
_output_shapes
:	â*
dtype0
¥
$recommender_net/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	â2*5
shared_name&$recommender_net/embedding/embeddings

8recommender_net/embedding/embeddings/Read/ReadVariableOpReadVariableOp$recommender_net/embedding/embeddings*
_output_shapes
:	â2*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
×
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1$recommender_net/embedding/embeddings&recommender_net/embedding_1/embeddings&recommender_net/embedding_2/embeddings&recommender_net/embedding_3/embeddings*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_27806

NoOpNoOp
ø(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*³(
value©(B¦( B(

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
user_embedding
		user_bias

movie_embedding

movie_bias
	optimizer

signatures*
 
0
1
2
3*
 
0
1
2
3*

0
1* 
°
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
 
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

embeddings*
 
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

embeddings*
 
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

embeddings*
 
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

embeddings*

5
_variables
6_iterations
7_learning_rate
8_index_dict
9
_momentums
:_velocities
;_update_step_xla*

<serving_default* 
d^
VARIABLE_VALUE$recommender_net/embedding/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&recommender_net/embedding_1/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&recommender_net/embedding_2/embeddings&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&recommender_net/embedding_3/embeddings&variables/3/.ATTRIBUTES/VARIABLE_VALUE*

=trace_0* 

>trace_0* 
* 
 
0
	1

2
3*

?0*
* 
* 
* 
* 
* 
* 

0*

0*
	
0* 

@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

Etrace_0* 

Ftrace_0* 

0*

0*
* 

Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

Ltrace_0* 

Mtrace_0* 

0*

0*
	
0* 

Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

Strace_0* 

Ttrace_0* 

0*

0*
* 

Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

Ztrace_0* 

[trace_0* 
C
60
\1
]2
^3
_4
`5
a6
b7
c8*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
\0
^1
`2
b3*
 
]0
_1
a2
c3*
* 
* 
* 
* 
8
d	variables
e	keras_api
	ftotal
	gcount*
* 
* 
* 
	
0* 
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
	
0* 
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
vp
VARIABLE_VALUE+Adam/m/recommender_net/embedding/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE+Adam/v/recommender_net/embedding/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE-Adam/m/recommender_net/embedding_1/embeddings1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE-Adam/v/recommender_net/embedding_1/embeddings1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE-Adam/m/recommender_net/embedding_2/embeddings1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE-Adam/v/recommender_net/embedding_2/embeddings1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE-Adam/m/recommender_net/embedding_3/embeddings1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE-Adam/v/recommender_net/embedding_3/embeddings1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*

f0
g1*

d	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¤	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename8recommender_net/embedding/embeddings/Read/ReadVariableOp:recommender_net/embedding_1/embeddings/Read/ReadVariableOp:recommender_net/embedding_2/embeddings/Read/ReadVariableOp:recommender_net/embedding_3/embeddings/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp?Adam/m/recommender_net/embedding/embeddings/Read/ReadVariableOp?Adam/v/recommender_net/embedding/embeddings/Read/ReadVariableOpAAdam/m/recommender_net/embedding_1/embeddings/Read/ReadVariableOpAAdam/v/recommender_net/embedding_1/embeddings/Read/ReadVariableOpAAdam/m/recommender_net/embedding_2/embeddings/Read/ReadVariableOpAAdam/v/recommender_net/embedding_2/embeddings/Read/ReadVariableOpAAdam/m/recommender_net/embedding_3/embeddings/Read/ReadVariableOpAAdam/v/recommender_net/embedding_3/embeddings/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_28075
ß
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename$recommender_net/embedding/embeddings&recommender_net/embedding_1/embeddings&recommender_net/embedding_2/embeddings&recommender_net/embedding_3/embeddings	iterationlearning_rate+Adam/m/recommender_net/embedding/embeddings+Adam/v/recommender_net/embedding/embeddings-Adam/m/recommender_net/embedding_1/embeddings-Adam/v/recommender_net/embedding_1/embeddings-Adam/m/recommender_net/embedding_2/embeddings-Adam/v/recommender_net/embedding_2/embeddings-Adam/m/recommender_net/embedding_3/embeddings-Adam/v/recommender_net/embedding_3/embeddingstotalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_28133¥«

~
)__inference_embedding_layer_call_fn_27939

inputs	
unknown:	â2
identity¢StatefulPartitionedCallÌ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_27539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
.
	
__inference__traced_save_28075
file_prefixC
?savev2_recommender_net_embedding_embeddings_read_readvariableopE
Asavev2_recommender_net_embedding_1_embeddings_read_readvariableopE
Asavev2_recommender_net_embedding_2_embeddings_read_readvariableopE
Asavev2_recommender_net_embedding_3_embeddings_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopJ
Fsavev2_adam_m_recommender_net_embedding_embeddings_read_readvariableopJ
Fsavev2_adam_v_recommender_net_embedding_embeddings_read_readvariableopL
Hsavev2_adam_m_recommender_net_embedding_1_embeddings_read_readvariableopL
Hsavev2_adam_v_recommender_net_embedding_1_embeddings_read_readvariableopL
Hsavev2_adam_m_recommender_net_embedding_2_embeddings_read_readvariableopL
Hsavev2_adam_v_recommender_net_embedding_2_embeddings_read_readvariableopL
Hsavev2_adam_m_recommender_net_embedding_3_embeddings_read_readvariableopL
Hsavev2_adam_v_recommender_net_embedding_3_embeddings_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¾
value´B±B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B Ò	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0?savev2_recommender_net_embedding_embeddings_read_readvariableopAsavev2_recommender_net_embedding_1_embeddings_read_readvariableopAsavev2_recommender_net_embedding_2_embeddings_read_readvariableopAsavev2_recommender_net_embedding_3_embeddings_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableopFsavev2_adam_m_recommender_net_embedding_embeddings_read_readvariableopFsavev2_adam_v_recommender_net_embedding_embeddings_read_readvariableopHsavev2_adam_m_recommender_net_embedding_1_embeddings_read_readvariableopHsavev2_adam_v_recommender_net_embedding_1_embeddings_read_readvariableopHsavev2_adam_m_recommender_net_embedding_2_embeddings_read_readvariableopHsavev2_adam_v_recommender_net_embedding_2_embeddings_read_readvariableopHsavev2_adam_m_recommender_net_embedding_3_embeddings_read_readvariableopHsavev2_adam_v_recommender_net_embedding_3_embeddings_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:³
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*¥
_input_shapes
: :	â2:	â:	üK2:	üK: : :	â2:	â2:	â:	â:	üK2:	üK2:	üK:	üK: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	â2:%!

_output_shapes
:	â:%!

_output_shapes
:	üK2:%!

_output_shapes
:	üK:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	â2:%!

_output_shapes
:	â2:%	!

_output_shapes
:	â:%
!

_output_shapes
:	â:%!

_output_shapes
:	üK2:%!

_output_shapes
:	üK2:%!

_output_shapes
:	üK:%!

_output_shapes
:	üK:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
­
£
F__inference_embedding_3_layer_call_and_return_conditional_losses_27594

inputs	)
embedding_lookup_27588:	üK
identity¢embedding_lookup³
embedding_lookupResourceGatherembedding_lookup_27588inputs*
Tindices0	*)
_class
loc:@embedding_lookup/27588*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/27588*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ýJ

!__inference__traced_restore_28133
file_prefixH
5assignvariableop_recommender_net_embedding_embeddings:	â2L
9assignvariableop_1_recommender_net_embedding_1_embeddings:	âL
9assignvariableop_2_recommender_net_embedding_2_embeddings:	üK2L
9assignvariableop_3_recommender_net_embedding_3_embeddings:	üK&
assignvariableop_4_iteration:	 *
 assignvariableop_5_learning_rate: Q
>assignvariableop_6_adam_m_recommender_net_embedding_embeddings:	â2Q
>assignvariableop_7_adam_v_recommender_net_embedding_embeddings:	â2S
@assignvariableop_8_adam_m_recommender_net_embedding_1_embeddings:	âS
@assignvariableop_9_adam_v_recommender_net_embedding_1_embeddings:	âT
Aassignvariableop_10_adam_m_recommender_net_embedding_2_embeddings:	üK2T
Aassignvariableop_11_adam_v_recommender_net_embedding_2_embeddings:	üK2T
Aassignvariableop_12_adam_m_recommender_net_embedding_3_embeddings:	üKT
Aassignvariableop_13_adam_v_recommender_net_embedding_3_embeddings:	üK#
assignvariableop_14_total: #
assignvariableop_15_count: 
identity_17¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¾
value´B±B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ó
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:È
AssignVariableOpAssignVariableOp5assignvariableop_recommender_net_embedding_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_1AssignVariableOp9assignvariableop_1_recommender_net_embedding_1_embeddingsIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_2AssignVariableOp9assignvariableop_2_recommender_net_embedding_2_embeddingsIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_3AssignVariableOp9assignvariableop_3_recommender_net_embedding_3_embeddingsIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:³
AssignVariableOp_4AssignVariableOpassignvariableop_4_iterationIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_5AssignVariableOp assignvariableop_5_learning_rateIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Õ
AssignVariableOp_6AssignVariableOp>assignvariableop_6_adam_m_recommender_net_embedding_embeddingsIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Õ
AssignVariableOp_7AssignVariableOp>assignvariableop_7_adam_v_recommender_net_embedding_embeddingsIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:×
AssignVariableOp_8AssignVariableOp@assignvariableop_8_adam_m_recommender_net_embedding_1_embeddingsIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:×
AssignVariableOp_9AssignVariableOp@assignvariableop_9_adam_v_recommender_net_embedding_1_embeddingsIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ú
AssignVariableOp_10AssignVariableOpAassignvariableop_10_adam_m_recommender_net_embedding_2_embeddingsIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ú
AssignVariableOp_11AssignVariableOpAassignvariableop_11_adam_v_recommender_net_embedding_2_embeddingsIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ú
AssignVariableOp_12AssignVariableOpAassignvariableop_12_adam_m_recommender_net_embedding_3_embeddingsIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ú
AssignVariableOp_13AssignVariableOpAassignvariableop_13_adam_v_recommender_net_embedding_3_embeddingsIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ¯
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


+__inference_embedding_2_layer_call_fn_27975

inputs	
unknown:	üK2
identity¢StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_27577o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


+__inference_embedding_1_layer_call_fn_27959

inputs	
unknown:	â
identity¢StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_27556o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
\
ª
J__inference_recommender_net_layer_call_and_return_conditional_losses_27781
input_1	"
embedding_27709:	â2$
embedding_1_27716:	â$
embedding_2_27723:	üK2$
embedding_3_27730:	üK
identity¢!embedding/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢#embedding_3/StatefulPartitionedCall¢Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp¢Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ù
strided_sliceStridedSliceinput_1strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskî
!embedding/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_27709*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_27539f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinput_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskö
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_1_27716*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_27556f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinput_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskö
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_2_27723*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_27577f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinput_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskö
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_3_27730*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_27594_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB i
Tensordot/ShapeShape*embedding/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose	Transpose*embedding/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB m
Tensordot/Shape_1Shape,embedding_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose_1	Transpose,embedding_2/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:0,embedding_1/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
add_1AddV2add:z:0,embedding_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_27709*
_output_shapes
:	â2*
dtype0²
7recommender_net/embedding/embeddings/Regularizer/L2LossL2LossNrecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: {
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½76ß
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0@recommender_net/embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: 
Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_2_27723*
_output_shapes
:	üK2*
dtype0¶
9recommender_net/embedding_2/embeddings/Regularizer/L2LossL2LossPrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: }
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½76å
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0Brecommender_net/embedding_2/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
NoOpNoOp"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCallG^recommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpI^recommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2
Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2
Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
®
Þ
/__inference_recommender_net_layer_call_fn_27819

inputs	
unknown:	â2
	unknown_0:	â
	unknown_1:	üK2
	unknown_2:	üK
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_recommender_net_layer_call_and_return_conditional_losses_27646o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
Ó
#__inference_signature_wrapper_27806
input_1	
unknown:	â2
	unknown_0:	â
	unknown_1:	üK2
	unknown_2:	üK
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_27515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
­
£
F__inference_embedding_1_layer_call_and_return_conditional_losses_27968

inputs	)
embedding_lookup_27962:	â
identity¢embedding_lookup³
embedding_lookupResourceGatherembedding_lookup_27962inputs*
Tindices0	*)
_class
loc:@embedding_lookup/27962*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/27962*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼b
Ñ
J__inference_recommender_net_layer_call_and_return_conditional_losses_27906

inputs	3
 embedding_embedding_lookup_27826:	â25
"embedding_1_embedding_lookup_27835:	â5
"embedding_2_embedding_lookup_27844:	üK25
"embedding_3_embedding_lookup_27853:	üK
identity¢embedding/embedding_lookup¢embedding_1/embedding_lookup¢embedding_2/embedding_lookup¢embedding_3/embedding_lookup¢Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp¢Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ø
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maská
embedding/embedding_lookupResourceGather embedding_embedding_lookup_27826strided_slice:output:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/27826*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0»
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/27826*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maské
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_27835strided_slice_1:output:0*
Tindices0	*5
_class+
)'loc:@embedding_1/embedding_lookup/27835*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Á
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/27835*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maské
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_27844strided_slice_2:output:0*
Tindices0	*5
_class+
)'loc:@embedding_2/embedding_lookup/27844*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0Á
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/27844*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maské
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_27853strided_slice_3:output:0*
Tindices0	*5
_class+
)'loc:@embedding_3/embedding_lookup/27853*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Á
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/27853*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB m
Tensordot/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB q
Tensordot/Shape_1Shape0embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:£
Tensordot/transpose_1	Transpose0embedding_2/embedding_lookup/Identity_1:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:00embedding_1/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
add_1AddV2add:z:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp embedding_embedding_lookup_27826*
_output_shapes
:	â2*
dtype0²
7recommender_net/embedding/embeddings/Regularizer/L2LossL2LossNrecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: {
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½76ß
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0@recommender_net/embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ¬
Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp"embedding_2_embedding_lookup_27844*
_output_shapes
:	üK2*
dtype0¶
9recommender_net/embedding_2/embeddings/Regularizer/L2LossL2LossPrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: }
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½76å
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0Brecommender_net/embedding_2/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^embedding/embedding_lookup^embedding_1/embedding_lookup^embedding_2/embedding_lookup^embedding_3/embedding_lookupG^recommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpI^recommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2
Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2
Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

î
F__inference_embedding_2_layer_call_and_return_conditional_losses_27577

inputs	)
embedding_lookup_27567:	üK2
identity¢embedding_lookup¢Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp³
embedding_lookupResourceGatherembedding_lookup_27567inputs*
Tindices0	*)
_class
loc:@embedding_lookup/27567*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/27567*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_27567*
_output_shapes
:	üK2*
dtype0¶
9recommender_net/embedding_2/embeddings/Regularizer/L2LossL2LossPrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: }
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½76å
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0Brecommender_net/embedding_2/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¤
NoOpNoOp^embedding_lookupI^recommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

î
F__inference_embedding_2_layer_call_and_return_conditional_losses_27988

inputs	)
embedding_lookup_27978:	üK2
identity¢embedding_lookup¢Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp³
embedding_lookupResourceGatherembedding_lookup_27978inputs*
Tindices0	*)
_class
loc:@embedding_lookup/27978*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/27978*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_27978*
_output_shapes
:	üK2*
dtype0¶
9recommender_net/embedding_2/embeddings/Regularizer/L2LossL2LossPrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: }
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½76å
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0Brecommender_net/embedding_2/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¤
NoOpNoOp^embedding_lookupI^recommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü[
©
J__inference_recommender_net_layer_call_and_return_conditional_losses_27646

inputs	"
embedding_27540:	â2$
embedding_1_27557:	â$
embedding_2_27578:	üK2$
embedding_3_27595:	üK
identity¢!embedding/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢#embedding_3/StatefulPartitionedCall¢Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp¢Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ø
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskî
!embedding/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_27540*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_27539f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskö
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_1_27557*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_27556f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskö
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_2_27578*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_27577f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskö
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_3_27595*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_27594_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB i
Tensordot/ShapeShape*embedding/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose	Transpose*embedding/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB m
Tensordot/Shape_1Shape,embedding_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose_1	Transpose,embedding_2/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:0,embedding_1/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
add_1AddV2add:z:0,embedding_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_27540*
_output_shapes
:	â2*
dtype0²
7recommender_net/embedding/embeddings/Regularizer/L2LossL2LossNrecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: {
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½76ß
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0@recommender_net/embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: 
Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_2_27578*
_output_shapes
:	üK2*
dtype0¶
9recommender_net/embedding_2/embeddings/Regularizer/L2LossL2LossPrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: }
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½76å
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0Brecommender_net/embedding_2/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
NoOpNoOp"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCallG^recommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpI^recommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2
Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2
Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
ß
/__inference_recommender_net_layer_call_fn_27657
input_1	
unknown:	â2
	unknown_0:	â
	unknown_1:	üK2
	unknown_2:	üK
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_recommender_net_layer_call_and_return_conditional_losses_27646o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
É
Û
__inference_loss_fn_0_27923b
Orecommender_net_embedding_embeddings_regularizer_l2loss_readvariableop_resource:	â2
identity¢Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp×
Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpOrecommender_net_embedding_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	â2*
dtype0²
7recommender_net/embedding/embeddings/Regularizer/L2LossL2LossNrecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: {
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½76ß
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0@recommender_net/embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: v
IdentityIdentity8recommender_net/embedding/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpG^recommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp
å
ß
__inference_loss_fn_1_27932d
Qrecommender_net_embedding_2_embeddings_regularizer_l2loss_readvariableop_resource:	üK2
identity¢Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpÛ
Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpQrecommender_net_embedding_2_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	üK2*
dtype0¶
9recommender_net/embedding_2/embeddings/Regularizer/L2LossL2LossPrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: }
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½76å
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0Brecommender_net/embedding_2/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity:recommender_net/embedding_2/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpI^recommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Hrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/L2Loss/ReadVariableOp
Âh

 __inference__wrapped_model_27515
input_1	C
0recommender_net_embedding_embedding_lookup_27443:	â2E
2recommender_net_embedding_1_embedding_lookup_27452:	âE
2recommender_net_embedding_2_embedding_lookup_27461:	üK2E
2recommender_net_embedding_3_embedding_lookup_27470:	üK
identity¢*recommender_net/embedding/embedding_lookup¢,recommender_net/embedding_1/embedding_lookup¢,recommender_net/embedding_2/embedding_lookup¢,recommender_net/embedding_3/embedding_lookupt
#recommender_net/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%recommender_net/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       v
%recommender_net/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¹
recommender_net/strided_sliceStridedSliceinput_1,recommender_net/strided_slice/stack:output:0.recommender_net/strided_slice/stack_1:output:0.recommender_net/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask¡
*recommender_net/embedding/embedding_lookupResourceGather0recommender_net_embedding_embedding_lookup_27443&recommender_net/strided_slice:output:0*
Tindices0	*C
_class9
75loc:@recommender_net/embedding/embedding_lookup/27443*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0ë
3recommender_net/embedding/embedding_lookup/IdentityIdentity3recommender_net/embedding/embedding_lookup:output:0*
T0*C
_class9
75loc:@recommender_net/embedding/embedding_lookup/27443*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2±
5recommender_net/embedding/embedding_lookup/Identity_1Identity<recommender_net/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%recommender_net/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'recommender_net/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Á
recommender_net/strided_slice_1StridedSliceinput_1.recommender_net/strided_slice_1/stack:output:00recommender_net/strided_slice_1/stack_1:output:00recommender_net/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask©
,recommender_net/embedding_1/embedding_lookupResourceGather2recommender_net_embedding_1_embedding_lookup_27452(recommender_net/strided_slice_1:output:0*
Tindices0	*E
_class;
97loc:@recommender_net/embedding_1/embedding_lookup/27452*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ñ
5recommender_net/embedding_1/embedding_lookup/IdentityIdentity5recommender_net/embedding_1/embedding_lookup:output:0*
T0*E
_class;
97loc:@recommender_net/embedding_1/embedding_lookup/27452*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
7recommender_net/embedding_1/embedding_lookup/Identity_1Identity>recommender_net/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%recommender_net/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Á
recommender_net/strided_slice_2StridedSliceinput_1.recommender_net/strided_slice_2/stack:output:00recommender_net/strided_slice_2/stack_1:output:00recommender_net/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask©
,recommender_net/embedding_2/embedding_lookupResourceGather2recommender_net_embedding_2_embedding_lookup_27461(recommender_net/strided_slice_2:output:0*
Tindices0	*E
_class;
97loc:@recommender_net/embedding_2/embedding_lookup/27461*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0ñ
5recommender_net/embedding_2/embedding_lookup/IdentityIdentity5recommender_net/embedding_2/embedding_lookup:output:0*
T0*E
_class;
97loc:@recommender_net/embedding_2/embedding_lookup/27461*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2µ
7recommender_net/embedding_2/embedding_lookup/Identity_1Identity>recommender_net/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%recommender_net/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Á
recommender_net/strided_slice_3StridedSliceinput_1.recommender_net/strided_slice_3/stack:output:00recommender_net/strided_slice_3/stack_1:output:00recommender_net/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask©
,recommender_net/embedding_3/embedding_lookupResourceGather2recommender_net_embedding_3_embedding_lookup_27470(recommender_net/strided_slice_3:output:0*
Tindices0	*E
_class;
97loc:@recommender_net/embedding_3/embedding_lookup/27470*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ñ
5recommender_net/embedding_3/embedding_lookup/IdentityIdentity5recommender_net/embedding_3/embedding_lookup:output:0*
T0*E
_class;
97loc:@recommender_net/embedding_3/embedding_lookup/27470*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
7recommender_net/embedding_3/embedding_lookup/Identity_1Identity>recommender_net/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
recommender_net/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       a
recommender_net/Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 
recommender_net/Tensordot/ShapeShape>recommender_net/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:i
'recommender_net/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ù
"recommender_net/Tensordot/GatherV2GatherV2(recommender_net/Tensordot/Shape:output:0'recommender_net/Tensordot/free:output:00recommender_net/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: k
)recommender_net/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
$recommender_net/Tensordot/GatherV2_1GatherV2(recommender_net/Tensordot/Shape:output:0'recommender_net/Tensordot/axes:output:02recommender_net/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
recommender_net/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
recommender_net/Tensordot/ProdProd+recommender_net/Tensordot/GatherV2:output:0(recommender_net/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!recommender_net/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¤
 recommender_net/Tensordot/Prod_1Prod-recommender_net/Tensordot/GatherV2_1:output:0*recommender_net/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%recommender_net/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ü
 recommender_net/Tensordot/concatConcatV2'recommender_net/Tensordot/free:output:0'recommender_net/Tensordot/axes:output:0.recommender_net/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:©
recommender_net/Tensordot/stackPack'recommender_net/Tensordot/Prod:output:0)recommender_net/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Í
#recommender_net/Tensordot/transpose	Transpose>recommender_net/embedding/embedding_lookup/Identity_1:output:0)recommender_net/Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2º
!recommender_net/Tensordot/ReshapeReshape'recommender_net/Tensordot/transpose:y:0(recommender_net/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿq
 recommender_net/Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       c
 recommender_net/Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 
!recommender_net/Tensordot/Shape_1Shape@recommender_net/embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:k
)recommender_net/Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
$recommender_net/Tensordot/GatherV2_2GatherV2*recommender_net/Tensordot/Shape_1:output:0)recommender_net/Tensordot/free_1:output:02recommender_net/Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: k
)recommender_net/Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 
$recommender_net/Tensordot/GatherV2_3GatherV2*recommender_net/Tensordot/Shape_1:output:0)recommender_net/Tensordot/axes_1:output:02recommender_net/Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!recommender_net/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: ¤
 recommender_net/Tensordot/Prod_2Prod-recommender_net/Tensordot/GatherV2_2:output:0*recommender_net/Tensordot/Const_2:output:0*
T0*
_output_shapes
: k
!recommender_net/Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: ¤
 recommender_net/Tensordot/Prod_3Prod-recommender_net/Tensordot/GatherV2_3:output:0*recommender_net/Tensordot/Const_3:output:0*
T0*
_output_shapes
: i
'recommender_net/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ä
"recommender_net/Tensordot/concat_1ConcatV2)recommender_net/Tensordot/axes_1:output:0)recommender_net/Tensordot/free_1:output:00recommender_net/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:­
!recommender_net/Tensordot/stack_1Pack)recommender_net/Tensordot/Prod_3:output:0)recommender_net/Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:Ó
%recommender_net/Tensordot/transpose_1	Transpose@recommender_net/embedding_2/embedding_lookup/Identity_1:output:0+recommender_net/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
#recommender_net/Tensordot/Reshape_1Reshape)recommender_net/Tensordot/transpose_1:y:0*recommender_net/Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿
 recommender_net/Tensordot/MatMulMatMul*recommender_net/Tensordot/Reshape:output:0,recommender_net/Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
'recommender_net/Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : è
"recommender_net/Tensordot/concat_2ConcatV2+recommender_net/Tensordot/GatherV2:output:0-recommender_net/Tensordot/GatherV2_2:output:00recommender_net/Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 
recommender_net/TensordotReshape*recommender_net/Tensordot/MatMul:product:0+recommender_net/Tensordot/concat_2:output:0*
T0*
_output_shapes
: ´
recommender_net/addAddV2"recommender_net/Tensordot:output:0@recommender_net/embedding_1/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
recommender_net/add_1AddV2recommender_net/add:z:0@recommender_net/embedding_3/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
recommender_net/SigmoidSigmoidrecommender_net/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityrecommender_net/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp+^recommender_net/embedding/embedding_lookup-^recommender_net/embedding_1/embedding_lookup-^recommender_net/embedding_2/embedding_lookup-^recommender_net/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2X
*recommender_net/embedding/embedding_lookup*recommender_net/embedding/embedding_lookup2\
,recommender_net/embedding_1/embedding_lookup,recommender_net/embedding_1/embedding_lookup2\
,recommender_net/embedding_2/embedding_lookup,recommender_net/embedding_2/embedding_lookup2\
,recommender_net/embedding_3/embedding_lookup,recommender_net/embedding_3/embedding_lookup:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1

ê
D__inference_embedding_layer_call_and_return_conditional_losses_27952

inputs	)
embedding_lookup_27942:	â2
identity¢embedding_lookup¢Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp³
embedding_lookupResourceGatherembedding_lookup_27942inputs*
Tindices0	*)
_class
loc:@embedding_lookup/27942*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/27942*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_27942*
_output_shapes
:	â2*
dtype0²
7recommender_net/embedding/embeddings/Regularizer/L2LossL2LossNrecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: {
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½76ß
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0@recommender_net/embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
NoOpNoOp^embedding_lookupG^recommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
£
F__inference_embedding_1_layer_call_and_return_conditional_losses_27556

inputs	)
embedding_lookup_27550:	â
identity¢embedding_lookup³
embedding_lookupResourceGatherembedding_lookup_27550inputs*
Tindices0	*)
_class
loc:@embedding_lookup/27550*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/27550*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
£
F__inference_embedding_3_layer_call_and_return_conditional_losses_28004

inputs	)
embedding_lookup_27998:	üK
identity¢embedding_lookup³
embedding_lookupResourceGatherembedding_lookup_27998inputs*
Tindices0	*)
_class
loc:@embedding_lookup/27998*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/27998*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


+__inference_embedding_3_layer_call_fn_27995

inputs	
unknown:	üK
identity¢StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_27594o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ê
D__inference_embedding_layer_call_and_return_conditional_losses_27539

inputs	)
embedding_lookup_27529:	â2
identity¢embedding_lookup¢Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp³
embedding_lookupResourceGatherembedding_lookup_27529inputs*
Tindices0	*)
_class
loc:@embedding_lookup/27529*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/27529*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_27529*
_output_shapes
:	â2*
dtype0²
7recommender_net/embedding/embeddings/Regularizer/L2LossL2LossNrecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: {
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½76ß
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0@recommender_net/embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
NoOpNoOp^embedding_lookupG^recommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Frecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_10
serving_default_input_1:0	ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¾t
©
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
user_embedding
		user_bias

movie_embedding

movie_bias
	optimizer

signatures"
_tf_keras_model
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Ê
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
¾
trace_0
trace_12
/__inference_recommender_net_layer_call_fn_27657
/__inference_recommender_net_layer_call_fn_27819¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1
ô
trace_0
trace_12½
J__inference_recommender_net_layer_call_and_return_conditional_losses_27906
J__inference_recommender_net_layer_call_and_return_conditional_losses_27781¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1
ËBÈ
 __inference__wrapped_model_27515input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
µ
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
µ
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
µ
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer

5
_variables
6_iterations
7_learning_rate
8_index_dict
9
_momentums
:_velocities
;_update_step_xla"
experimentalOptimizer
,
<serving_default"
signature_map
7:5	â22$recommender_net/embedding/embeddings
9:7	â2&recommender_net/embedding_1/embeddings
9:7	üK22&recommender_net/embedding_2/embeddings
9:7	üK2&recommender_net/embedding_3/embeddings
Ì
=trace_02¯
__inference_loss_fn_0_27923
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ z=trace_0
Ì
>trace_02¯
__inference_loss_fn_1_27932
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ z>trace_0
 "
trackable_list_wrapper
<
0
	1

2
3"
trackable_list_wrapper
'
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
äBá
/__inference_recommender_net_layer_call_fn_27657input_1"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ãBà
/__inference_recommender_net_layer_call_fn_27819inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
J__inference_recommender_net_layer_call_and_return_conditional_losses_27906inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÿBü
J__inference_recommender_net_layer_call_and_return_conditional_losses_27781input_1"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
í
Etrace_02Ð
)__inference_embedding_layer_call_fn_27939¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zEtrace_0

Ftrace_02ë
D__inference_embedding_layer_call_and_return_conditional_losses_27952¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zFtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
ï
Ltrace_02Ò
+__inference_embedding_1_layer_call_fn_27959¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zLtrace_0

Mtrace_02í
F__inference_embedding_1_layer_call_and_return_conditional_losses_27968¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zMtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
ï
Strace_02Ò
+__inference_embedding_2_layer_call_fn_27975¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zStrace_0

Ttrace_02í
F__inference_embedding_2_layer_call_and_return_conditional_losses_27988¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zTtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
ï
Ztrace_02Ò
+__inference_embedding_3_layer_call_fn_27995¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zZtrace_0

[trace_02í
F__inference_embedding_3_layer_call_and_return_conditional_losses_28004¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z[trace_0
_
60
\1
]2
^3
_4
`5
a6
b7
c8"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
<
\0
^1
`2
b3"
trackable_list_wrapper
<
]0
_1
a2
c3"
trackable_list_wrapper
¿2¼¹
®²ª
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
ÊBÇ
#__inference_signature_wrapper_27806input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
²B¯
__inference_loss_fn_0_27923"
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
²B¯
__inference_loss_fn_1_27932"
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
N
d	variables
e	keras_api
	ftotal
	gcount"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
ÝBÚ
)__inference_embedding_layer_call_fn_27939inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_embedding_layer_call_and_return_conditional_losses_27952inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ßBÜ
+__inference_embedding_1_layer_call_fn_27959inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
F__inference_embedding_1_layer_call_and_return_conditional_losses_27968inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
ßBÜ
+__inference_embedding_2_layer_call_fn_27975inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
F__inference_embedding_2_layer_call_and_return_conditional_losses_27988inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ßBÜ
+__inference_embedding_3_layer_call_fn_27995inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
F__inference_embedding_3_layer_call_and_return_conditional_losses_28004inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
<::	â22+Adam/m/recommender_net/embedding/embeddings
<::	â22+Adam/v/recommender_net/embedding/embeddings
>:<	â2-Adam/m/recommender_net/embedding_1/embeddings
>:<	â2-Adam/v/recommender_net/embedding_1/embeddings
>:<	üK22-Adam/m/recommender_net/embedding_2/embeddings
>:<	üK22-Adam/v/recommender_net/embedding_2/embeddings
>:<	üK2-Adam/m/recommender_net/embedding_3/embeddings
>:<	üK2-Adam/v/recommender_net/embedding_3/embeddings
.
f0
g1"
trackable_list_wrapper
-
d	variables"
_generic_user_object
:  (2total
:  (2count
 __inference__wrapped_model_27515m0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ¨
F__inference_embedding_1_layer_call_and_return_conditional_losses_27968^+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ
 
+__inference_embedding_1_layer_call_fn_27959S+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "!
unknownÿÿÿÿÿÿÿÿÿ¨
F__inference_embedding_2_layer_call_and_return_conditional_losses_27988^+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ2
 
+__inference_embedding_2_layer_call_fn_27975S+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "!
unknownÿÿÿÿÿÿÿÿÿ2¨
F__inference_embedding_3_layer_call_and_return_conditional_losses_28004^+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ
 
+__inference_embedding_3_layer_call_fn_27995S+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "!
unknownÿÿÿÿÿÿÿÿÿ¦
D__inference_embedding_layer_call_and_return_conditional_losses_27952^+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ2
 
)__inference_embedding_layer_call_fn_27939S+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "!
unknownÿÿÿÿÿÿÿÿÿ2C
__inference_loss_fn_0_27923$¢

¢ 
ª "
unknown C
__inference_loss_fn_1_27932$¢

¢ 
ª "
unknown ´
J__inference_recommender_net_layer_call_and_return_conditional_losses_27781f0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ
 ³
J__inference_recommender_net_layer_call_and_return_conditional_losses_27906e/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ
 
/__inference_recommender_net_layer_call_fn_27657[0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "!
unknownÿÿÿÿÿÿÿÿÿ
/__inference_recommender_net_layer_call_fn_27819Z/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "!
unknownÿÿÿÿÿÿÿÿÿ
#__inference_signature_wrapper_27806x;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ	"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ