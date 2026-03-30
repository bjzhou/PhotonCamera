.class public final Lcra;
.super Lcqu;
.source "PG"


# instance fields
.field public final a:Lcqq;

.field public final b:Lbob;


# direct methods
.method public constructor <init>(Lcqq;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1, p1}, Lbom;-><init>(Ljava/lang/Object;Lbqt;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lcqu;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    sget-object p1, Lbrg;->a:Lbrg;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    iput-object p1, p0, Lcra;->a:Lcqq;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lcra;->b:Lbob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_f
    new-instance v0, Lbom;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lcqq;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcra;->b:Lbob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    const-string p1, "Check failed."

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcra;->a:Lcqq;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Lcnf;->b(Ljava/lang/String;)V

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0}, Lbrd;->a()Ljava/lang/Object;

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

    nop

    nop

    nop

    :goto_a
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final b(Lcqq;)Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p1, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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

    :goto_3
    iget-object p0, p0, Lcra;->a:Lcqq;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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
    return p0

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
