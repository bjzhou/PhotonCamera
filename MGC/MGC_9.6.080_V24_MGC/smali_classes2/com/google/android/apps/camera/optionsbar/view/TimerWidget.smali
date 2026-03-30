.class public Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "PG"


# instance fields
.field public a:Lkzx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final a()Landroid/widget/LinearLayout;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    check-cast p0, Landroid/widget/LinearLayout;

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

    :goto_2
    const v0, 0x7f0b04a7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/android/apps/camera/contentprovider/Hg/tkLn;->VpDKRKUy:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onFinishInflate()V

    goto/32 :goto_4

    nop

    nop

    :goto_d
    const v0, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x7f0e015f

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    const-string v1, "layout_inflater"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Landroid/view/LayoutInflater;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method
