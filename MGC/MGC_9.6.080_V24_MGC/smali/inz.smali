.class public abstract Linz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    sput-object v0, Linz;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "inz"

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

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static a(Lhoh;)Z
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lhmt;->a:Lhmt;

    nop

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

    :goto_3
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Linz;->a:Lsdb;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne p0, v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    :try_start_0
    sget-object v0, Lhmu;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    new-instance v0, Lhpi;

    nop

    nop

    const/16 v1, 0xb

    nop

    invoke-direct {v0, v1}, Lhpi;-><init>(I)V

    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    invoke-virtual {p0}, Lj$/util/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object p0

    nop

    check-cast p0, Lhmt;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    const-string v1, "In getFlagValue caught %s"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0x6b8

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, v1, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    :goto_f
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_10
    const v0, 0x13

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Lhmt;->a:Lhmt;

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    goto :goto_14

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop
.end method
