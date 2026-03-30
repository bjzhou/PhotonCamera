.class public final Lmdj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llxb;


# instance fields
.field public final synthetic a:Lmdk;

.field private final b:Ljava/util/Set;


# direct methods
.method private final declared-synchronized 166277962e993c138a6b1f0c9b571cc0m(Llxm;Llxo;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Llxo;->a:Llxo;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Llxo;->ordinal()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq p2, v0, :cond_1

    nop

    nop

    nop

    const/4 v0, 0x2

    nop

    nop

    nop

    if-eq p2, v0, :cond_1

    nop

    nop

    const/4 v0, 0x3

    nop

    nop

    nop

    if-eq p2, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x4

    nop

    if-eq p2, v0, :cond_1

    nop

    const/16 v0, 0xc

    nop

    if-eq p2, v0, :cond_1

    nop

    nop

    nop

    nop

    const/16 v0, 0xe

    nop

    nop

    nop

    nop

    nop

    if-eq p2, v0, :cond_1

    nop

    const/16 v0, 0x1a

    nop

    nop

    if-eq p2, v0, :cond_1

    nop

    nop

    nop

    goto/16 :goto_1

    nop

    :cond_1
    iget-object p2, p0, Lmdj;->b:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    iget-object p1, p0, Lmdj;->a:Lmdk;

    nop

    nop

    nop

    nop

    new-instance p2, Lmas;

    nop

    nop

    const/4 v0, 0x7

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0, v0}, Lmas;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p1, Lmdk;->c:Lowu;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Lowu;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized 3fd9578e124c68aa49885b22b61b4ec8m(Llxm;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    :goto_2
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_c

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

    :goto_4
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lmdj;->b:Ljava/util/Set;

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lmdj;->a:Lmdk;

    nop

    nop

    nop

    new-instance v0, Lmas;

    nop

    nop

    nop

    const/4 v1, 0x6

    nop

    invoke-direct {v0, p0, v1}, Lmas;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p1, Lmdk;->d:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    const-wide/16 v1, 0xbb8

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1e

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

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

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

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Lmdk;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    new-instance p1, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmdj;->b:Ljava/util/Set;

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
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lmdj;->a:Lmdk;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Llxm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1}, Lmdj;->3fd9578e124c68aa49885b22b61b4ec8m(Llxm;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic c(Llxm;)V
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

.method public final df(Llxm;)V
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

    :goto_1
    invoke-direct {p0, p1}, Lmdj;->3fd9578e124c68aa49885b22b61b4ec8m(Llxm;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic dh(Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic e(J)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final synthetic g(Llxm;Landroid/graphics/Bitmap;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p2}, Lkav;->I(Llxb;Landroid/graphics/Bitmap;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic h(Llxm;Lpcj;)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final i(Llxm;Llxh;Llxp;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lmdj;->166277962e993c138a6b1f0c9b571cc0m(Llxm;Llxo;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p2, p2, Llxh;->c:Llxo;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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
.end method

.method public final synthetic j(Llxm;)V
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
.end method

.method public final n(Llxm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lmdj;->3fd9578e124c68aa49885b22b61b4ec8m(Llxm;)V

    goto/32 :goto_0

    nop

    nop
.end method
