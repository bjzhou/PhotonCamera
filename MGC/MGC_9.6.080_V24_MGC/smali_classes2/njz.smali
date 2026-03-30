.class final Lnjz;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lnka;


# direct methods
.method public constructor <init>(Lnka;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

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

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnjz;->a:Lnka;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

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
    invoke-static {p0}, Lnka;->d(Lnka;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Lnka;->setVisibility(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lnjz;->a:Lnka;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lnjz;->a:Lnka;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v0, -0x1

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

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    iput-wide v0, p0, Lnka;->h:J

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_11
    iput v0, p1, Lnka;->o:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 v0, -0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lnjz;->a:Lnka;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lnjz;->a:Lnka;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    iput v0, p1, Lnka;->o:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    iput-wide v0, p0, Lnka;->h:J

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

    :goto_a
    goto/32 :goto_5

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_d
    invoke-static {p0}, Lnka;->d(Lnka;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0}, Lnka;->setVisibility(I)V

    goto/32 :goto_6

    nop

    nop

    :goto_12
    const v0, 0x18

    nop

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
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lnka;->d:I

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop

    :goto_2
    iput p1, p0, Lnka;->o:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget p1, p0, Lnka;->f:I

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

    :goto_4
    const/4 p1, 0x3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnjz;->a:Lnka;

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
