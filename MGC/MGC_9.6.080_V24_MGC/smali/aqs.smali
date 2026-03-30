.class public final Laqs;
.super Luci;
.source "PG"

# interfaces
.implements Lubp;


# instance fields
.field final synthetic a:Lubk;


# direct methods
.method public constructor <init>(Lubk;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Laqs;->a:Lubk;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static JrpXBLRGhDJrfTBZ(Lblm;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lblm;->v(I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static MPDZdpeOKeDVfqwH(Lblm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lblm;->o()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static NGPZSuqLeNuYEcOg(Lblm;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    invoke-interface {p0, p1}, Lblm;->x(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static QSMQecOWgwAqfFrN(Lblm;Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lblm;->C(Ljava/lang/Object;)Z

    move-result v0

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
.end method

.method public static osnGgHEOwaafdbXQ(Ljava/lang/Number;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static qkwclxZYBXSyrrYH(Lblm;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lblm;->g()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lbll;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p2}, Laqs;->MPDZdpeOKeDVfqwH(Lblm;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Laqs;->a:Lubk;

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

    :goto_3
    const p1, -0x5fda9847

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    invoke-static {p2, p3}, Laqs;->NGPZSuqLeNuYEcOg(Lblm;Ljava/lang/Object;)V

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    return-object p3

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p3, Lapf;

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

    :goto_9
    check-cast p2, Lblm;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2}, Laqs;->qkwclxZYBXSyrrYH(Lblm;)Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    check-cast p3, Lapf;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p2, p1}, Laqs;->QSMQecOWgwAqfFrN(Lblm;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p3}, Laqs;->osnGgHEOwaafdbXQ(Ljava/lang/Number;)I

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p3, p0}, Lapf;-><init>(Lubk;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Laqs;->a:Lubk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    invoke-static {p2, p1}, Laqs;->JrpXBLRGhDJrfTBZ(Lblm;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p3, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    if-eq p3, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p1, Lbzz;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
