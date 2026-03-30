.class public final Luie;
.super Luif;
.source "PG"

# interfaces
.implements Lufz;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Luie;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method private final 51550bab6b6440a4fd45f825c221b363m(Luad;Ljava/lang/Runnable;)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    const-string v2, "\' was closed"

    nop

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

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Lufp;->a(Luad;Ljava/lang/Runnable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Luge;->b:Lufp;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0}, Lucu;->q(Luad;Ljava/util/concurrent/CancellationException;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/concurrent/CancellationException;

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

    nop

    nop

    :goto_8
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v1, v2}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_c
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "The task was rejected, the handler underlying the dispatcher \'"

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_1

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

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Luie;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Luie;->b:Luie;

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

    :goto_2
    iput-object p2, p0, Luie;->c:Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Luie;->a:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    move-object p3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p3, p1, p2, v0}, Luie;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    new-instance p3, Luie;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Luif;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iput-boolean p3, p0, Luie;->d:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Luad;Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_2

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

    nop

    :goto_1
    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

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

    :goto_2
    iget-object v0, p0, Luie;->a:Landroid/os/Handler;

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

    :goto_3
    invoke-direct {p0, p1, p2}, Luie;->51550bab6b6440a4fd45f825c221b363m(Luad;Ljava/lang/Runnable;)V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop
.end method

.method public final c(JLuez;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lqtz;

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
    const/16 v1, 0x8

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, v0}, Luie;->51550bab6b6440a4fd45f825c221b363m(Luad;Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    new-instance p1, Leso;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    invoke-static {p1, p2, v1, v2}, Lucd;->l(JJ)J

    move-result-wide p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p3, p0, v1}, Lqtz;-><init>(Luez;Luie;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    check-cast p3, Lufa;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1, p0, v0, p2, v1}, Leso;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-interface {p3, p1}, Luez;->d(Lubk;)V

    goto/32 :goto_11

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

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p3, Lufa;->b:Luad;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    :goto_13
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Luie;->a:Landroid/os/Handler;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop
.end method

.method public final cC(Luad;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

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

    :goto_1
    iget-boolean p1, p0, Luie;->d:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget-object p0, p0, Luie;->a:Landroid/os/Handler;

    nop

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

    :goto_4
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-static {p1, p0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    if-eq p1, p0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p1, p1, Luie;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_4
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    instance-of v0, p1, Luie;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    iget-boolean p0, p0, Luie;->d:Z

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

    :goto_d
    iget-object v1, p0, Luie;->a:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    :goto_14
    check-cast p1, Luie;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p1, Luie;->a:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final h(JLjava/lang/Runnable;Luad;)Lugg;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p4, p3}, Luie;->51550bab6b6440a4fd45f825c221b363m(Luad;Ljava/lang/Runnable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    new-instance p1, Luid;

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

    :goto_3
    sget-object p0, Luhm;->a:Luhm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    return-object p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Luie;->a:Landroid/os/Handler;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, p0, p3}, Luid;-><init>(Luie;Ljava/lang/Runnable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    xor-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    iget-boolean v0, p0, Luie;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    goto :goto_10

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    :goto_8
    const v1, 0x11

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    iget-object p0, p0, Luie;->a:Landroid/os/Handler;

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

    :goto_f
    const/16 v0, 0x4cf

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    if-ne v1, v0, :cond_1

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
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v0, 0x4d5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    const v0, 0x10

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final synthetic i()Luhj;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Luie;->b:Luie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Luie;->a:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, ".immediate"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    iget-boolean p0, p0, Luie;->d:Z

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

    :goto_7
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Luhj;->e()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Luie;->c:Ljava/lang/String;

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

    :goto_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
