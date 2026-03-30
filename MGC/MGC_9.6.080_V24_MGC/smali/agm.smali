.class public final Lagm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    :goto_1
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xc

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    int-to-long v0, v0

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

    nop

    :goto_b
    sput-wide v0, Lagm;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-static {}, Lagm;->cXKCsCMzlPNHKwrv()I

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public static HaSFUsOXXdYIgzld(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static QKNxvTMfJUZbOwue(Ljava/lang/Long;)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x19

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const v1, 0x20

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-wide v0

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop
.end method

.method public static final a(Landroid/view/KeyEvent;)Z
    .locals 6

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0xa0

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

    :goto_1
    if-ne p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x14

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    :goto_6
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    aput-object p0, v2, v4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lagm;->QKNxvTMfJUZbOwue(Ljava/lang/Long;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    long-to-int p0, v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    shr-long/2addr v0, p0

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

    :goto_b
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_c
    if-ne p0, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    :goto_d
    const/16 v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    const/16 v4, 0x191

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

    :goto_f
    const v0, 0xd

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

    :goto_10
    if-ne p0, v0, :cond_3

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

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v4, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v0, 0x42

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    :goto_16
    const/4 p0, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    const/16 p0, 0x20

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v0, 0x3e

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Ljava/lang/Long;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1e
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1c

    nop

    nop

    :goto_20
    if-ne p0, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_21
    invoke-static {v4, v5, v2}, Lagm;->HaSFUsOXXdYIgzld(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public static cXKCsCMzlPNHKwrv()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method
