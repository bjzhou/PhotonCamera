.class public final Llya;
.super Llym;
.source "PG"


# direct methods
.method public constructor <init>(Llyx;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Llym;-><init>(Llyx;Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Llya;->a:Llyx;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0, p1}, Llyx;->h(Ljava/lang/String;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Llya;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llya;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Llya;->a:Llyx;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Llyx;->a(Ljava/lang/String;)I

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
