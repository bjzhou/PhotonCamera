.class public final Lmgr;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Ldym;

.field final synthetic b:Lmgs;

.field private c:Z


# direct methods
.method public constructor <init>(Lmgs;Ldym;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lmgr;->a:Ldym;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmgr;->b:Lmgs;

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
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lmgr;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lmgr;->c:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, p0}, Ldyp;->h(Ldym;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Lmgs;->f(Z)V

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-virtual {v2, v1}, Ldyp;->k(F)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean p1, p0, Lmgr;->c:Z

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    const v2, 0x7f0707e8

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v2, p1, v3}, Ldys;-><init>(Ljava/lang/Object;Ldyr;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v3, Ldyp;->a:Ldyo;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Ldyt;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Ldyt;->e(F)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    int-to-float v2, v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, p0}, Ldyp;->h(Ldym;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v2}, Ldyt;->c(F)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1}, Ldyt;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_12
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_13
    const/high16 v2, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lmgr;->b:Lmgs;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    iput-object v1, v2, Ldys;->p:Ldyt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    invoke-virtual {v2}, Ldyp;->f()V

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v2, Ldys;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0, p1, v0}, Lmgp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_20
    iget-object p0, p0, Lmgr;->a:Ldym;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_21
    invoke-virtual {v1, v2}, Ldyt;->d(F)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_23
    const/high16 v2, 0x43480000    # 200.0f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, v2}, Lmgs;->a(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    new-instance p0, Lmgp;

    nop

    goto/32 :goto_1e

    nop

    nop
.end method
