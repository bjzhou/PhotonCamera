.class public final Lsfp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    return-void

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
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

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

    :goto_8
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lsfp;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop
.end method

.method public static a(Lscn;)V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lsfv;->e()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

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

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    :goto_4
    const-string v0, "Logger backend configuration may only occur once."

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-static {v0, p0}, La;->aU(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

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

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "Logger backends can only be configured once."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_c
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    sget-object v0, Lsfv;->d:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    const v0, 0x3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lsfp;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    nop

    :goto_17
    iget-object p0, p0, Lsfw;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    sget-object v0, Lsgl;->a:Lsgj;

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

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1a
    sget-object p0, Lsfz;->c:Lsfx;

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    :goto_1c
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_3

    nop

    goto/32 :goto_15

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    :goto_1e
    sget-object p0, Lsfw;->a:Lsfw;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x6

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

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
