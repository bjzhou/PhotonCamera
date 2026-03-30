.class public final synthetic Leih;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final synthetic a:Lscn;


# direct methods
.method public synthetic constructor <init>(Lscn;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Leih;->a:Lscn;

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
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    goto :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lehx;->c()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    :catch_0
    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_8
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p1, v0}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_c
    check-cast p1, Landroid/util/Pair;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Lehx;->j()Z

    move-result p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_33

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Lehx;->c()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Lehy;->f(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    :goto_19
    iget-object p0, p0, Leih;->a:Lscn;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_36

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Landroid/util/Pair;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0, p1}, Ldwa;->n(Lscn;Landroid/database/sqlite/SQLiteDatabase;)Leig;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    if-nez p0, :cond_6

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    :goto_1f
    const-string v0, ".path"

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

    :goto_20
    invoke-static {p0}, Lehy;->f(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2a

    nop

    nop

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_25
    invoke-static {p0}, Lehy;->f(Ljava/lang/String;)V

    :goto_26
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    :goto_28
    invoke-static {p0}, Lehy;->f(Ljava/lang/String;)V

    :goto_29
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 p1, 0x0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Leig;->d:Landroid/database/sqlite/SQLiteDatabase;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p1}, Lehy;->f(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v0, "SupportSQLite"

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

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

    :goto_2f
    if-nez p1, :cond_7

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_24

    nop

    nop

    :goto_34
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto :goto_3b

    nop

    nop

    :catch_1
    :goto_36
    :try_start_1
    invoke-interface {p0}, Lehx;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

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

    :goto_38
    invoke-interface {p0}, Lehx;->c()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string p1, "Corruption reported by sqlite on database: "

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
