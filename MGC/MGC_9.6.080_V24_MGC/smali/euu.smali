.class public final Leuu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leus;


# instance fields
.field public final a:Left;

.field public final b:Lefc;


# direct methods
.method public constructor <init>(Left;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    new-instance v0, Leut;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Leuu;->a:Left;

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

    :goto_2
    invoke-direct {v0, p1}, Leut;-><init>(Left;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Leuu;->b:Lefc;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v0}, Ldvw;->C(Left;Leid;)Landroid/database/Cursor;

    move-result-object p0

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    nop

    nop

    nop

    nop

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x15

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

    :goto_4
    const v0, 0x1e

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
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    iget-object p0, p0, Leuu;->a:Left;

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

    :goto_7
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lefz;->j()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Leuu;->a:Left;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1, p1}, Lefz;->g(ILjava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Left;->k()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Lefz;->a(Ljava/lang/String;I)Lefz;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lefz;->j()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_14
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/32 :goto_12

    nop

    nop

    :goto_18
    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
