.class public final Leee;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ledf;

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/Deque;

.field public final g:Ljava/util/Deque;

.field public h:Z

.field public i:J

.field public final j:Z


# direct methods
.method public constructor <init>(Ledf;IZ)V
    .locals 0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Leee;->g:Ljava/util/Deque;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Leee;->b:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_7
    iput-object p1, p0, Leee;->e:Ljava/util/List;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-wide p1, p0, Leee;->i:J

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Leee;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Leee;->a:Ledf;

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

    :goto_d
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    new-instance p1, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean p3, p0, Leee;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Leee;->d:Ljava/util/List;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Leee;->f:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Leee;->a:Ledf;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ledj;->c(Ljava/lang/String;)Z

    move-result p0

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

    :goto_4
    iget-object p0, p0, Ledf;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const p0, 0x15f90

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const p0, 0xbb80

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
