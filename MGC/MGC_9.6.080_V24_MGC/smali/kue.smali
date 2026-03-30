.class public final Lkue;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkub;


# instance fields
.field final synthetic a:Lsuu;

.field final synthetic b:Lkug;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lkug;Lsuu;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_2
    const/4 p2, 0x0

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

    :goto_3
    iput-object p2, p0, Lkue;->a:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lkue;->b:Lkug;

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
    iput-object p1, p0, Lkue;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_6

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

    nop

    nop

    :goto_7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 7

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v2, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v2, "close() on ImageCaptureLock called when closed="

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

    :goto_3
    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    aput-object v0, v3, v5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v1, v0}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aput-object v2, v3, v5

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    :goto_d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1

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

    nop

    nop

    :goto_f
    iget-object v1, v1, Lkug;->c:Ljava/lang/Object;

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

    :goto_10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_13
    if-gtz v2, :cond_1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v5, 0x3c0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v0, Lkug;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lkue;->b:Lkug;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lkue;->a:Lsuu;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    invoke-static {v5, p0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_34

    nop

    nop

    :goto_1d
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v5, 0x3bf

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

    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    check-cast v0, Loyj;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_21
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v5, 0x3be

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_25
    iget-object v2, v0, Lkug;->g:Ljava/lang/Object;

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

    :goto_26
    goto/32 :goto_35

    nop

    nop

    :goto_27
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_28
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_29
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lkue;->b:Lkug;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    :goto_2d
    goto/32 :goto_2a

    nop

    nop

    :goto_2e
    iget-object v1, p0, Lkue;->b:Lkug;

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

    :goto_2f
    goto :goto_23

    nop

    :goto_30
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lkue;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lkue;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_33
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    :goto_35
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, v0, Lkug;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    :goto_39
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3a
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
