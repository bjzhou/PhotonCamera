.class final Lbco;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lubo;


# direct methods
.method public constructor <init>(Lubo;)V
    .locals 0

    goto/32 :goto_3

    nop

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

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lbco;->a:Lubo;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v0, v3}, Lbrh;->a(Lblm;Ljava/lang/Object;Lubo;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, v1}, Lblm;->x(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_43

    nop

    :goto_6
    invoke-static {v1, v0, p1, v2}, Laqd;->a(Laoj;Lbzj;Lblm;I)Lcoz;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    sget v0, Lbzk;->a:I

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Lblm;->H()Z

    move-result p2

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    invoke-interface {p1}, Lblm;->y()V

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Lblm;->n()V

    :goto_f
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p2, Lbzz;->c:Lbzv;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_35

    nop

    nop

    :goto_14
    invoke-static {p1}, Lblh;->a(Lblm;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1, v1, v0}, Lblm;->i(Ljava/lang/Object;Lubo;)V

    :goto_16
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_d

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1, p2}, Lbzt;->b(Lblm;Lbzz;)Lbzz;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v3, Lcrs;->d:Lubo;

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

    :goto_1d
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1e
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    :goto_1f
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1, v3}, Lblm;->k(Luaz;)V

    goto/32 :goto_18

    nop

    nop

    :goto_21
    check-cast p2, Ljava/lang/Number;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v0, Lcrs;->c:Lubo;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_25
    if-eq p2, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_26
    check-cast p1, Lblm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_f

    nop

    :goto_29
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1, p2}, Lblm;->v(I)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/high16 v2, 0x41a00000    # 20.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v0, Lcrs;->b:Lubo;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_2f
    invoke-interface {p1}, Lblm;->G()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v1, Laoq;->a:Laoj;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_31
    invoke-interface {p1}, Lblm;->g()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {p1}, Lblm;->w()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const p2, -0x5becedde

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_34
    invoke-static {p1, v2, v0}, Lbrh;->a(Lblm;Ljava/lang/Object;Lubo;)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {p0, p1, p2}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0xb

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

    :goto_38
    sget-object v0, Lbzh;->k:Lbzj;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {p1}, Lblm;->c()Lbmh;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget v3, Lcrt;->a:I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3b
    const/16 v2, 0x30

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

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3d
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lbco;->a:Lubo;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3f
    invoke-interface {p1}, Lblm;->s()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p1}, Lblm;->I()V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_41
    and-int/lit8 p2, p2, 0x3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_42
    sget-object v3, Lcrs;->a:Luaz;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_13

    nop

    nop

    :goto_44
    goto/32 :goto_26

    nop

    nop

    :goto_45
    invoke-interface {p1}, Lblm;->o()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v0, Lcrs;->e:Lubo;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_47
    invoke-interface {p1}, Lblm;->G()Z

    move-result v2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {p1, p2, v0}, Lbrh;->a(Lblm;Ljava/lang/Object;Lubo;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4a
    invoke-static {p2, v2, v2, v0, v1}, Laps;->g(Lbzz;FFFI)Lbzz;

    move-result-object p2

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method
