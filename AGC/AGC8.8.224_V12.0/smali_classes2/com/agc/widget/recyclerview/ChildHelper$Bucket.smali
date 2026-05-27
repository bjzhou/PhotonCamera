.class Lcom/agc/widget/recyclerview/ChildHelper$Bucket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation


# static fields
.field static final BITS_PER_WORD:I = 0x40

.field static final LAST_BIT:J = -0x8000000000000000L


# instance fields
.field mData:J

.field mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method private ensureNext()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    if-eqz v1, :cond_1

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->clear(I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    :cond_1
    :goto_0
    return-void
.end method

.method public countOnesBefore(I)I
    .locals 6

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    iget-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_1
    if-ge p1, v1, :cond_2

    iget-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_2
    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result p1

    iget-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public get(I)Z
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->ensureNext()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->get(I)Z

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public insert(IZ)V
    .locals 9

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->ensureNext()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->insert(IZ)V

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    const-wide/16 v5, 0x1

    shl-long v7, v5, p1

    sub-long/2addr v7, v5

    and-long v5, v0, v7

    not-long v7, v7

    and-long/2addr v0, v7

    shl-long/2addr v0, v3

    or-long/2addr v0, v5

    iput-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->set(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->clear(I)V

    :goto_1
    if-nez v2, :cond_3

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    if-eqz p1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->ensureNext()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {p1, v4, v2}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->insert(IZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method public remove(I)Z
    .locals 10

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->ensureNext()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->remove(I)Z

    move-result p1

    return p1

    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    iget-wide v4, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    and-long v6, v4, v2

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    move p1, v6

    goto :goto_0

    :cond_1
    move p1, v7

    :goto_0
    not-long v8, v2

    and-long/2addr v4, v8

    iput-wide v4, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    sub-long/2addr v2, v0

    and-long v0, v4, v2

    not-long v2, v2

    and-long/2addr v2, v4

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v7}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->set(I)V

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v0, v7}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->remove(I)Z

    :cond_3
    return p1
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->reset()V

    :cond_0
    return-void
.end method

.method public set(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->ensureNext()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->set(I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mNext:Lcom/agc/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/agc/widget/recyclerview/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
