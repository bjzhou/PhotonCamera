.class final Lazy;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Layj;


# direct methods
.method public constructor <init>(Layj;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lazy;->a:Layj;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v3, v4, v5}, Lbac;->a(Lbaa;J)Z

    move-result v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Lays;->d:Lbaa;

    nop

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

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_14

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-interface {v2}, Lcob;->j()Z

    move-result v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Lcly;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_8
    const v0, 0x17

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_9
    invoke-interface {v3}, Lbaa;->f()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v4, p0, Lays;->a:J

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d
    iput-wide v0, p0, Lays;->b:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v2, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    :goto_10
    invoke-static {v4, v5, v0, v1}, La;->aK(JJ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    sget v2, Lazr;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Lays;->c:Luaz;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_13
    iput-wide v0, p0, Lays;->b:J

    nop

    nop

    :goto_14
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    iget-wide v4, p0, Lays;->e:J

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    iput-wide v0, p0, Lays;->a:J

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v2, :cond_4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lazy;->a:Layj;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v4, v5, v0, v1}, La;->aK(JJ)J

    move-result-wide v0

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

    :goto_1c
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Lays;

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

    nop

    :goto_1e
    invoke-interface {v2}, Luaz;->a()Ljava/lang/Object;

    move-result-object v2

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

    :goto_1f
    invoke-static {p1}, Lclm;->a(Lcly;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_24
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_25
    iget-wide v4, p0, Lays;->b:J

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Lcly;->b()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
