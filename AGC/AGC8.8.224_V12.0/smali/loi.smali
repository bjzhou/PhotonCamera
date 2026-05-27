.class public final Lloi;
.super Ljava/lang/Object;


# static fields
.field public static a:Lloi;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lloi;->c:Ljava/lang/Object;

    iput-object v0, p0, Lloi;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloi;->c:Ljava/lang/Object;

    new-instance v0, Lloh;

    invoke-direct {v0}, Lloh;-><init>()V

    iput-object v0, p0, Lloi;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Ljtr;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    check-cast v0, Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldne;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloi;->c:Ljava/lang/Object;

    iput-object p2, p0, Lloi;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Llhr;

    invoke-direct {p2}, Llhr;-><init>()V

    iput-object p2, p0, Lloi;->b:Ljava/lang/Object;

    iput-object p1, p0, Lloi;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloi;->b:Ljava/lang/Object;

    iput-object p2, p0, Lloi;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lloi;->b:Ljava/lang/Object;

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lloi;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloi;->b:Ljava/lang/Object;

    const-string p1, "brella"

    iput-object p1, p0, Lloi;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloi;->c:Ljava/lang/Object;

    iput-object p2, p0, Lloi;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloi;->b:Ljava/lang/Object;

    iput-object p2, p0, Lloi;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloi;->b:Ljava/lang/Object;

    iput-object p2, p0, Lloi;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lknq;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloi;->b:Ljava/lang/Object;

    new-instance p1, Lkic;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lkic;-><init>(Lloi;[B[B[B[B)V

    iput-object p1, p0, Lloi;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkte;[B)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloi;->c:Ljava/lang/Object;

    new-instance p2, Ljava/util/TreeMap;

    iget-object p1, p1, Lkte;->c:Ljava/lang/Object;

    check-cast p1, [Lknh;

    array-length v0, p1

    new-instance v1, Lknj;

    new-array v0, v0, [Ljava/util/Comparator;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    iget-object v3, v3, Lknh;->b:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_0

    sget-object v3, Lamx;->r:Lamx;

    aput-object v3, v0, v2

    goto :goto_1

    :cond_0
    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_1

    sget-object v3, Lamx;->s:Lamx;

    aput-object v3, v0, v2

    goto :goto_1

    :cond_1
    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_2

    sget-object v3, Lamx;->t:Lamx;

    aput-object v3, v0, v2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {v1, v0}, Lknj;-><init>([Ljava/util/Comparator;)V

    invoke-direct {p2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object p2, p0, Lloi;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkuy;Llho;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloi;->b:Ljava/lang/Object;

    iput-object p2, p0, Lloi;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llbd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Llpm;->m(I)Lkyl;

    move-result-object v0

    iput-object v0, p0, Lloi;->b:Ljava/lang/Object;

    iput-object p1, p0, Lloi;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmqp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lloi;->b:Ljava/lang/Object;

    iput-object p1, p0, Lloi;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloi;->b:Ljava/lang/Object;

    iput-object p2, p0, Lloi;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lloi;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lloi;->c:Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized a()V
    .locals 3

    const-class v0, Lloi;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lloi;->a:Lloi;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lloi;->c:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lloi;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lloi;->a:Lloi;

    iget-object v2, v2, Lloi;->b:Ljava/lang/Object;

    check-cast v2, Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lloi;->a:Lloi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lloi;
    .locals 7

    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, 0x0

    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    new-instance p0, Lloi;

    invoke-direct {p0, p1, v6}, Lloi;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-object p0
.end method

.method public static s(Ljava/lang/String;)Lloi;
    .locals 1

    new-instance v0, Lloi;

    invoke-direct {v0, p0}, Lloi;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b(Llfg;)V
    .locals 1

    iget-object v0, p0, Lloi;->b:Ljava/lang/Object;

    check-cast v0, Lkyi;

    invoke-virtual {v0, p1}, Lkyi;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lkxt;)Ljava/util/List;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p1, Lkxt;->a:I

    iget v2, p1, Lkxt;->b:I

    :goto_0
    iget v3, p1, Lkxt;->a:I

    iget v4, p1, Lkxt;->b:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v1, v3, :cond_1

    new-instance v8, Lkxt;

    invoke-direct {v8, v1, v2}, Lkxt;-><init>(II)V

    new-instance v3, Lkxq;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lkxq;-><init>(Lloi;Lkxt;[B[B[B)V

    iget-object v6, v3, Lkxq;->c:Ljava/lang/Object;

    check-cast v6, Lkxt;

    iget v6, v6, Lkxt;->b:I

    iget v7, v3, Lkxq;->a:I

    add-int/2addr v6, v7

    sub-int/2addr v2, v6

    if-ltz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lmoz;->p(Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v6

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lmoz;->p(Z)V

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Lmoz;->p(Z)V

    return-object v0
.end method

.method public final d()Lldc;
    .locals 5

    new-instance v0, Lldc;

    iget-object v1, p0, Lloi;->c:Ljava/lang/Object;

    new-instance v2, Llba;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4, v4}, Llba;-><init>(Lloi;I[B[B)V

    invoke-static {v1, v2}, Llbk;->d(Llbd;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lldc;-><init>(Llbd;Lkzc;[B)V

    return-object v0
.end method

.method public final f(Lkxr;)Lkxs;
    .locals 8

    iget-object v0, p0, Lloi;->c:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    invoke-static {v0}, Lmoz;->e(Z)V

    iget-object v0, p0, Lloi;->c:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkxq;

    iget-object v0, v0, Lkxq;->b:Ljava/lang/Object;

    iget-object v1, p1, Lkxr;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lmoz;->e(Z)V

    iget-object v0, p0, Lloi;->c:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkxq;

    iget-object v0, v0, Lkxq;->c:Ljava/lang/Object;

    check-cast v0, Lkxt;

    iget v0, v0, Lkxt;->b:I

    iget v1, p1, Lkxr;->a:I

    add-int/lit8 v1, v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lloi;->c:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkxq;

    iget p1, p1, Lkxr;->a:I

    new-instance v7, Lkxs;

    iget-object v1, v0, Lkxq;->d:Ljava/lang/Object;

    iget-object v0, v0, Lkxq;->c:Ljava/lang/Object;

    check-cast v0, Lkxt;

    iget v0, v0, Lkxt;->a:I

    add-int v3, v0, p1

    move-object v2, v1

    check-cast v2, Lloi;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lkxs;-><init>(Lloi;I[B[B[B)V

    return-object v7

    :cond_0
    new-instance v0, Lkxu;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget p1, p1, Lkxr;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object p1, p0, Lloi;->c:Ljava/lang/Object;

    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkxq;

    iget-object p1, p1, Lkxq;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object p1, v2, v3

    iget-object p1, p0, Lloi;->c:Ljava/lang/Object;

    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkxq;

    iget-object p1, p1, Lkxq;->c:Ljava/lang/Object;

    check-cast p1, Lkxt;

    iget p1, p1, Lkxt;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const-string p1, "Trying to look up offset %d in box %s but the box is only %d bytes long"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkxu;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lloi;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lloi;

    iget-object v3, v2, Lloi;->c:Ljava/lang/Object;

    check-cast v3, Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v3

    invoke-static {v3}, Lmoz;->p(Z)V

    iget-object v3, v2, Lloi;->c:Ljava/lang/Object;

    check-cast v3, Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkxq;

    iget-object v3, v3, Lkxq;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 6

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object v0, p0, Lloi;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lloi;->j(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object v0, p0, Lloi;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lloi;->j(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs j(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    :goto_0
    array-length v0, p5

    if-lez v0, :cond_4

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :cond_4
    if-eqz p3, :cond_5

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_5
    iget-object p3, p0, Lloi;->c:Ljava/lang/Object;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lloi;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p1, Llug;->a:Llug;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not find application for intent fulfillment."

    invoke-virtual {p1, p0, v1, v0}, Llug;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lloi;->b:Ljava/lang/Object;

    check-cast p1, Ldne;

    invoke-virtual {p1}, Ldne;->o()V

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lloi;->c:Ljava/lang/Object;

    check-cast v0, Lkte;

    iget-object v0, v0, Lkte;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final m()[Lknh;
    .locals 1

    iget-object v0, p0, Lloi;->c:Ljava/lang/Object;

    check-cast v0, Lkte;

    iget-object v0, v0, Lkte;->c:Ljava/lang/Object;

    check-cast v0, [Lknh;

    return-object v0
.end method

.method public final n(Ljava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lloi;->c:Ljava/lang/Object;

    check-cast v0, Lkic;

    iget-object v0, v0, Lkic;->c:Lkte;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lkte;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public final o(IZ)V
    .locals 3

    iget-object v0, p0, Lloi;->c:Ljava/lang/Object;

    check-cast v0, Lkic;

    iget-object v0, v0, Lkic;->f:Lkte;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lkte;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 3

    iget-object v0, p0, Lloi;->c:Ljava/lang/Object;

    check-cast v0, Lkic;

    iget-object v0, v0, Lkic;->h:Lkte;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lkte;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Lloi;Ljava/util/List;)V
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkxq;

    iget-object v1, p0, Lloi;->c:Ljava/lang/Object;

    iget-object v2, v0, Lkxq;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lloi;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-direct {v1, v2}, Lloi;-><init>(Lmqp;)V

    iget-object v0, v0, Lkxq;->c:Ljava/lang/Object;

    check-cast v0, Lkxt;

    invoke-virtual {p0, v0}, Lloi;->c(Lkxt;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lloi;->q(Lloi;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lloi;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    invoke-direct {v1, v0}, Lloi;-><init>(Lmqp;)V

    :goto_1
    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    iget-object v0, p1, Lloi;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r(Ljava/lang/String;)Lloi;
    .locals 7

    invoke-virtual {p0, p1}, Lloi;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lloi;->c:Ljava/lang/Object;

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkxq;

    iget-object v1, v1, Lkxq;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "n/a"

    :goto_0
    new-instance v4, Lkxu;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v1, v6, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v6, v0

    const-string p1, "Looking for a unique %s box in a %s box but found %d of them"

    invoke-static {v5, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lkxu;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lloi;

    return-object p1
.end method
