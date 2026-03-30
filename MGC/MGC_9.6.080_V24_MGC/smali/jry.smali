.class public final Ljry;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lj$/util/Optional;

.field public b:Lj$/util/Optional;

.field public c:Lj$/util/Optional;

.field public d:Lj$/util/Optional;

.field public e:Lj$/util/Optional;

.field public f:Lj$/util/Optional;

.field public g:Lj$/util/Optional;

.field public h:Lj$/util/Optional;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljry;->d:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    :goto_4
    iput-object p1, p0, Ljry;->a:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Ljry;->c:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Ljry;->e:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Ljry;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Ljry;->h:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    iput-object p1, p0, Ljry;->g:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Ljry;->f:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljrz;
    .locals 10

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v8, p0, Ljry;->h:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v3, p0, Ljry;->c:Lj$/util/Optional;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Ljry;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-direct/range {v0 .. v8}, Ljrz;-><init>(Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    iget-object v4, p0, Ljry;->d:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    iget-object v1, p0, Ljry;->a:Lj$/util/Optional;

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

    :goto_c
    iget-object v7, p0, Ljry;->g:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v0, v9

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    iget-object v6, p0, Ljry;->f:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    new-instance v9, Ljrz;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v5, p0, Ljry;->e:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    return-object v9

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
