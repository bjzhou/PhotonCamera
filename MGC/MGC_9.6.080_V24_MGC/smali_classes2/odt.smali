.class final Lodt;
.super Lodz;
.source "PG"


# instance fields
.field final synthetic a:Lodw;


# direct methods
.method public constructor <init>(Lodw;Lodm;)V
    .locals 0

    goto/32 :goto_1

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
    iput-object p1, p0, Lodt;->a:Lodw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, p2}, Lodz;-><init>(Lodm;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 8

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    const v1, 0x14

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, v1}, Lodz;->d(J)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v3, "Failed to delete stale hits"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lodw;->d:Lodz;

    nop

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_b
    goto/32 :goto_7

    nop

    :goto_c
    const-wide/32 v0, 0x5265c00

    nop

    :try_start_0
    iget-object v2, p0, Lodw;->c:Lodq;

    nop

    nop

    nop

    nop

    invoke-static {}, Lodf;->a()V

    invoke-virtual {v2}, Lodj;->z()V

    iget-object v3, v2, Lodq;->d:Loeq;

    nop

    invoke-virtual {v3, v0, v1}, Loeq;->c(J)Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    iget-object v3, v2, Lodq;->d:Loeq;

    nop

    nop

    nop

    invoke-virtual {v3}, Loeq;->b()V

    const-string v3, "Deleting stale hits (if any)"

    nop

    invoke-virtual {v2, v3}, Lodi;->q(Ljava/lang/String;)V

    invoke-virtual {v2}, Lodq;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    nop

    const-wide v6, -0x9a7ec800L

    nop

    add-long/2addr v4, v6

    nop

    nop

    nop

    const-string v6, "hits2"

    nop

    nop

    nop

    const-string v7, "hit_time < ?"

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    nop

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-virtual {v3, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    nop

    nop

    const-string v4, "Deleted stale hits, count"

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4, v3}, Lodi;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lodw;->F()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x17

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

    :goto_e
    goto :goto_11

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    iget-object p0, p0, Lodt;->a:Lodw;

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

    :goto_10
    invoke-virtual {p0, v3, v2}, Lodi;->u(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
