.class final Lbax;
.super Luci;
.source "PG"

# interfaces
.implements Lubp;


# static fields
.field public static final a:Lbax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Lbax;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lbax;-><init>()V

    goto/32 :goto_3

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
    sput-object v0, Lbax;->a:Lbax;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p3, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

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

    nop

    nop

    :goto_1
    invoke-interface {p2}, Lblm;->H()Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    if-ne p3, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x12

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

    :goto_4
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p3, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p2}, Lblm;->s()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p2, p1}, Lblm;->C(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, p3, p3, p2, p0}, Lbeq;->b(Lber;Lbzz;Lubp;Lblm;I)V

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Lber;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_b
    and-int/lit8 p3, p0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    or-int/2addr p0, p3

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p3, :cond_2

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p3, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p3, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    and-int/lit8 p0, p0, 0xe

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    goto :goto_1c

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    :goto_17
    const/4 p3, 0x2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    and-int/lit8 p3, p0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    const/4 p3, 0x4

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1e
    check-cast p2, Lblm;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method
