.class Lnws;
.super Lnwr;
.source "PG"


# instance fields
.field final synthetic b:Lnwu;


# direct methods
.method public constructor <init>(Lnwu;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lnwr;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnws;->b:Lnwu;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->setVisibility(I)V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lnwu;->e:Landroid/widget/SeekBar;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setEnabled(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lnwu;->f:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lnws;->b:Lnwu;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lnws;->b:Lnwu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x8

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

    :goto_b
    iget-object v0, v0, Lnwu;->d:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_f
    const v0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    iget-object v0, p0, Lnws;->b:Lnwu;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public c()V
    .locals 0

    goto/32 :goto_0

    nop

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
.end method
