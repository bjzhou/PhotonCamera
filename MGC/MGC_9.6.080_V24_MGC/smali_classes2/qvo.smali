.class public final Lqvo;
.super Lqvy;
.source "PG"


# direct methods
.method public constructor <init>(Lqvw;Ljava/lang/String;Ljava/lang/Long;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lqvy;-><init>(Lqvw;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_18

    nop

    nop

    :goto_0
    invoke-static {p1, p0, v0}, Lqvg;->e(Ljava/lang/Object;Lqvy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    :goto_7
    instance-of v0, p1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    const-string p1, "PhenotypeFlag"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ljava/lang/Long;

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

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    instance-of v0, p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_0
    move-object v0, p1

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    const-string v0, "Invalid long value for "

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    :goto_16
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method
