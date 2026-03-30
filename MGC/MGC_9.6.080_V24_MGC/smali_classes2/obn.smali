.class public final Lobn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:J

.field public e:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private final f:Landroid/animation/TimeAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lnvj;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lkxy;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_21

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, v1}, Lobm;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Lobm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_5

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_e
    const v1, 0x5

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    invoke-direct {v0, p0, v1}, Lnvj;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_22

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, p0}, Lobl;-><init>(Lobn;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lobn;->f:Landroid/animation/TimeAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_17
    new-instance v0, Lkxy;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p1, p0, v0}, Lkxy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lobm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Landroid/animation/TimeAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0, v1}, Lkxy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p1, p0, v1}, Lobm;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance p1, Lnvj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v1, Lobl;

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

    nop

    :goto_24
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p1, p0, v0}, Lnvj;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iget-object p0, p0, Lobn;->f:Landroid/animation/TimeAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->cancel()V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lobn;->c:Z

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lobn;->b:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lobn;->f:Landroid/animation/TimeAnimator;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

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
    goto/32 :goto_4

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lobn;->b:Z

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->cancel()V

    goto/32 :goto_13

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lobn;->a:Z

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

    :goto_8
    iget-boolean v0, p0, Lobn;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_a
    goto :goto_14

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    :goto_10
    iget-object p0, p0, Lobn;->f:Landroid/animation/TimeAnimator;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    :goto_12
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lobn;->f:Landroid/animation/TimeAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    const v0, 0xf

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

    :goto_1a
    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->start()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    iput-wide v0, p0, Lobn;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method
