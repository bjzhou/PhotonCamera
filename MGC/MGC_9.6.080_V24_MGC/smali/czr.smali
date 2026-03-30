.class final Lczr;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# direct methods
.method public constructor <init>(Ltzy;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, p1}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lufs;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p2, Ltzy;

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
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    new-instance p0, Lczr;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p2}, Lczr;-><init>(Ltzy;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lczr;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lczr;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p2}, Lczr;-><init>(Ltzy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method
