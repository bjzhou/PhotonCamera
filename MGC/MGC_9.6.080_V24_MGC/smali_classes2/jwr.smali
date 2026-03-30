.class public Ljwr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqem;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lhoh;

.field private final d:Lqem;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
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

    nop

    :goto_1
    const-string v0, "jwr"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_3
    sput-object v0, Ljwr;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Lhoh;Lqem;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ljwr;->e:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_1
    const/16 p3, 0xe

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

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

    :goto_3
    iput-object p1, p0, Ljwr;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_8
    invoke-interface {p3}, Lqem;->b()Lsui;

    move-result-object p0

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

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_b
    new-instance p2, Ljky;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    invoke-interface {p0, p2, p1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p1, Lstd;->a:Lstd;

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

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

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

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p2, p0, Ljwr;->c:Lhoh;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x20

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p2, p0, p1, p3, v0}, Ljky;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    iput-object p3, p0, Ljwr;->d:Lqem;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method


# virtual methods
.method public final a()Lqep;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    new-instance v1, Ljwq;

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

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Ljwr;->d:Lqem;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, p0, v2, v0}, Ljwq;-><init>(Ljwr;Lqep;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ljwr;->e:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-interface {v2}, Lqem;->a()Lqep;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    return-object v1

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljwr;->d:Lqem;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lqem;->b()Lsui;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0xad0

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

    :goto_3
    check-cast v0, Lscz;

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

    :goto_4
    invoke-interface {p0}, Lqem;->c()V

    goto/32 :goto_c

    nop

    nop

    :goto_5
    sget-object v0, Ljwr;->a:Lsdb;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, v1, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ljwr;->d:Lqem;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    sget-object v1, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->tQcjn:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    const v0, 0x2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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
    const v1, 0xa

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Ljwr;->b:Ljava/lang/String;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final d()V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljwr;->d:Lqem;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v1, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_8
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    sget-object v0, Ljwr;->a:Lsdb;

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

    :goto_a
    iget-object v2, p0, Ljwr;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    const/16 v1, 0xad4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "%s: starting."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    invoke-interface {p0}, Lqem;->d()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

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

    :goto_12
    const v0, 0x9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method
