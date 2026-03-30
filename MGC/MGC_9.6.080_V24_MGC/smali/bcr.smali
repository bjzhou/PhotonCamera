.class final Lbcr;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lubo;


# direct methods
.method public constructor <init>(Lubo;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lbcr;->a:Lubo;

    nop

    nop

    goto/32 :goto_3

    nop

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

    :goto_3
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lblm;->I()V

    goto/32 :goto_34

    nop

    nop

    :goto_1
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, v0, v4}, Lbrh;->a(Lblm;Ljava/lang/Object;Lubo;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Lblm;->n()V

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    sget v0, Lbzk;->a:I

    nop

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

    nop

    :goto_d
    invoke-interface {p1, v4}, Lblm;->k(Luaz;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Lblm;->s()V

    goto/32 :goto_7

    nop

    nop

    :goto_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p2, v0}, Lbrh;->a(Lblm;Ljava/lang/Object;Lubo;)V

    goto/32 :goto_16

    nop

    nop

    :goto_11
    invoke-interface {p1, v2}, Lblm;->x(Ljava/lang/Object;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p2, Ljava/lang/Number;

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

    nop

    :goto_13
    invoke-static {v3, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p2, v0, v0}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;-><init>(FF)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    sget v4, Lcrt;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_18
    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_2
    :goto_19
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lbcr;->a:Lubo;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1b
    invoke-interface {p0, p1, p2}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/high16 v0, 0x42600000    # 56.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v0, Lcrs;->b:Lubo;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1}, Lblm;->H()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3b

    nop

    nop

    :goto_23
    invoke-interface {p1}, Lblm;->y()V

    :goto_24
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v0, Lbzh;->e:Lbzk;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_26
    sget-object v4, Lcrs;->a:Luaz;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_27
    if-eq p2, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_28
    and-int/lit8 p2, p2, 0x3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p1}, Lblm;->G()Z

    move-result v5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2a
    sget-object p2, Lbzz;->c:Lbzv;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2b
    sget-object v4, Lcrs;->d:Lubo;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p1, p2}, Lbzt;->b(Lblm;Lbzz;)Lbzz;

    move-result-object p2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2d
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0, v1}, Laov;->b(Lbzk;Z)Lcoz;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2f
    goto :goto_24

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_31
    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_32
    const/4 v0, 0x2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_33
    invoke-interface {p1}, Lblm;->G()Z

    move-result v3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p1}, Lblm;->w()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v0, Lcrs;->c:Lubo;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p1}, Lblh;->a(Lblm;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_38
    invoke-static {p1, v3, v0}, Lbrh;->a(Lblm;Ljava/lang/Object;Lubo;)V

    goto/32 :goto_3e

    nop

    nop

    :goto_39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_3d

    nop

    nop

    :goto_3c
    new-instance p2, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3d
    check-cast p1, Lblm;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3e
    sget-object v0, Lcrs;->e:Lubo;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    :goto_40
    invoke-interface {p1}, Lblm;->g()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_42
    invoke-interface {p1}, Lblm;->c()Lbmh;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_43
    invoke-interface {p1, v2, v0}, Lblm;->i(Ljava/lang/Object;Lubo;)V

    :goto_44
    goto/32 :goto_1f

    nop

    nop

    nop
.end method
