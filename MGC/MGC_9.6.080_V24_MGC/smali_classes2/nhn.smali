.class public final Lnhn;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lnnf;

.field final synthetic c:Z

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:Z

.field final synthetic g:Lubo;

.field final synthetic h:J


# direct methods
.method public constructor <init>(Ljava/util/List;Lnnf;ZFFZLubo;J)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p6, p0, Lnhn;->f:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lnhn;->b:Lnnf;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput p5, p0, Lnhn;->e:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnhn;->a:Ljava/util/List;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p3, p0, Lnhn;->c:Z

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

    :goto_5
    iput p4, p0, Lnhn;->d:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    :goto_7
    iput-object p7, p0, Lnhn;->g:Lubo;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    iput-wide p8, p0, Lnhn;->h:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_1
    iget-boolean v3, p0, Lnhn;->c:Z

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1, v2, p0}, Lbvr;-><init>(IZLjava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lnhn;->b:Lnnf;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct/range {v0 .. v9}, Lnhm;-><init>(Ljava/util/List;Lnnf;ZFFZLubo;J)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    const v1, -0x25b7f321

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Lnhm;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

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

    :goto_c
    iget-boolean v6, p0, Lnhn;->f:Z

    nop

    nop

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

    :goto_d
    iget-wide v8, p0, Lnhn;->h:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, v10, v11, v0}, Lasf;->a(ILubk;Lubq;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    iget v5, p0, Lnhn;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    invoke-direct {v11, v1, v0}, Lnhl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lnhn;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p1, Lasf;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    move-object v0, p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    new-instance v0, Lbvr;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v4, p0, Lnhn;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    new-instance v11, Lnhl;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v7, p0, Lnhn;->g:Lubo;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method
