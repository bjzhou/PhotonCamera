.class public final Lhrd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhra;


# static fields
.field static final a:Lj$/time/Duration;

.field static final b:Lj$/time/Duration;

.field public static final c:Lj$/time/Duration;


# instance fields
.field public final d:Lpcu;

.field public final e:Lj$/time/Clock;

.field public f:Lcom/google/android/apps/camera/debug/shottracker/db/ShotDatabase;

.field public g:Lhrf;

.field public h:Lhro;

.field private final i:Lsul;

.field private final j:Lsuk;

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

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

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    sput-object v0, Lhrd;->a:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v0, 0x6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x16

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Lj$/time/Duration;->ofHours(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMinutes(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    const v1, 0x7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lhrd;->b:Lj$/time/Duration;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Lj$/time/Duration;->ofHours(J)Lj$/time/Duration;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/16 v0, 0x24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    const-wide/16 v0, 0x2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sput-object v0, Lhrd;->c:Lj$/time/Duration;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop
.end method

.method public constructor <init>(Lsul;Ljava/util/concurrent/ExecutorService;Lj$/time/Clock;Lpcu;Ltxm;)V
    .locals 6

    goto/32 :goto_13

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_3
    iput-object p1, p0, Lhrd;->j:Lsuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p2, Lhfj;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    iput-wide v0, p0, Lhrd;->k:J

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lhrd;->a:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    move-object v0, p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    move-object v2, p4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v0 .. v5}, Lhfj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[S)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v5, 0x0

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

    :goto_b
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    iput-object v0, p0, Lhrd;->d:Lpcu;

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

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    :goto_f
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    const/4 v4, 0x4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    invoke-interface {p1, p2}, Lsuk;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    iput-object p1, p0, Lhrd;->i:Lsul;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_15
    invoke-interface {p4, v0}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    invoke-static {p2}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object p1

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

    :goto_17
    const-string v0, "ShotTracker"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    iput-object p3, p0, Lhrd;->e:Lj$/time/Clock;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    const v1, 0xa

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v3, p5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public static j(JLj$/time/Instant;Ljava/lang/String;)Lhrr;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, v0, Lhrr;->d:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lhrr;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lhrr;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide p0

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

    :goto_5
    const/4 p0, 0x0

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

    :goto_6
    iput p0, v0, Lhrr;->a:I

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

    :goto_7
    iput-wide p0, v0, Lhrr;->c:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-wide p0, v0, Lhrr;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public static k(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, v1, Lhrr;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    :goto_8
    goto/16 :goto_1c

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    :goto_d
    iget-wide v2, v1, Lhrr;->b:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v2, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    invoke-static {v2, v3}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v2

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_12
    const/16 v1, 0xa

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

    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    const-string v2, ": "

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    check-cast v1, Lhrr;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1f
    const v0, 0x3

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

    :goto_20
    iget-wide v2, v1, Lhrr;->c:J

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(JLj$/time/Instant;)Lsui;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lhrc;-><init>(Lhrd;JLj$/time/Instant;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhrd;->j:Lsuk;

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

    :goto_2
    invoke-interface {p0, v0}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lhrc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0xc

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Lsul;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object p0

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    const v0, 0x12

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x5

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

    :goto_9
    new-instance v0, Lesh;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, v1}, Lesh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lhrd;->i:Lsul;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final c(JLj$/time/Instant;)V
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    move-wide v2, p1

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

    :goto_2
    invoke-interface {p0, v6}, Lsuk;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhrd;->j:Lsuk;

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct/range {v0 .. v5}, Lhdi;-><init>(Lhrd;JLj$/time/Instant;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v6, Lhdi;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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
    goto/32 :goto_12

    nop

    :goto_c
    const/4 v5, 0x4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_e
    move-object v0, v6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1d

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v4, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final d(JLj$/time/Instant;)V
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    move-object v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    new-instance v6, Lhdi;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, v6}, Lsuk;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_6
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v4, p3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    move-wide v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lhrd;->j:Lsuk;

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
    const v1, 0xa

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct/range {v0 .. v5}, Lhdi;-><init>(Lhrd;JLj$/time/Instant;I)V

    goto/32 :goto_b

    nop

    nop

    :goto_e
    const/4 v5, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final e(JLj$/time/Instant;Ljava/lang/String;)V
    .locals 8

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v4, p3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v5, p4

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    move-object v1, p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v7, Lkhh;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    goto/32 :goto_d

    nop

    :goto_6
    invoke-direct/range {v0 .. v6}, Lkhh;-><init>(Lhrd;JLj$/time/Instant;Ljava/lang/String;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, v7}, Lsuk;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    move-wide v2, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x14

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

    :goto_12
    move-object v0, v7

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lhrd;->j:Lsuk;

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final f(JLj$/time/Instant;)V
    .locals 7

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, v6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    const v1, 0x17

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

    :goto_4
    move-object v4, p3

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

    :goto_5
    invoke-interface {p0, v6}, Lsuk;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lhrd;->j:Lsuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct/range {v0 .. v5}, Lhdi;-><init>(Lhrd;JLj$/time/Instant;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v5, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    move-wide v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    new-instance v6, Lhdi;

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

    :goto_e
    const v0, 0x15

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

    :goto_f
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final g(JLj$/time/Instant;)V
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v6, Lhdi;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

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

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xb

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

    :goto_5
    const v0, 0x1d

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v0 .. v5}, Lhdi;-><init>(Lhrd;JLj$/time/Instant;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    invoke-interface {p0, v6}, Lsuk;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    iget-object p0, p0, Lhrd;->j:Lsuk;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    const/4 v5, 0x5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    move-object v4, p3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    move-wide v2, p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final h(JLj$/time/Instant;)V
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    move-object v1, p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, v6}, Lsuk;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_b

    nop

    nop

    :goto_4
    move-object v4, p3

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

    :goto_5
    move-wide v2, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_7
    iget-object p0, p0, Lhrd;->j:Lsuk;

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

    :goto_8
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v6, Lhdi;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    move-object v0, v6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    invoke-direct/range {v0 .. v5}, Lhdi;-><init>(Lhrd;JLj$/time/Instant;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v5, 0x3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(Llxn;Lj$/time/Instant;Llxo;)V
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    move-object v3, p2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    iget-object p0, p0, Lhrd;->j:Lsuk;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    :goto_8
    move-object v0, v6

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v5, 0x6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v6, Leqn;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    invoke-direct/range {v0 .. v5}, Leqn;-><init>(Lhrd;Llxn;Lj$/time/Instant;Llxo;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, v6}, Lsuk;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    move-object v4, p3

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final l(JLj$/time/Instant;Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

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
    :try_start_0
    iget-object v0, p0, Lhrd;->g:Lhrf;

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1, p2, v1, v2}, Lhrf;->a(JJ)I

    move-result v0

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    if-ne v0, v1, :cond_0

    nop

    iget-object v0, p0, Lhrd;->h:Lhro;

    nop

    invoke-static {p1, p2, p3, p4}, Lhrd;->j(JLj$/time/Instant;Ljava/lang/String;)Lhrr;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lhro;->b(Lhrr;)V

    return-void

    nop

    :cond_0
    iget-object v1, p0, Lhrd;->d:Lpcu;

    nop

    nop

    nop

    const-string v2, "logImpl updated %d rows for id=%d with time=%s (expected 1)"

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    filled-new-array {v0, v3, p3}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    invoke-static {v2, v0}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-interface {v1, v0}, Lpcu;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_d

    nop

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

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1, v0}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lhrd;->d:Lpcu;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    filled-new-array {p1, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    const v0, 0x8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    const-string p2, "SQLite error in logImpl for id=%d time=%s msg=\'%s\'"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-static {p2, p1}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    return-void

    nop

    :catch_0
    move-exception v0

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

    :goto_e
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final m()V
    .locals 5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :goto_3
    iput-wide v0, p0, Lhrd;->k:J

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lhiv;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v4, v0, v1, v2, v3}, Lsul;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lsun;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    const/16 v1, 0x11

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

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

    nop

    :goto_c
    iget-wide v1, p0, Lhrd;->k:J

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    iget-object v4, p0, Lhrd;->i:Lsul;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xb

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lhrd;->b:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0, v1}, Lhiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x15

    nop

    goto/32 :goto_0

    nop

    nop
.end method
