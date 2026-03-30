.class public final Lnkq;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:F

.field final synthetic b:Lnkl;


# direct methods
.method public constructor <init>(FLnkl;)V
    .locals 0

    goto/32 :goto_4

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
    iput-object p2, p0, Lnkq;->b:Lnkl;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lnkq;->a:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p1, p1, Lnkl;->a:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lnkq;->b:Lnkl;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5
    check-cast p2, Ldpb;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_6
    invoke-interface {v5}, Lblm;->s()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p2, Ljava/lang/Number;

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

    :goto_8
    invoke-interface {p2, v0}, Ldpb;->ct(I)F

    move-result p2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_36

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    iget p1, p0, Lnkl;->d:I

    nop

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

    nop

    :goto_c
    iget-object v1, p0, Lnkl;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    sget-object p2, Ldbf;->c:Lbox;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, v5, p2}, Ldej;->a(ILblm;I)Lcij;

    move-result-object v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnkq;->b:Lnkl;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Lnkl;->c:Landroid/util/Size;

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

    :goto_15
    iget-object v0, p0, Lnkq;->b:Lnkl;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v6, 0x8

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v5, p2}, Lblm;->f(Lbmb;)Ljava/lang/Object;

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

    :goto_18
    const/4 p2, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static/range {v0 .. v6}, Lbir;->a(Lcij;Ljava/lang/String;Lbzz;JLblm;I)V

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Lcen;->c(I)J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v5, p2}, Lblm;->f(Lbmb;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1, p2}, Laqi;->a(Lbzz;F)Lbzz;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lnkq;->b:Lnkl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_21
    goto :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_6

    nop

    nop

    :goto_23
    invoke-static {p2, p1}, Lcbk;->a(Lbzz;F)Lbzz;

    move-result-object p1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p2, v0}, Ldpb;->ct(I)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_25
    and-int/lit8 p1, p1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v5}, Lblm;->H()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_27
    sget-object p2, Lbzz;->c:Lbzv;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    :goto_29
    goto/16 :goto_1a

    nop

    :goto_2a
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2b
    iget p1, p0, Lnkq;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq p1, p2, :cond_2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2d
    check-cast p2, Ldpb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2e
    const v0, 0x2

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v5, Lblm;

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

    nop

    :goto_31
    const v1, 0x8

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

    :goto_32
    invoke-static {p1, p2}, Laqi;->d(Lbzz;F)Lbzz;

    move-result-object p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, v0, Lnkl;->c:Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_34
    sget-object p2, Ldbf;->c:Lbox;

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

    :goto_35
    return-object p0

    nop

    nop

    :goto_36
    goto/32 :goto_2f

    nop

    nop
.end method
