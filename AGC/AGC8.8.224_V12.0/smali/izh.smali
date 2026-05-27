.class final Lizh;
.super Lizm;


# instance fields
.field final synthetic a:Lizj;


# direct methods
.method public constructor <init>(Lizj;Liyz;)V
    .locals 0

    iput-object p1, p0, Lizh;->a:Lizj;

    invoke-direct {p0, p2}, Lizm;-><init>(Liyz;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Lizh;->a:Lizj;

    const-wide/32 v1, 0x5265c00

    :try_start_0
    iget-object v3, v0, Lizj;->c:Lize;

    invoke-static {}, Liys;->a()V

    invoke-virtual {v3}, Liyw;->z()V

    iget-object v4, v3, Lize;->d:Ljad;

    invoke-virtual {v4, v1, v2}, Ljad;->c(J)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lize;->d:Ljad;

    invoke-virtual {v4}, Ljad;->b()V

    const-string v4, "Deleting stale hits (if any)"

    invoke-virtual {v3, v4}, Liyv;->q(Ljava/lang/String;)V

    invoke-virtual {v3}, Lize;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide v7, -0x9a7ec800L

    add-long/2addr v5, v7

    const-string v7, "hits2"

    const-string v8, "hit_time < ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v9, v6

    invoke-virtual {v4, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const-string v5, "Deleted stale hits, count"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Liyv;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lizj;->F()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to delete stale hits"

    invoke-virtual {v0, v4, v3}, Liyv;->u(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v0, Lizj;->d:Lizm;

    invoke-virtual {v0, v1, v2}, Lizm;->d(J)V

    return-void
.end method
