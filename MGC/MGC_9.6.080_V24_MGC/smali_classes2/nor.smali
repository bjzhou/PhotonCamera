.class public final synthetic Lnor;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loqv;


# instance fields
.field public final synthetic a:Lnot;


# direct methods
.method public synthetic constructor <init>(Lnot;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnor;->a:Lnot;

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


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const v1, 0xd

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    :try_start_0
    check-cast p1, Lrmu;

    nop

    iget v0, p1, Lrmu;->c:I

    nop

    nop

    nop

    nop

    nop

    iget v1, p1, Lrmu;->b:I

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lnor;->a:Lnot;

    nop

    nop

    nop

    iput-object p1, p0, Lnot;->c:Lrmu;

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0xb

    nop

    if-eq v0, v2, :cond_4

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v0, :cond_3

    nop

    nop

    nop

    const/4 v0, 0x2

    nop

    nop

    nop

    if-eq v1, v0, :cond_1

    nop

    nop

    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    if-eq v1, p1, :cond_0

    nop

    nop

    nop

    goto :goto_8

    nop

    :cond_0
    invoke-virtual {p0}, Lnot;->c()V

    iget-object p0, p0, Lnot;->b:Lnoo;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lnoo;->t()V

    return-void

    nop

    :cond_1
    invoke-virtual {p1}, Lrmu;->a()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_2

    nop

    iget-object p0, p0, Lnot;->b:Lnoo;

    nop

    nop

    nop

    nop

    iget v0, p1, Lrmu;->a:I

    nop

    nop

    iget-object p1, p1, Lrmu;->d:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0, p1}, Lnoo;->p(ILjava/lang/Integer;)V

    :cond_2
    :goto_8
    return-void

    nop

    :cond_3
    iget-object p0, p0, Lnot;->b:Lnoo;

    nop

    invoke-interface {p0}, Lnoo;->k()V

    return-void

    nop

    nop

    nop

    :cond_4
    iget-object p0, p0, Lnot;->b:Lnoo;

    nop

    nop

    invoke-interface {p0}, Lnoo;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_5

    nop

    goto/32 :goto_7

    nop

    :cond_5
    goto/32 :goto_6

    nop
.end method
