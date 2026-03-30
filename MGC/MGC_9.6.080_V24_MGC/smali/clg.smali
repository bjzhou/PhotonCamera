.class public final Lclg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcob;

.field public final b:Lclk;

.field public final c:Lxi;


# direct methods
.method public constructor <init>(Lcob;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const/16 v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Lclk;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lclg;->a:Lcob;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p1, p0, Lclg;->c:Lxi;

    nop

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1}, Lclk;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lclg;->b:Lclk;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, v0}, Lxi;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Lxi;

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
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_3

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
    invoke-virtual {p0}, Lbtg;->g()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lclk;->d:Lbtg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lclg;->b:Lclk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
