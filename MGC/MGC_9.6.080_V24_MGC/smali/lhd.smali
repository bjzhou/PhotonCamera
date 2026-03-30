.class public final synthetic Llhd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltxm;


# instance fields
.field public final synthetic a:Lpnu;

.field public final synthetic b:Lkmn;

.field public final synthetic c:Lnne;

.field public final synthetic d:Lrss;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lhoh;

.field public final synthetic h:Lfdo;


# direct methods
.method public synthetic constructor <init>(Lpnu;Lfdo;Lkmn;Lnne;Lhoh;Lrss;ZZ)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llhd;->a:Lpnu;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Llhd;->b:Lkmn;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p8, p0, Llhd;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iput-object p6, p0, Llhd;->d:Lrss;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Llhd;->c:Lnne;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iput-boolean p7, p0, Llhd;->e:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Llhd;->g:Lhoh;

    nop

    nop

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

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_9
    iput-object p2, p0, Llhd;->h:Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 12

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Llhd;->a:Lpnu;

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

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v11, Llhv;->b:Llhv;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-object v4, p0, Llhd;->c:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    :goto_6
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    const/4 v7, 0x0

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

    :goto_8
    iget-object v3, p0, Llhd;->b:Lkmn;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    invoke-static/range {v1 .. v11}, Llhg;->d(Lfdo;Lpnu;Lkmn;Lnne;Lhoh;Lrss;ZZZZLlhv;)Lphj;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v2}, Lpnu;->s()Ljava/util/List;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v5, p0, Llhd;->g:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v6, p0, Llhd;->d:Lrss;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const v0, 0x9

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    iget-boolean v10, p0, Llhd;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    iget-boolean v9, p0, Llhd;->e:Z

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

    :goto_14
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    sget-object v0, Llhg;->a:Lsdb;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_17
    iget-object v1, p0, Llhd;->h:Lfdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
