.class final Lbfk;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lbzz;

.field final synthetic b:Lcfs;

.field final synthetic c:J

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:Lubo;


# direct methods
.method public constructor <init>(Lbzz;Lcfs;JFFLubo;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-wide p3, p0, Lbfk;->c:J

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

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p5, p0, Lbfk;->d:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x2

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

    :goto_5
    iput p6, p0, Lbfk;->e:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lbfk;->b:Lcfs;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lbfk;->a:Lbzz;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p7, p0, Lbfk;->f:Lubo;

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

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

    :goto_1
    sget-object v0, Lbfi;->a:Lbfi;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2
    invoke-static {v3, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3
    sget-object v2, Lbfj;->a:Lbfj;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, v2, v0}, Lblm;->i(Ljava/lang/Object;Lubo;)V

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-static {p1, p2, v0}, Lbrh;->a(Lblm;Ljava/lang/Object;Lubo;)V

    goto/32 :goto_17

    nop

    nop

    :goto_7
    invoke-static {v0, v2}, Laov;->b(Lbzk;Z)Lcoz;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Lblm;->G()Z

    move-result v3

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

    nop

    :goto_9
    iget-object v0, p0, Lbfk;->b:Lcfs;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_a
    iget v3, p0, Lbfk;->e:F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_b
    iget v4, p0, Lbfk;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lcrs;->c:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lcrs;->b:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lbzh;->a:Lbzk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    sget-object v4, Lcrs;->a:Luaz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, v0, v4}, Lbrh;->a(Lblm;Ljava/lang/Object;Lubo;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1, v2}, Lblm;->x(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    sget-object v0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    sget v4, Lcrt;->a:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Lblh;->a(Lblm;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_19
    and-int/lit8 p2, p2, 0x3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Lblm;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Lblm;->H()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1}, Lblm;->G()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget v0, Lbzk;->a:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lbfk;->f:Lubo;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    invoke-static {p2, v0, v2}, Lcmn;->a(Lbzz;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lbzz;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p2, v0, v1, v2, v3}, Lbfo;->c(Lbzz;Lcfs;JF)Lbzz;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_22
    invoke-interface {p1}, Lblm;->w()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_25
    check-cast p2, Ljava/lang/Number;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_26
    goto :goto_2e

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v4, Lcrs;->d:Lubo;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_29
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_0
    goto/32 :goto_37

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2b
    if-eqz p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p1, p2}, Lbzt;->b(Lblm;Lbzz;)Lbzz;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_47

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1, v2, v3, v4, p1}, Lbfo;->d(JLbcd;FLblm;)J

    move-result-wide v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p2, v1, v0}, Ldfu;->b(Lbzz;ZLubk;)Lbzz;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {p1}, Lblm;->I()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v3, :cond_2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_2
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_35
    if-eqz v3, :cond_3

    nop

    goto/32 :goto_5

    nop

    :cond_3
    :goto_36
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1a

    nop

    nop

    :goto_39
    invoke-interface {p1, v3}, Lblm;->f(Lbmb;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-wide v1, p0, Lbfk;->c:J

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3c
    sget-object v3, Lbcg;->a:Lbox;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p1}, Lblm;->c()Lbmh;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3f
    iget-object p2, p0, Lbfk;->a:Lbzz;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p1}, Lblm;->y()V

    :goto_41
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {p1, v4}, Lblm;->k(Luaz;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_43
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_38

    nop

    nop

    :goto_45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_46
    invoke-interface {p1}, Lblm;->n()V

    :goto_47
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {p1}, Lblm;->g()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_49
    if-nez v5, :cond_4

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {p1, v3, v0}, Lbrh;->a(Lblm;Ljava/lang/Object;Lubo;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v3, Lbcd;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {p1}, Lblm;->s()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-interface {p0, p1, p2}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4e
    if-eq p2, v0, :cond_5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v0, 0x1b

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

    :goto_50
    sget-object v0, Lcrs;->e:Lubo;

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
.end method
