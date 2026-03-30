.class Llrz;
.super Llrx;
.source "PG"


# instance fields
.field final synthetic b:Llsa;


# direct methods
.method public constructor <init>(Llsa;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Llrx;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Llrz;->b:Llsa;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object p0, p0, Llrz;->b:Llsa;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_3
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Llsa;->b:Z

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    const/16 v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iget-object v0, v0, Llsa;->a:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Llrz;->b:Llsa;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public d()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
