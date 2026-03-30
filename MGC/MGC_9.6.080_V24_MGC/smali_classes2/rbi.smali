.class public final synthetic Lrbi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p1, p0, Lrbi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lrbi;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Failed to remove migrated SharedPreferences keys: "

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    :goto_3
    check-cast p0, Lrbl;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lrbs;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lrbi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

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

    :goto_c
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lrbl;->e:Landroid/content/SharedPreferences;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_10
    xor-int/2addr p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lrbl;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    move-object v0, p0

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_13
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_14
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    :goto_17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lrbl;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Lrbi;->b:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    nop

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

    :goto_1c
    iget-object p0, p0, Lrbi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_1e
    if-nez v0, :cond_3

    nop

    goto/32 :goto_37

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    :goto_21
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Lrbq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lrbl;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_24
    throw p0

    nop

    :goto_25
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Lrbl;->e:Landroid/content/SharedPreferences;

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

    :goto_27
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, v0, Lrbq;->b:Lrbs;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v1, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v3, :cond_4

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lrbl;->e:Landroid/content/SharedPreferences;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2e
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lrbl;->e:Landroid/content/SharedPreferences;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lrbi;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v2, p0, Lrbl;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v3, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0xc

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-object v2

    nop

    :goto_37
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_38
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_16

    nop

    nop

    :goto_3a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_3d
    monitor-enter v0

    nop

    nop

    :try_start_0
    check-cast p0, Lrbq;

    nop

    iput-object v2, p0, Lrbq;->a:Ljava/util/List;

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object v2

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_24

    nop

    nop

    :goto_3e
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
