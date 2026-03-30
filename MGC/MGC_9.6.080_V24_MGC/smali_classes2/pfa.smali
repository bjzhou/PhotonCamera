.class final Lpfa;
.super Lprm;
.source "PG"


# instance fields
.field final synthetic a:Lpri;

.field final synthetic b:Lpfb;


# direct methods
.method public constructor <init>(Lpfb;Lpri;Lpri;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2}, Lprm;-><init>(Lpri;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpfa;->b:Lpfb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lpfa;->a:Lpri;

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


# virtual methods
.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpfa;->b:Lpfb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lpep;->a()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lpri;->b()Ljava/lang/String;

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

    :goto_2
    const-string v0, "Virtual Camera "

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lpfa;->a:Lpri;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
