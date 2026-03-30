.class public final Leuy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leuw;


# instance fields
.field private final a:Left;

.field private final b:Lefc;


# direct methods
.method public constructor <init>(Left;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Leuy;->a:Left;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    new-instance v0, Leux;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p1}, Leux;-><init>(Left;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Leuy;->b:Lefc;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lefz;->j()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1, p1}, Lefz;->g(ILjava/lang/String;)V

    goto/32 :goto_8

    nop

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

    :goto_5
    goto/32 :goto_12

    nop

    nop

    :goto_6
    return-object v1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Leuy;->a:Left;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Leuy;->a:Left;

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    const v0, 0xa

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    invoke-static {p0, v0}, Ldvw;->C(Left;Leid;)Landroid/database/Cursor;

    move-result-object p0

    nop

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Lefz;->a(Ljava/lang/String;I)Lefz;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x16

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

    :goto_16
    invoke-virtual {p1}, Left;->k()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lefz;->j()V

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final b(Leuv;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Left;->k()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Leuy;->a:Left;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Left;->n()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw p1

    nop

    :goto_4
    invoke-virtual {v0}, Left;->l()V

    :try_start_0
    iget-object v0, p0, Leuy;->b:Lefc;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lefc;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Leuy;->a:Left;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Left;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Leuy;->a:Left;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Leuy;->a:Left;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Leuy;->a:Left;

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

    :goto_8
    invoke-virtual {p0}, Left;->n()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
