.class public final Lbac;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbox;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v2, Lbmx;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_7

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v2, Lbac;->a:Lbox;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    sget-object v1, Lbrg;->a:Lbrg;

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

    :goto_c
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-direct {v2, v1, v0}, Lbmx;-><init>(Lbqt;Luaz;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lbab;->a:Lbab;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public static final a(Lbaa;J)Z
    .locals 4

    goto/32 :goto_e

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lbaa;->b()Lxi;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-static {v2, p0, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    new-array v0, v0, [Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aput-object v1, v0, v3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Ljava/lang/Boolean;

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

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    const v0, 0x20

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v2, 0x31

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
