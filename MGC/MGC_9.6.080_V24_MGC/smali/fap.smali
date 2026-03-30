.class public final Lfap;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfat;
.implements Lfab;


# instance fields
.field public final a:Lfay;

.field public b:Lfcv;

.field private final c:Lezm;


# direct methods
.method public constructor <init>(Lezm;Lfdc;Lfcu;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lfck;->a()Lfay;

    move-result-object p1

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
    iput-object p1, p0, Lfap;->a:Lfay;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfap;->c:Lezm;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, p1}, Lfdc;->i(Lfay;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p3, Lfcu;->a:Lfck;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    invoke-virtual {p1, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static a(II)I
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const v1, 0xb

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

    :goto_1
    const v0, 0x15

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    sub-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    if-ltz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    xor-int v0, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    if-ne v0, p0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    mul-int v0, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    mul-int/2addr v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    div-int v1, p0, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

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
    goto/32 :goto_10

    nop

    nop

    nop
.end method


# virtual methods
.method public final d()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfap;->c:Lezm;

    nop

    nop

    goto/32 :goto_2

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

    :goto_2
    invoke-virtual {p0}, Lezm;->invalidateSelf()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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
.end method
