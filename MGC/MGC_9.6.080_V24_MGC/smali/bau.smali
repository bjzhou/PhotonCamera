.class public final Lbau;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lbre;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    sget-object v0, Lbat;->a:Lbat;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    sput-object v1, Lbau;->a:Lbox;

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

    :goto_a
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, v0}, Lbre;-><init>(Luaz;)V

    goto/32 :goto_9

    nop

    nop
.end method

.method public static final a(JLblm;)J
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lbas;->f()J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, v1, v2}, La;->q(JJ)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, v1, v2}, La;->q(JJ)Z

    move-result v1

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

    :goto_3
    goto :goto_f

    nop

    nop

    :goto_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lbas;->e()J

    move-result-wide p0

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

    :goto_6
    invoke-virtual {v0}, Lbas;->b()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lbas;->c()J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lbas;->i()J

    move-result-wide v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p2}, Lbdb;->a(Lblm;)Lbas;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    goto :goto_f

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lbas;->e()J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_d
    invoke-interface {p2, v0}, Lblm;->v(I)V

    goto/32 :goto_9

    nop

    nop

    :goto_e
    sget-wide p0, Lcel;->f:J

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    :goto_10
    if-nez v1, :cond_0

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_11
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lbas;->l()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lbas;->h()J

    move-result-wide v1

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

    :goto_14
    cmp-long v0, p0, v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p1, v1, v2}, La;->q(JJ)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p0, Lbbf;->a:Lbox;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1a
    const-wide/16 v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0, p1, v1, v2}, La;->q(JJ)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lbas;->g()J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lbas;->k()J

    move-result-wide v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3e

    nop

    :goto_24
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p0, p1, v1, v2}, La;->q(JJ)Z

    move-result v1

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

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p2}, Lblm;->o()V

    goto/32 :goto_30

    nop

    nop

    :goto_28
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Lbas;->d()J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2b
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_6
    goto/32 :goto_29

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Lbas;->f()J

    move-result-wide p0

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

    :goto_2d
    check-cast p0, Lcel;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2e
    iget-wide p0, p0, Lcel;->g:J

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-wide p0

    nop

    :goto_31
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_32
    invoke-static {p0, p1, v1, v2}, La;->q(JJ)Z

    move-result p0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Lbas;->j()J

    move-result-wide v1

    nop

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

    :goto_34
    invoke-static {p0, p1, v1, v2}, La;->q(JJ)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Lbas;->a()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_f

    nop

    nop

    :goto_37
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_38
    const v0, -0x29dd98bf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_39
    invoke-interface {p2, p0}, Lblm;->f(Lbmb;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_f

    nop

    nop

    :goto_3b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5

    nop

    nop

    :goto_3d
    goto/32 :goto_31

    nop

    :goto_3e
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_8
    goto/32 :goto_3d

    nop

    :goto_42
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_e

    nop

    nop
.end method
