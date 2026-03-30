.class final Lapx;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lcpp;

.field final synthetic b:Lcpc;

.field final synthetic c:Lapy;


# direct methods
.method public constructor <init>(Lcpp;Lcpc;Lapy;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lapx;->a:Lcpp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p2, p0, Lapx;->b:Lcpc;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object p3, p0, Lapx;->c:Lapy;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop
.end method

.method public static EcuneEKJRMCofflh(Lapv;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lapv;->d()F

    move-result v0

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

.method public static TrSFnsLdOiOJPwMh(Lcpc;F)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lcpc;->cw(F)I

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

    nop

    nop

    nop

    nop
.end method

.method public static axStaYYjzKWwFMWM(Lcpc;)Ldpq;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lcpc;->n()Ldpq;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static iXPyiyeqhwbTwomz(Lcpo;Lcpp;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcpo;->d(Lcpo;Lcpp;II)V

    goto/32 :goto_1

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

    nop

    nop

    nop
.end method

.method public static kMKBcCVsTajweBdD(Lcpc;F)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lcpc;->cw(F)I

    move-result v0

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
    return v0

    nop
.end method

.method public static uDgjXlhWBwWTXjDP(Lapv;Ldpq;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lapv;->b(Ldpq;)F

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Lapx;->b:Lcpc;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p0, v0, v1}, Lapx;->iXPyiyeqhwbTwomz(Lcpo;Lcpp;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, v1, Lapy;->a:Lapv;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    invoke-static {v1, v2}, Lapx;->uDgjXlhWBwWTXjDP(Lapv;Ldpq;)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    const v0, 0x8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lapx;->axStaYYjzKWwFMWM(Lcpc;)Ldpq;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lapx;->c:Lapy;

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

    :goto_a
    check-cast p1, Lcpo;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lapx;->a:Lcpp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, v1, Lapy;->a:Lapv;

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

    nop

    :goto_f
    iget-object v0, p0, Lapx;->b:Lcpc;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Lapx;->kMKBcCVsTajweBdD(Lcpc;F)I

    move-result v0

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

    nop

    :goto_12
    invoke-static {v1}, Lapx;->EcuneEKJRMCofflh(Lapv;)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lapx;->c:Lapy;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_16
    invoke-static {v2, v1}, Lapx;->TrSFnsLdOiOJPwMh(Lcpc;F)I

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop
.end method
