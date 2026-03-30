.class public final Lckk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lckj;


# instance fields
.field private final a:Lbob;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v0, p1}, Lbom;-><init>(Ljava/lang/Object;Lbqt;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lbom;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v1, p0, Lckk;->a:Lbob;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-direct {v0, p1}, Lcki;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lcki;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p1, Lbrg;->a:Lbrg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    const v1, 0x15

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lckk;->a:Lbob;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lcki;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lcki;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lbrd;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lckk;->a:Lbob;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p1}, Lcki;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lcki;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-interface {p0, v0}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method
