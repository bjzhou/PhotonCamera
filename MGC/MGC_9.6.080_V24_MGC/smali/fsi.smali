.class public final Lfsi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lflv;


# instance fields
.field public final b:Lwu;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-direct/range {v7 .. v13}, Lfle;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lfrn;Lduz;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v12, v1}, Lfro;-><init>(I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    sput-object v6, Lfsi;->a:Lflv;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    new-instance v6, Lflv;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lfle;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct/range {v0 .. v5}, Lflv;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lduz;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    const-class v3, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_e
    move-object v0, v6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    const/4 v5, 0x0

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

    :goto_12
    new-instance v12, Lfro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    const-class v2, Ljava/lang/Object;

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

    :goto_14
    move-object v7, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    const-class v10, Ljava/lang/Object;

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

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    const-class v9, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    const-class v8, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    const-class v1, Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lfsi;->c:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lwu;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Lwu;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lfsi;->b:Lwu;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
