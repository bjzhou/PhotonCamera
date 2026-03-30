.class final Laew;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# static fields
.field public static final a:Laew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Laew;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    sput-object v0, Laew;->a:Laew;

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
    new-instance v0, Laew;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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
    invoke-direct {p0, v0}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static IRhuKevlkOUPchbK(I)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static tvtweWFhqKNlbRoz(I)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

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
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-wide p0, p1, Lcdn;->a:J

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1e

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

    :goto_2
    invoke-static {p1}, Laew;->IRhuKevlkOUPchbK(I)F

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Laew;->tvtweWFhqKNlbRoz(I)F

    move-result p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    shr-long v0, p0, v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    long-to-int p0, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const-wide v2, 0xffffffffL

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

    nop

    :goto_7
    long-to-int p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Labq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    const v1, 0x1e

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0x20

    nop

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

    :goto_e
    and-long/2addr p0, v2

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

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p1, Lcdn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    :goto_13
    invoke-direct {v0, p1, p0}, Labq;-><init>(FF)V

    goto/32 :goto_14

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop
.end method
