.class final Lcom/agc/glide/load/model/ModelCache$ModelKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final KEY_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/agc/glide/load/model/ModelCache$ModelKey<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private height:I

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/agc/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Object;II)Lcom/agc/glide/load/model/ModelCache$ModelKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/agc/glide/load/model/ModelCache$ModelKey<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/load/model/ModelCache$ModelKey;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Lcom/agc/glide/load/model/ModelCache$ModelKey;

    invoke-direct {v1}, Lcom/agc/glide/load/model/ModelCache$ModelKey;-><init>()V

    :cond_0
    invoke-direct {v1, p0, p1, p2}, Lcom/agc/glide/load/model/ModelCache$ModelKey;->init(Ljava/lang/Object;II)V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private init(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    iput p2, p0, Lcom/agc/glide/load/model/ModelCache$ModelKey;->width:I

    iput p3, p0, Lcom/agc/glide/load/model/ModelCache$ModelKey;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/agc/glide/load/model/ModelCache$ModelKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/load/model/ModelCache$ModelKey;

    iget v0, p0, Lcom/agc/glide/load/model/ModelCache$ModelKey;->width:I

    iget v2, p1, Lcom/agc/glide/load/model/ModelCache$ModelKey;->width:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/agc/glide/load/model/ModelCache$ModelKey;->height:I

    iget v2, p1, Lcom/agc/glide/load/model/ModelCache$ModelKey;->height:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    iget-object p1, p1, Lcom/agc/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/agc/glide/load/model/ModelCache$ModelKey;->height:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/agc/glide/load/model/ModelCache$ModelKey;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/agc/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/agc/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
