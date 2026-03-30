.class final Lkai;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkag;


# instance fields
.field final synthetic a:Lkag;

.field final synthetic b:Lkaj;


# direct methods
.method public constructor <init>(Lkaj;Lkag;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkai;->b:Lkaj;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p2, p0, Lkai;->a:Lkag;

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

    nop

    :goto_2
    return-void

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
.end method


# virtual methods
.method public final a(Ljzx;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Libn;->f(Libo;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lkaj;->a:Libn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lkai;->b:Lkaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lkai;->a:Lkag;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, p1}, Lkag;->a(Ljzx;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(JLkak;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget-object p1, p0, Lkaj;->a:Libn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Libn;->f(Libo;)V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-interface {v0, p1, p2, p3}, Lkag;->b(JLkak;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object p0, p0, Lkai;->b:Lkaj;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

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

    :goto_5
    iget-object v0, p0, Lkai;->a:Lkag;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
