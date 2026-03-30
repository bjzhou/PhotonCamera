.class final Lbaz;
.super Luci;
.source "PG"

# interfaces
.implements Lubp;


# static fields
.field public static final a:Lbaz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lbaz;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    sput-object v0, Lbaz;->a:Lbaz;

    nop

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

    :goto_3
    new-instance v0, Lbaz;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const/16 p2, 0x12

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    and-int/lit8 p1, p0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5
    invoke-static/range {v0 .. v11}, Lbfh;->d(Lbed;Lbzz;Lcfs;JJJFLblm;I)V

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    const-wide/16 v3, 0x0

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

    :goto_a
    and-int/lit8 p1, p0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v10, p2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    or-int/2addr p0, p1

    nop

    nop

    :goto_12
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_13
    goto :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2a

    nop

    nop

    :goto_15
    check-cast v10, Lblm;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq p1, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    :goto_1a
    invoke-interface {v10, v0}, Lblm;->C(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v10}, Lblm;->s()V

    goto/32 :goto_13

    nop

    nop

    :goto_1c
    if-ne p2, p1, :cond_1

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

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v10, v0}, Lblm;->E(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p3, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_24
    check-cast v0, Lbed;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_25
    invoke-interface {v10}, Lblm;->H()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_26
    const v1, 0x11

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_27
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    :goto_2a
    and-int/lit8 v11, p0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz p1, :cond_4

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1b

    nop

    nop

    :goto_2f
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_11

    nop

    nop

    :goto_31
    goto/16 :goto_1f

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_33
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_34
    and-int/lit8 p1, p0, 0x13

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop
.end method
