.class public final Lhja;
.super Lmec;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lhjb;

.field public final c:Z

.field public final d:Landroid/view/View$OnClickListener;

.field public final e:Landroid/view/View$OnClickListener;

.field public f:Lrss;

.field public final g:Lluq;

.field public final h:Lmjv;

.field private final i:Landroid/content/res/Resources;

.field private final k:Lhze;


# direct methods
.method public constructor <init>(Lhjb;Landroid/content/Context;Lluq;Lrss;Lmjv;Ljava/util/concurrent/ScheduledExecutorService;Lfdo;Lhoh;)V
    .locals 1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p7, 0xa

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {p1}, Lrrf;->x(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p6, p0, p7}, Lgzp;-><init>(Lhja;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lhma;->h:Lhmn;

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

    nop

    :goto_5
    iput-object p3, p0, Lhja;->g:Lluq;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lhja;->c:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p6, Lgzp;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p6, Lgzp;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p5, p0, Lhja;->h:Lmjv;

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

    :goto_a
    const/16 p7, 0xb

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    iget-object p1, p4, Lrsx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lhja;->k:Lhze;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    check-cast p1, Lhze;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    iput-object p2, p0, Lhja;->a:Landroid/content/Context;

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

    :goto_f
    iput-object p1, p0, Lhja;->i:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p6, p0, Lhja;->d:Landroid/view/View$OnClickListener;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p4, Lrsx;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "selfie_angle_advice_smarts_chip"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    sget-object p6, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p8, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    invoke-direct {p6, p0, p7}, Lgzp;-><init>(Lhja;I)V

    goto/32 :goto_18

    nop

    nop

    :goto_17
    iput-object p1, p0, Lhja;->b:Lhjb;

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

    :goto_18
    iput-object p6, p0, Lhja;->e:Landroid/view/View$OnClickListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p6, p0, Lhja;->f:Lrss;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, p6, p7, v0}, Lmec;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lfdo;Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a()Lmeb;
    .locals 5

    goto/32 :goto_13

    nop

    nop

    :goto_0
    invoke-virtual {v2, v3, v4}, Lmej;->f(J)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhja;->b:Lhjb;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, v3}, Lhiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4
    iput-object v0, v2, Lmej;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget-object v0, p0, Lhja;->i:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Lonz;->e()Lmeb;

    move-result-object p0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-direct {v0, p0, v3}, Lhiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    :goto_9
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x5

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

    :goto_c
    invoke-direct {v0, p0, v3}, Lhiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lmek;->a()Lmej;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    iput-object v3, v2, Lmej;->f:Ljava/lang/Runnable;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    const-wide/16 v3, 0x1770

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

    :goto_10
    iput-object v0, v2, Lmej;->c:Ljava/lang/Runnable;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lhiv;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    iput-object v0, v2, Lmej;->h:Ljava/lang/Runnable;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    const v0, 0x6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p0, v1, Lonz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2}, Lmej;->a()Lmek;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_19
    new-instance v0, Lhiv;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v3, 0x7f1405fb

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Lmeb;->a()Lonz;

    move-result-object v1

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

    :goto_1c
    const v1, 0x18

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    :goto_1e
    const v3, 0x7f080458

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, v2, Lmej;->g:Ljava/lang/Runnable;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v3, Lhiv;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lhja;->b:Lhjb;

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

    :goto_23
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_24
    invoke-direct {v3, v0, v4}, Lhiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    iput-object v0, v2, Lmej;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_27
    new-instance v0, Lhiv;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_29
    iget-object v0, p0, Lhja;->i:Landroid/content/res/Resources;

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

    :goto_2a
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_14

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final b(Lpro;)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljyz;->a(Lhxs;)Ljyz;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhja;->b:Lhjb;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Lhjb;->d(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lhja;->k:Lhze;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lhjb;->f()Z

    move-result p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lhze;->d()Lhxs;

    move-result-object p1

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

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    iget-object p1, p0, Lhja;->k:Lhze;

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

    :goto_9
    iget-object v0, p0, Lhja;->b:Lhjb;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p1, p1, Ljyz;->b:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Lhze;->g()Z

    move-result p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final dW()V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lhja;->b:Lhjb;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    iget-object v0, p0, Lhja;->f:Lrss;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Liof;->p()V

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lhja;->f:Lrss;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Liof;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-super {p0}, Lmec;->dW()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lhjb;->e()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Lhja;->c:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
