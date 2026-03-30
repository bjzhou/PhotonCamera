.class public final synthetic Lhrc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lhrd;

.field public final synthetic b:J

.field public final synthetic c:Lj$/time/Instant;


# direct methods
.method public synthetic constructor <init>(Lhrd;JLj$/time/Instant;)V
    .locals 0

    goto/32 :goto_4

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

    :goto_1
    iput-wide p2, p0, Lhrc;->b:J

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

    :goto_2
    iput-object p1, p0, Lhrc;->a:Lhrd;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lhrc;->c:Lj$/time/Instant;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, p0}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lhrc;->a:Lhrd;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, p0, v3}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_f
    const-string v1, "SQLite error in persistedImpl for id=%d time=%s"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_8

    nop

    :catch_0
    move-exception v3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    iget-wide v1, p0, Lhrc;->b:J

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lhrc;->c:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v3, v0, Lhrd;->g:Lhrf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v1, v2}, Lhrf;->b(J)Lhrn;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v4

    nop

    nop

    iput-wide v4, v3, Lhrn;->d:J

    nop

    nop

    nop

    iput-wide v4, v3, Lhrn;->g:J

    nop

    nop

    nop

    nop

    iget-object v4, v0, Lhrd;->g:Lhrf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Lhrf;->c(Lhrn;)V

    iget-object v3, v0, Lhrd;->d:Lpcu;

    nop

    nop

    nop

    const-string v4, "Persisted shot: %d"

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpcu;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v3, v0, Lhrd;->d:Lpcu;

    nop

    nop

    nop

    const-string v4, "Attempted to persist shot: %d but couldn\'t find it"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    nop

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    invoke-static {v4, v5}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Lhrd;->d:Lpcu;

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
.end method
