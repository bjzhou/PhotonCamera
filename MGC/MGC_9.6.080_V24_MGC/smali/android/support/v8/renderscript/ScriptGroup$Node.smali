.class Landroid/support/v8/renderscript/ScriptGroup$Node;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field dagNumber:I

.field mInputs:Ljava/util/ArrayList;

.field mKernels:Ljava/util/ArrayList;

.field mNext:Landroid/support/v8/renderscript/ScriptGroup$Node;

.field mOrder:I

.field mOutputs:Ljava/util/ArrayList;

.field mScript:Landroid/support/v8/renderscript/Script;

.field mSeen:Z


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/Script;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mScript:Landroid/support/v8/renderscript/Script;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method
