.class public final Lrci;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrcs;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lrci;->a:Ljava/util/List;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lrci;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lrcj;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    invoke-direct {v0, v1, p0}, Lrcj;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lrci;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lrci;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lrcj;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lrch;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lrci;->f(Lrch;)V

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

    :goto_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-direct {v0, p1, p2}, Lrch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/CharSequence;Z)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Lrch;

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

    :goto_1
    invoke-direct {v0, p1, p2}, Lrch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_4

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

    nop

    nop

    :goto_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

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

    :goto_4
    invoke-virtual {p0, v0}, Lrci;->f(Lrch;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final d(Ljava/lang/CharSequence;F)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lrci;->f(Lrch;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p1, p2}, Lrch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    new-instance v0, Lrch;

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/lang/CharSequence;I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1, p2}, Lrch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lrch;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lrci;->f(Lrch;)V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final f(Lrch;)V
    .locals 0

    goto/32 :goto_2

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
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrci;->b:Ljava/util/List;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final g(Lrcj;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrci;->a:Ljava/util/List;

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
.end method
