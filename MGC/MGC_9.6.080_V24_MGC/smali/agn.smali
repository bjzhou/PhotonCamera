.class public final Lagn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcfs;


# direct methods
.method public constructor <init>()V
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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static KFAqrtzNBAzeVNrG(I)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

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

.method public static vJCgmNTYqOjYHzlX(I)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    nop

    nop

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

    nop
.end method

.method public static yfrrDqNWWjlMvjNl(Ldpb;F)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ldpb;->cw(F)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method


# virtual methods
.method public final a(JLdpq;Ldpb;)Lcfe;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    and-long/2addr p3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    add-float/2addr p3, p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    shr-long/2addr p1, p4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    new-instance p4, Lcdj;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const/high16 p0, 0x41f00000    # 30.0f

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    sget-object p0, Lagp;->a:Lbzz;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    new-instance p2, Lcfc;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    neg-float p0, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    long-to-int p3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    long-to-int p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Lagn;->KFAqrtzNBAzeVNrG(I)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-static {p3}, Lagn;->vJCgmNTYqOjYHzlX(I)F

    move-result p3

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

    :goto_d
    invoke-static {p4, p0}, Lagn;->yfrrDqNWWjlMvjNl(Ldpb;F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    return-object p2

    nop

    :goto_f
    const/16 p4, 0x20

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
    invoke-direct {p4, v0, p0, p1, p3}, Lcdj;-><init>(FFFF)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-wide p3, 0xffffffffL

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    invoke-direct {p2, p4}, Lcfc;-><init>(Lcdj;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
