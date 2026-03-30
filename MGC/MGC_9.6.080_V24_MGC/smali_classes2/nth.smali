.class public final synthetic Lnth;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loqt;


# instance fields
.field public final synthetic a:Lsuu;


# direct methods
.method public synthetic constructor <init>(Lsuu;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnth;->a:Lsuu;

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
.end method


# virtual methods
.method public final a(Loqy;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
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

    nop

    :goto_1
    goto/32 :goto_b

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :catch_0
    move-exception p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1e

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v3, 0x145a

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    sget-object v1, Lnti;->a:Lsdb;

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

    :goto_e
    sget-object v0, Lnti;->a:Lsdb;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v2, v3, v1, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v2, "getNodesByCapabilitySync() - Fail to getCapability"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Loqy;->d()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Losa;

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    invoke-interface {p1}, Losa;->a()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    invoke-interface {p1}, Losa;->a()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->size()I

    :cond_1
    invoke-interface {p1}, Losa;->a()Ljava/util/Set;

    move-result-object p1

    nop

    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    return-void

    nop

    nop

    nop

    :cond_2
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catch Loqx; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lnth;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method
