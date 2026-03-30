.class public final Lmsg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lmse;

.field private final b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private final d:Llyv;


# direct methods
.method public constructor <init>(Lmse;Llyv;Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmsg;->a:Lmse;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lmsg;->c:Landroid/view/View;

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lmsg;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lmsg;->d:Llyv;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    const/16 v3, 0x18

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    const v1, 0x7f1405a0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lmsg;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    const v2, 0x7f0e0121

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v1, p0, Lmsg;->c:Landroid/view/View;

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lmsg;->a:Lmse;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    invoke-virtual {v0, v3, v1, v2}, Lmse;->m(IILandroid/view/View;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v0, Llyr;->aQ:Llze;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lmsg;->c:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lmsg;->d:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    new-instance v1, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lmsg;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lmsg;->c:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v0, v1}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
