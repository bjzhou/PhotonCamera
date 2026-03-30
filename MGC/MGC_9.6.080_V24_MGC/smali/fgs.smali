.class public final Lfgs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfgr;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lfgr;


# direct methods
.method private constructor <init>(Lfgr;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    iput-object p1, p0, Lfgs;->b:Lfgr;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lfgs;->a:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v1, 0xd

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_b

    nop

    nop

    :goto_f
    new-instance v0, Landroid/os/Handler;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static f(Landroid/os/Handler;Lfgr;)Lfgs;
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

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lfgs;-><init>(Lfgr;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Lfgs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, p1, v1, v2}, Ldtv;-><init>(Ljava/lang/Object;II[B)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ldtv;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x6

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

    :goto_a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    const/4 v1, 0x3

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

    :goto_d
    const v0, 0x17

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lfgs;->a:Landroid/os/Handler;

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

    nop

    :goto_f
    goto/32 :goto_3

    nop
.end method

.method public final b(Lfgv;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfgs;->a:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_d

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

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_9

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0xb

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Less;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p0, p1, v1}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const v0, 0xe

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final c(ILjava/lang/String;)V
    .locals 7

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const v1, 0x1c

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    move-object v1, p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

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

    :goto_6
    const/4 v4, 0x5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v3, p2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
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

    :goto_a
    invoke-direct/range {v0 .. v5}, Lmw;-><init>(Ljava/lang/Object;ILjava/lang/Object;I[C)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    move v2, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v6, Lmw;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const/4 v5, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    move-object v0, v6

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

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    :goto_13
    iget-object p0, p0, Lfgs;->a:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(ILjava/lang/String;)V
    .locals 7

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    move v2, p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    const v1, 0x1b

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    new-instance v6, Lmw;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct/range {v0 .. v5}, Lmw;-><init>(Ljava/lang/Object;ILjava/lang/Object;I[C)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_c
    move-object v3, p2

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

    nop

    :goto_d
    move-object v1, p0

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

    :goto_e
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lfgs;->a:Landroid/os/Handler;

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

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    move-object v0, v6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method public final e(Lfgz;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
