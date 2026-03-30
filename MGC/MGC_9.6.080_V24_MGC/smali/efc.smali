.class public abstract Lefc;
.super Lega;
.source "PG"


# annotations
.annotation runtime Ltxo;
.end annotation


# direct methods
.method public constructor <init>(Left;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lega;-><init>(Left;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lega;->d()Lein;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lefc;->b(Lein;Ljava/lang/Object;)V

    iget-object p1, v0, Lein;->a:Landroid/database/sqlite/SQLiteStatement;

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lega;->f(Lein;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lega;->f(Lein;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :catchall_0
    move-exception p1

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

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected abstract b(Lein;Ljava/lang/Object;)V
.end method
