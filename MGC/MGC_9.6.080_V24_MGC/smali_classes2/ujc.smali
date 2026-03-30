.class public final Lujc;
.super Luit;
.source "PG"

# interfaces
.implements Lujd;


# direct methods
.method public constructor <init>(Luad;Luis;)V
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

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Luit;-><init>(Luad;Luis;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic P()Lujg;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop
.end method

.method public final bridge synthetic eG(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iget-object p0, p0, Luit;->b:Luis;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    check-cast p1, Ltyg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lucd;->F(Lujg;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final g(Ljava/lang/Throwable;Z)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object p0, p0, Lues;->a:Luad;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Luit;->b:Luis;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Lucg;->l(Luad;Ljava/lang/Throwable;)V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-interface {v0, p1}, Luis;->u(Ljava/lang/Throwable;)Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method
