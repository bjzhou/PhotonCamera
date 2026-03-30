.class public Lhwv;
.super Landroid/view/SurfaceView;
.source "PG"


# instance fields
.field public final a:Lpdl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_4

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

    :goto_1
    new-instance p1, Lpdl;

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

    nop

    :goto_2
    invoke-direct {p1}, Lpdl;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhwv;->a:Lpdl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final layout(IIII)V
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lhwv;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    iget-object v1, p0, Lhwv;->a:Lpdl;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    move v3, p2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual/range {v1 .. v6}, Lpdl;->e(IIIILpcg;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v5, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->layout(IIII)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v2, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    move v4, p3

    nop

    goto/32 :goto_6

    nop

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Lpcg;->e(I)Lpcg;

    move-result-object v6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Luoj;->h(Landroid/content/Context;)I

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
