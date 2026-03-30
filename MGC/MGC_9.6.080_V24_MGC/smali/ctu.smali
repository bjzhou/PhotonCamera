.class final Lctu;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lctz;

.field final synthetic b:Lctw;


# direct methods
.method public constructor <init>(Lctz;Lctw;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lctu;->a:Lctz;

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

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lctu;->b:Lctw;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0, v1, v2}, Lcpo;->e(Lcpp;J)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Lcpi;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    :goto_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x12

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v1, v1, Lctw;->A:J

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0, v1, v2, v3}, Lcpo;->k(Lcpp;JLcid;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0, v3, v4, v2}, Lcpo;->j(Lcpp;JLubk;)V

    :goto_b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lctz;->a()Lcva;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lctz;->a()Lcva;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v0}, Lcpi;-><init>(Lcvm;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    goto :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v1, v1, Lctw;->A:J

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_16
    iget-object v0, v0, Lcue;->l:Lcpo;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    move-object v0, v1

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_1b
    iget-object v1, p0, Lctu;->b:Lctw;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lctu;->a:Lctz;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1d
    const v1, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v0, Lcva;->u:Lcva;

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

    :goto_1f
    iget-object v0, v0, Lctz;->a:Lcth;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-wide v3, v1, Lctw;->A:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v3, v1, Lctw;->z:Lcid;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_22
    iget-object v0, p0, Lctu;->a:Lctz;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_b

    nop

    :goto_24
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    if-nez v3, :cond_3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    :goto_26
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lctu;->a:Lctz;

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

    :goto_28
    invoke-virtual {p0}, Lctz;->a()Lcva;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_29
    invoke-static {v0}, Lctk;->a(Lcth;)Lcvm;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, v1, Lctw;->y:Lubk;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lctz;->a()Lcva;

    move-result-object p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method
