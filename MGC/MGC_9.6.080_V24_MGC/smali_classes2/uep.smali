.class public final Luep;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field public volatile b:J

.field public final c:Lucu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Luep;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_3
    const-string v1, "b"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    const-class v0, Luep;

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

    :goto_5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const v1, 0x19

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop
.end method

.method public constructor <init>(JLucu;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-wide p1, p0, Luep;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p3, p0, Luep;->c:Lucu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(J)J
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Luep;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final b()J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v0

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    const v1, 0x19

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_8

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
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Luep;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final c()J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
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

    :goto_2
    sget-object v0, Luep;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

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

    :goto_8
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    const v0, 0x10

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
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(JJ)Z
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    move-wide v4, p3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p2, Luer;->a:Luer;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1a

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Luep;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    :goto_a
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    if-ne p0, p2, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-wide v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

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

    :goto_e
    move-object v1, p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Luep;->c:Lucu;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_8

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
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

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

    :goto_4
    iget-wide v0, p0, Luep;->b:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
