.class public final Lebs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;
.implements Leau;


# instance fields
.field public final a:Lebq;

.field public b:Z

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lebq;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lebs;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lebs;->a:Lebq;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Leaw;Leap;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Leap;->ON_DESTROY:Leap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-boolean p2, p0, Lebs;->b:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Leaw;->getLifecycle()Lear;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    if-eq p2, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Lear;->c(Leav;)V

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lehs;Lear;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2, p0}, Lehs;->b(Ljava/lang/String;Lehr;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p2, p0, Lebs;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2, p0}, Lear;->a(Leav;)V

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lebs;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p1, "Already attached to lifecycleOwner"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    :goto_9
    iput-boolean v0, p0, Lebs;->b:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lebs;->a:Lebq;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lebq;->f:Lehr;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
