.class final Lfpq;
.super Lfpu;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lfpu;-><init>()V

    goto/32 :goto_1

    nop

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
.method public final a(IIII)F
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lfpu;->a(IIII)F

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p0, Lfpq;->a:Lfpu;

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final b(IIII)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmpl-float p0, p0, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lfpq;->a(IIII)F

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lfpq;->a:Lfpu;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lfpu;->b(IIII)I

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method
