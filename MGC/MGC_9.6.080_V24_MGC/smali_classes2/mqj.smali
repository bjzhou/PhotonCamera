.class public final Lmqj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lixf;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field private final e:Lj$/time/Duration;

.field private final f:Landroid/view/View;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:Z

.field private k:Ljava/util/Date;

.field private l:Lnbh;

.field private m:Lcom/google/android/apps/camera/toast/ToastView;

.field private final n:I


# direct methods
.method public constructor <init>(Lj$/time/Duration;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Runnable;IZ)V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmqj;->g:Ljava/lang/String;

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p5, p0, Lmqj;->n:I

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

    nop

    :goto_4
    iput-object p1, p0, Lmqj;->h:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean p6, p0, Lmqj;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lmqj;->d:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Lmqj;->a:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Ljic;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    iput p1, p0, Lmqj;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    sget-object v0, Lnbh;->a:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    iput-object p3, p0, Lmqj;->f:Landroid/view/View;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    const v0, 0x1c

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    iput-object p4, p0, Lmqj;->b:Ljava/lang/Runnable;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lmqj;->l:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p1, p0, Lmqj;->e:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method private static a(Lcom/google/android/apps/camera/toast/ToastView;Landroid/view/View;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

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

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/ToastView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, -0x2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x7f0b04b1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    const v1, 0x5

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

    :goto_11
    const v0, 0x11

    nop

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

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

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

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    check-cast p0, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()I
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-long/2addr v0, v2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    long-to-int p0, v0

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

    :goto_4
    sget-object p0, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

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

    :goto_5
    const v0, 0x1a

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_9
    sget-object p0, Lcom/google/android/apps/camera/toast/ToastView;->e:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-long/2addr v0, v2

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lmqj;->e:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lixg;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lmqj;->j:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lixg;->d:Lixg;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto :goto_2

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lixg;->e:Lixg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/Object;

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
.end method

.method public final synthetic e()Ljava/lang/Runnable;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    iget-object v1, p0, Lmqj;->e:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v1, p0, Lmqj;->j:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return v2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v3, p1, Lmqj;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    if-eq p0, p1, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p1, Lmqj;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eq p0, p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget p0, p0, Lmqj;->n:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_19
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x18

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Lmqj;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1f
    const v1, 0x1a

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_21
    iget v1, p1, Lmqj;->i:I

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

    nop

    nop

    :goto_22
    if-eq v1, v3, :cond_6

    nop

    goto/32 :goto_f

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_24
    iget-object v3, p1, Lmqj;->a:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_13

    nop

    nop

    :goto_26
    instance-of v1, p1, Lmqj;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_27
    iget-object v3, p1, Lmqj;->e:Lj$/time/Duration;

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

    :goto_28
    iget-object v3, p1, Lmqj;->h:Ljava/lang/String;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget p1, p1, Lmqj;->n:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lmqj;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop
.end method

.method public final f()Ljava/util/Date;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmqj;->k:Ljava/util/Date;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final g(Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_2
    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "Unsupported Operation delayedHide(Runnable) in: "

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop
.end method

.method public final h()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmqj;->m:Lcom/google/android/apps/camera/toast/ToastView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->e()V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_2
    goto/32 :goto_15

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    iget-object v1, p0, Lmqj;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean p0, p0, Lmqj;->j:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    const v1, 0x7

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    iget v2, p0, Lmqj;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lmqj;->e:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

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

    :goto_14
    goto/32 :goto_4

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public final synthetic i()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final j(Ljava/util/Date;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmqj;->k:Ljava/util/Date;

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
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final l()V
    .locals 4

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lmqj;->m:Lcom/google/android/apps/camera/toast/ToastView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lmqj;->a:Landroid/view/ViewGroup;

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

    :goto_4
    goto/32 :goto_f

    nop

    :goto_5
    const v1, 0x7f0b04b4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, p0}, Lcom/google/android/apps/camera/toast/ToastView;->a(Lmqj;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/toast/ToastView;->c(Lnbh;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lmqj;->f:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v1, p0, Lmqj;->m:Lcom/google/android/apps/camera/toast/ToastView;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_b
    check-cast v1, Lcom/google/android/apps/camera/toast/EducationToastView;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lmqj;->l:Lnbh;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_14
    iget-object v1, p0, Lmqj;->a:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lcom/google/android/apps/camera/toast/ToastView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lmqj;->l:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    sget v2, Lcom/google/android/apps/camera/toast/EducationToastView;->c:I

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

    :goto_1a
    const v3, 0x7f0e0076

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    iget-boolean v0, p0, Lmqj;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0, v1}, Lmqj;->a(Lcom/google/android/apps/camera/toast/ToastView;Landroid/view/View;)V

    :goto_20
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->g()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_27
    const v2, 0x7f0b018f

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_28
    iget-object p0, p0, Lmqj;->m:Lcom/google/android/apps/camera/toast/ToastView;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lmqj;->f:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->g()V

    :goto_2b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1, v0}, Lmqj;->a(Lcom/google/android/apps/camera/toast/ToastView;Landroid/view/View;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/toast/ToastView;->a(Lmqj;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_2f
    iget-object v0, p0, Lmqj;->m:Lcom/google/android/apps/camera/toast/ToastView;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/toast/ToastView;->c(Lnbh;)V

    goto/32 :goto_28

    nop

    nop

    :goto_31
    const v2, 0x7f0e0161

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_32
    iget-object v0, p0, Lmqj;->m:Lcom/google/android/apps/camera/toast/ToastView;

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

    nop

    nop

    :goto_33
    iget-object p0, p0, Lmqj;->m:Lcom/google/android/apps/camera/toast/ToastView;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic m()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic n()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final o()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final synthetic p()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic q()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final r()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Lmqj;->n:I

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

    :goto_1
    return p0

    nop
.end method

.method public final s(IZZZLnbh;Lnbe;Lj$/util/Optional;Z)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p5}, Lcom/google/android/apps/camera/toast/ToastView;->c(Lnbh;)V

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lmqj;->m:Lcom/google/android/apps/camera/toast/ToastView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lmqj;->l:Lnbh;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method
