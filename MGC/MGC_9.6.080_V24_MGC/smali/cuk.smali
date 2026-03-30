.class public final Lcuk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbtg;

.field public final b:Luaz;


# direct methods
.method public constructor <init>(Lbtg;Luaz;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcuk;->a:Lbtg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lcuk;->b:Luaz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcuk;->a:Lbtg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcuk;->b:Luaz;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-interface {v0}, Luaz;->a()Ljava/lang/Object;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lbtg;->c(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcuk;->a:Lbtg;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1, p2}, Lbtg;->f(ILjava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Luaz;->a()Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcuk;->b:Luaz;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
