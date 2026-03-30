.class public final synthetic Leqr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldqq;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Leqr;->a:Ljava/lang/Object;

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

    nop

    :goto_1
    iput p3, p0, Leqr;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

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
    iput-object p2, p0, Leqr;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ldqo;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v2}, Ldqo;->c(Ljava/lang/Object;)Z

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Leqr;->c:I

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2
    new-instance v1, Lkd;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-direct/range {v4 .. v9}, Lmcf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[I)V

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget-object p0, p0, Leqr;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    new-instance v7, Lpva;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lstd;->a:Lstd;

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

    nop

    :goto_9
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v4, Landroid/content/IntentFilter;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v3, 0x14

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/32 :goto_43

    nop

    nop

    :goto_e
    new-instance p0, Lmcf;

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_f
    invoke-direct {v4, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Leqr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_12
    move-object v4, p0

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

    :goto_13
    new-instance v5, Lkd;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_2

    nop

    nop

    :goto_15
    invoke-static {v0, v2, v3, v4, v3}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    move-result-object p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v4, p0, p1, v2, v1}, Leqc;-><init>(Lubo;Ldqo;Ltzy;I)V

    goto/32 :goto_15

    nop

    nop

    :goto_17
    sget-object v4, Lugy;->c:Ltzz;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v6, p0, Leqr;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0, v4}, Luad;->get(Luac;)Luab;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_3b

    nop

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_21
    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, p0, v0}, Ldqo;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_23
    goto/32 :goto_42

    nop

    nop

    :goto_24
    if-ne v0, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v9, 0x0

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

    :goto_27
    invoke-direct {v5, v4, v6, v2}, Lkd;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_39

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2a
    const-string v8, "android.intent.action.USER_UNLOCKED"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v3, 0x2

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v5, v4}, Ldqo;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_2e
    iget-object v0, p0, Leqr;->a:Ljava/lang/Object;

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

    nop

    :goto_2f
    invoke-direct {v1, v0, v3, v2}, Lkd;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_32

    nop

    nop

    :goto_30
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_31
    if-nez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_3
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v2, Lepx;->a:Lepx;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_33
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_34
    invoke-virtual {p1, v1, v2}, Ldqo;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/16 v6, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_4

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v4, Lepx;->a:Lepx;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-object p0

    nop

    nop

    :goto_3b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v2, Las;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3d
    new-instance v4, Leqc;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3e
    check-cast v4, Lugy;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_42
    const-string p0, "DirectBootUtils.runWhenUnlocked"

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v0}, Lpvb;->d(Landroid/content/Context;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v0}, Lufv;->i(Luad;)Lufs;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, p0, Leqr;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_46
    iget-object p0, p0, Leqr;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_47
    invoke-direct {v7, v5, v0, p0, p1}, Lpva;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Ljava/lang/Runnable;Ldqo;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_48
    move-object v0, v6

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_49
    const/16 v8, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v2, v0, p1, v1, v3}, Las;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ldqo;Luaz;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v5, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

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

    nop

    :goto_4c
    return-object p0

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_2e

    nop

    nop
.end method
