.class public final synthetic Liju;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsui;

.field public final synthetic b:Lpdf;

.field public final synthetic c:Ltxm;

.field public final synthetic d:Ltxm;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lsui;Lpdf;Ltxm;Ltxm;Landroid/content/Context;Ljava/lang/String;Z)V
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

    nop

    nop

    :goto_1
    iput-boolean p7, p0, Liju;->g:Z

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Liju;->c:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    iput-object p6, p0, Liju;->f:Ljava/lang/String;

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

    nop

    :goto_5
    iput-object p5, p0, Liju;->e:Landroid/content/Context;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Liju;->b:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Liju;->d:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Liju;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 8

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

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

    :goto_2
    const v0, 0x3

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v7, Lijy;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Liju;->a:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget-object v3, p0, Liju;->d:Ltxm;

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

    :goto_7
    rem-int v0, v0, v1

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, v7, v0}, Lolx;->bn(Lsui;Lpbz;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Liju;->b:Lpdf;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v4, p0, Liju;->e:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v0, v7

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-direct/range {v0 .. v6}, Lijy;-><init>(Lpdf;Ltxm;Ltxm;Landroid/content/Context;Ljava/lang/String;Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v5, p0, Liju;->f:Ljava/lang/String;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    :goto_13
    iget-boolean v6, p0, Liju;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    iget-object v2, p0, Liju;->c:Ltxm;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1d

    nop

    goto/32 :goto_1

    nop

    nop
.end method
