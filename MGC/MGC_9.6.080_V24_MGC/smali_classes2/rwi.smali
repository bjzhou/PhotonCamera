.class final Lrwi;
.super Lsar;
.source "PG"


# instance fields
.field final synthetic a:Lrwj;


# direct methods
.method public constructor <init>(Lrwj;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrwi;->a:Lrwj;

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

    :goto_2
    invoke-direct {p0}, Lsar;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsan;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrwi;->a:Lrwj;

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

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrwi;->a:Lrwj;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrwj;->e()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method

.method public final size()I
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lsbv;->g()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lrwj;->c()Lsbv;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lrwi;->a:Lrwj;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
