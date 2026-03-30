.class public final Lhjv;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lbyl;

.field final synthetic b:I

.field final synthetic c:Lubk;

.field final synthetic d:F


# direct methods
.method public constructor <init>(Lbyl;ILubk;F)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lhjv;->c:Lubk;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

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

    nop

    :goto_2
    iput p2, p0, Lhjv;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p4, p0, Lhjv;->d:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhjv;->a:Lbyl;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v4, p0, Lhjv;->c:Lubk;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    invoke-direct {p0, v0, v3, v5}, Lbvr;-><init>(IZLjava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v3, 0x10

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-direct {v2, v0, v3}, Lnb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lasf;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    new-instance p0, Lbvr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    const v0, -0x410876af

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lhjv;->d:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v5, Lhju;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_e
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    const v0, 0x9

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v5, v0, v3, v4, p0}, Lhju;-><init>(Ljava/util/List;ILubk;F)V

    goto/32 :goto_7

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    :goto_12
    new-instance v2, Lnb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    :goto_14
    iget-object v0, p0, Lhjv;->a:Lbyl;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lbyl;->a()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1, v1, v2, p0}, Lasf;->a(ILubk;Lubq;)V

    goto/32 :goto_1

    nop

    nop

    :goto_17
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    iget v3, p0, Lhjv;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
