.class public final synthetic Lqcl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssw;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lsui;

.field public final synthetic c:Ltlk;


# direct methods
.method public synthetic constructor <init>(Ltlk;Ljava/lang/String;Lsui;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqcl;->c:Ltlk;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lqcl;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

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
    iput-object p3, p0, Lqcl;->b:Lsui;

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
.end method


# virtual methods
.method public final a()Lsui;
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqcl;->b:Lsui;

    nop

    :try_start_0
    iget-object v2, v1, Ltlk;->c:Ljava/lang/Object;

    nop

    iget-object v3, v1, Ltlk;->a:Ljava/lang/Object;

    nop

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    nop

    nop

    nop

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    invoke-interface {v2, v0, v3}, Lqcn;->a(Ljava/lang/String;I)V

    iget-object v1, v1, Ltlk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v1, v0}, Lqbq;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_3
    iget-object v1, p0, Lqcl;->c:Ltlk;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_6

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x3

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

    nop

    :goto_b
    iget-object v0, p0, Lqcl;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    const-string v1, "%s: Failed to add download future (%s) to map"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "DownloadFutureMap"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method
