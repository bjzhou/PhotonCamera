.class public final Lkqs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lksl;


# instance fields
.field public final a:Lpcu;

.field public final b:Lpdf;

.field public final c:Llqo;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Landroid/graphics/Rect;

.field private final f:Lfxj;

.field private final g:Lksl;

.field private final h:Llqy;


# direct methods
.method public constructor <init>(Lpct;Lfxj;Llqo;Lkxj;Llqy;Lksl;Lpdf;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkqs;->e:Landroid/graphics/Rect;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "LuckyShotEx"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkqs;->a:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lkqs;->f:Lfxj;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->ojJh:Ljava/lang/String;

    nop

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

    :goto_6
    iget-object p1, p4, Lkxj;->c:Landroid/graphics/Rect;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lolx;->aZ(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    iput-object p6, p0, Lkqs;->g:Lksl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    iput-object p7, p0, Lkqs;->b:Lpdf;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    iput-object p5, p0, Lkqs;->h:Llqy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    iput-object p3, p0, Lkqs;->c:Llqo;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1, v0}, Lpct;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lkqs;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llko;)Lksk;
    .locals 7

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    iget-object v0, p0, Lkqs;->g:Lksl;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v5, p0, Lkqs;->f:Lfxj;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, p1}, Lksl;->a(Llko;)Lksk;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v1, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-direct/range {v1 .. v6}, Lkqr;-><init>(Lkqs;Llko;Lksk;Lfxj;Llqy;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lkqr;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    move-object v2, p0

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

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v3, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v6, p0, Lkqs;->h:Llqy;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x9

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b(Llko;)Lksk;
    .locals 7

    goto/32 :goto_f

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    iget-object v5, p0, Lkqs;->f:Lfxj;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct/range {v1 .. v6}, Lkqr;-><init>(Lkqs;Llko;Lksk;Lfxj;Llqy;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    :goto_6
    goto/32 :goto_a

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

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    move-object v2, p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    move-object v1, v0

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

    :goto_c
    invoke-interface {v0, p1}, Lksl;->b(Llko;)Lksk;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    iget-object v6, p0, Lkqs;->h:Llqy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lkqr;

    nop

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

    :goto_f
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    move-object v3, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lkqs;->g:Lksl;

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

    nop

    :goto_13
    const v1, 0x17

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method
