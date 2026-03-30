.class public final synthetic Lbxr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbxp;


# instance fields
.field public final synthetic a:Lubo;


# direct methods
.method public synthetic constructor <init>(Lubo;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbxr;->a:Lubo;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 8

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_10

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Lbyg;->g:Ljava/util/List;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v3

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    move v4, v3

    nop

    nop

    nop

    nop

    :cond_1
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_3

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    if-nez v4, :cond_2

    nop

    nop

    invoke-static {v5, p0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    nop

    if-eqz v7, :cond_2

    nop

    move v4, v6

    nop

    nop

    move v6, v3

    nop

    nop

    nop

    nop

    :cond_2
    if-eqz v6, :cond_1

    nop

    nop

    nop

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    sput-object v2, Lbyg;->g:Ljava/util/List;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :catchall_0
    move-exception p0

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

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lbyg;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    iget-object p0, p0, Lbxr;->a:Lubo;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
