.class public final Ljcg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljpv;
.implements Ljpt;
.implements Ljps;
.implements Ljpu;
.implements Ljpn;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public b:Ljava/lang/Runnable;

.field private final c:Landroid/os/Handler;

.field private final d:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;J)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-wide p3, p0, Ljcg;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljcg;->c:Landroid/os/Handler;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Ljcg;->a:Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    iput-object v0, p0, Ljcg;->b:Ljava/lang/Runnable;

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
    return-void

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
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

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

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

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_6
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Ljcg;->c:Landroid/os/Handler;

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

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x20

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

    :goto_c
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x16

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljcg;->b:Ljava/lang/Runnable;

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

    :goto_f
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/32 :goto_c

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final cY()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljcg;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_1

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

.method public final de()V
    .locals 0

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

    :goto_1
    invoke-direct {p0}, Ljcg;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final dj()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljcg;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dv()V
    .locals 6

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljcg;->c:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ljcg;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_c

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    :goto_e
    const-wide/16 v4, 0x0

    nop

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

    :goto_f
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    const v1, 0xb

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Ljcg;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0, v1}, Ljcl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    :goto_15
    new-instance v0, Ljcl;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x1

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

    :goto_17
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Lqrg;->B(Z)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_1d
    iget-wide v2, p0, Ljcg;->d:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    cmp-long v0, v2, v4

    nop

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
.end method
