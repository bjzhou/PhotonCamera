.class final Ldos;
.super Luci;
.source "PG"

# interfaces
.implements Lubp;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/Object;

.field final synthetic d:Lbny;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lbny;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ldos;->a:Ljava/lang/String;

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

    :goto_1
    const/4 p1, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Ldos;->d:Lbny;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Ldos;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Ldos;->c:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2}, Lblm;->H()Z

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p2}, Lblm;->G()Z

    move-result v4

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lbny;->b()I

    move-result p0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p2, v2, v5}, Lbrh;->a(Lblm;Ljava/lang/Object;Lubo;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6
    invoke-interface {p2}, Lblm;->y()V

    :goto_7
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_8
    invoke-static {p3, v0, p2, p0}, Ldom;->a(Ljava/lang/String;Ljava/lang/String;Lblm;[Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    or-int/2addr p3, v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_41

    nop

    nop

    :goto_c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_e
    invoke-interface {p2, v3}, Lblm;->x(Ljava/lang/Object;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget v5, Lcrt;->a:I

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p2}, Lblm;->g()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    invoke-static {p2}, Lblh;->a(Lblm;)I

    move-result v3

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

    :goto_14
    return-object p0

    nop

    :goto_15
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_16
    and-int/lit8 v0, p3, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p3, p0, Ldos;->a:Ljava/lang/String;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p2, v5}, Lblm;->k(Luaz;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p2, p1}, Lbzt;->b(Lblm;Lbzz;)Lbzz;

    move-result-object p1

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

    :goto_1c
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    :goto_1f
    iget-object p0, p0, Ldos;->d:Lbny;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p2, Lblm;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_22
    invoke-static {p2, p1, v2}, Lbrh;->a(Lblm;Ljava/lang/Object;Lubo;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_15

    nop

    :goto_24
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_25
    aget-object p0, v1, p0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eq p3, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_7

    nop

    :goto_28
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_29
    invoke-interface {p2}, Lblm;->n()V

    :goto_2a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Ldos;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_2f
    check-cast p1, Lapv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_30
    invoke-interface {p2}, Lblm;->s()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {p2}, Lblm;->G()Z

    move-result v6

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_32
    invoke-interface {p2}, Lblm;->I()V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_33
    sget-object p3, Lbzz;->c:Lbzv;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_35
    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_36
    sget-object v2, Lbzh;->a:Lbzk;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_37
    if-eqz p3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v5, Lcrs;->d:Lubo;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_39
    invoke-interface {p2, p1}, Lblm;->C(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3b
    const/16 v0, 0x12

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v2, Lcrs;->c:Lubo;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p2}, Lblm;->w()V

    goto/32 :goto_31

    nop

    nop

    :goto_3e
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3f
    invoke-static {v4, v5}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {p3, p1}, Laps;->c(Lbzz;Lapv;)Lbzz;

    move-result-object p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_41
    and-int/lit8 p3, p3, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_43
    sget-object v2, Lcrs;->b:Lubo;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_44
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_45
    sget-object v5, Lcrs;->a:Luaz;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast p3, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_47
    if-eqz v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_7
    :goto_48
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_24

    nop

    :goto_4a
    invoke-interface {p2}, Lblm;->c()Lbmh;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4b
    invoke-static {p2, v4, v2}, Lbrh;->a(Lblm;Ljava/lang/Object;Lubo;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    sget-object v2, Lcrs;->e:Lubo;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4d
    sget v2, Lbzk;->a:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {p2, v3, v2}, Lblm;->i(Ljava/lang/Object;Lubo;)V

    :goto_52
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v2, v3}, Laov;->b(Lbzk;Z)Lcoz;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_54
    iget-object v1, p0, Ldos;->c:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop
.end method
