.class public final Lmje;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiz;


# instance fields
.field private final a:Lmjf;

.field private b:Lpci;


# direct methods
.method public constructor <init>(Lmjf;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmje;->a:Lmjf;

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
.method public final a()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lmje;->a:Lmjf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object v0, p0, Lmje;->b:Lpci;

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

    :goto_3
    invoke-interface {v0}, Lmjf;->a()Lpci;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lmje;->b:Lpci;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmje;->b:Lpci;

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

    :goto_5
    return-void

    nop

    nop
.end method
