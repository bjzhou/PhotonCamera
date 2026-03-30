.class public final Lpde;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final a:Lpdf;


# direct methods
.method public constructor <init>(Lpdf;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, p2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpde;->a:Lpdf;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 0

    goto/32 :goto_2

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
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpde;->a:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
