.class final Lrvt;
.super Ljava/util/AbstractCollection;
.source "PG"


# instance fields
.field final synthetic a:Lrvu;


# direct methods
.method public constructor <init>(Lrvu;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lrvt;->a:Lrvu;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final clear()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrvu;->clear()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrvt;->a:Lrvu;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lrvo;-><init>(Lrvu;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lrvu;->j()Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lrvo;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    move-object p0, v0

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lrvt;->a:Lrvu;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final size()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrvu;->size()I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrvt;->a:Lrvu;

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

    nop
.end method
