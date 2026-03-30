.class public final Lfkj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfka;


# instance fields
.field public final a:Lfqi;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lfmm;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 p0, 0x500000

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-direct {v0, p1, p2}, Lfqi;-><init>(Ljava/io/InputStream;Lfmm;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lfqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_4
    iput-object v0, p0, Lfkj;->a:Lfqi;

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

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Lfqi;->mark(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
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

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfkj;->c()Ljava/io/InputStream;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfkj;->a:Lfqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lfqi;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfkj;->a:Lfqi;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lfqi;->reset()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfkj;->a:Lfqi;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
