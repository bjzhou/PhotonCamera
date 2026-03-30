.class public final Lsjd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lsiz;

.field public final b:Lsiz;

.field public final c:Lj$/util/Spliterator;

.field public final d:Lj$/util/Spliterator;

.field final synthetic e:Lsje;


# direct methods
.method public constructor <init>(Lsje;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lsjd;->c:Lj$/util/Spliterator;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget-object v0, p1, Lsje;->a:Lj$/util/stream/Stream;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lsiz;-><init>()V

    goto/32 :goto_8

    nop

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

    nop

    nop

    :goto_6
    iget-object p1, p1, Lsje;->b:Lj$/util/stream/Stream;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lsjd;->e:Lsje;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    iput-object v0, p0, Lsjd;->b:Lsiz;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    new-instance v0, Lsiz;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Lsiz;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lsjd;->a:Lsiz;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lsjd;->d:Lj$/util/Spliterator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lsiz;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method


# virtual methods
.method public final a()Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lsjd;->d:Lj$/util/Spliterator;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    :goto_9
    const v0, 0x6

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

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lsjd;->c:Lj$/util/Spliterator;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lsjd;->a:Lsiz;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    invoke-interface {v0, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lsjd;->b:Lsiz;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method
