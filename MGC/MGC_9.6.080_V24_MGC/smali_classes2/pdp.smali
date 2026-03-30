.class public final Lpdp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpdo;


# instance fields
.field public final a:Lpcu;

.field public final b:Ljava/util/Set;

.field public volatile c:I

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lpcu;Ljava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const-string v0, "AudioRestrictApi"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpdp;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lsut;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, v0}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, p2}, Lsut;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_2

    nop

    nop

    :goto_8
    iput v0, p0, Lpdp;->c:I

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

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lpdp;->a:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lpdp;->b:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const v0, 0x12

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

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    invoke-direct {v0, p0, p1, v1}, Lkwi;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lkwi;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lpdp;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public final b(Lpey;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpdp;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, p1, v1}, Loxl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Loxl;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x9

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

    :goto_a
    const v1, 0x7

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

    :goto_b
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v1, 0xf

    nop

    nop

    goto/32 :goto_7

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

    :goto_e
    rem-int v0, v0, v1

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

    nop
.end method

.method public final c(Lpey;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Loxl;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, p1, v1}, Loxl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x7

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    iget-object p0, p0, Lpdp;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0xe

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

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop
.end method
