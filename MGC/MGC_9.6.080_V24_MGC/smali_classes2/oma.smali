.class public final Loma;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Loma;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    new-instance p1, Loof;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

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

    :goto_4
    invoke-direct {p1, v0}, Loof;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Loma;->a:Landroid/os/Handler;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v2, 0x394

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
    const/4 v2, 0x0

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

    :goto_2
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Loma;->a:Landroid/os/Handler;

    nop

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

    :goto_5
    iput p2, p0, Loma;->b:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

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

    :goto_9
    aput-object p1, v0, v2

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

    nop

    :goto_a
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

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

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop
.end method

.method public constructor <init>(Landroid/os/Looper;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {p2, p1}, Loof;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    new-instance p2, Loof;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Loma;->a:Landroid/os/Handler;

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
    iput p2, p0, Loma;->b:I

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loma;->a:Landroid/os/Handler;

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
    iget-object p0, p0, Loma;->a:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

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
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Loma;->a:Landroid/os/Handler;

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

    :goto_8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

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

    nop

    :goto_b
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xf

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    iget v0, p0, Loma;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    iget-object p0, p0, Loma;->a:Landroid/os/Handler;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_1a
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1}, Ldvu;->s(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    const-string v0, " is shutting down"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    :goto_22
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method
