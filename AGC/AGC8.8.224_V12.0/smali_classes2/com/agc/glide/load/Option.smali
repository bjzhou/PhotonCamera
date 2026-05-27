.class public final Lcom/agc/glide/load/Option;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/Option$CacheKeyUpdater;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY_UPDATER:Lcom/agc/glide/load/Option$CacheKeyUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/Option$CacheKeyUpdater<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheKeyUpdater:Lcom/agc/glide/load/Option$CacheKeyUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/Option$CacheKeyUpdater<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/String;

.field private volatile keyBytes:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/load/Option$1;

    invoke-direct {v0}, Lcom/agc/glide/load/Option$1;-><init>()V

    sput-object v0, Lcom/agc/glide/load/Option;->EMPTY_UPDATER:Lcom/agc/glide/load/Option$CacheKeyUpdater;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/agc/glide/load/Option$CacheKeyUpdater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/agc/glide/load/Option$CacheKeyUpdater<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/load/Option;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/agc/glide/load/Option;->defaultValue:Ljava/lang/Object;

    invoke-static {p3}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/Option$CacheKeyUpdater;

    iput-object p1, p0, Lcom/agc/glide/load/Option;->cacheKeyUpdater:Lcom/agc/glide/load/Option$CacheKeyUpdater;

    return-void
.end method

.method public static disk(Ljava/lang/String;Lcom/agc/glide/load/Option$CacheKeyUpdater;)Lcom/agc/glide/load/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/agc/glide/load/Option$CacheKeyUpdater<",
            "TT;>;)",
            "Lcom/agc/glide/load/Option<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/Option;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/agc/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/agc/glide/load/Option$CacheKeyUpdater;)V

    return-object v0
.end method

.method public static disk(Ljava/lang/String;Ljava/lang/Object;Lcom/agc/glide/load/Option$CacheKeyUpdater;)Lcom/agc/glide/load/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/agc/glide/load/Option$CacheKeyUpdater<",
            "TT;>;)",
            "Lcom/agc/glide/load/Option<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/Option;

    invoke-direct {v0, p0, p1, p2}, Lcom/agc/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/agc/glide/load/Option$CacheKeyUpdater;)V

    return-object v0
.end method

.method private static emptyUpdater()Lcom/agc/glide/load/Option$CacheKeyUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/agc/glide/load/Option$CacheKeyUpdater<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/Option;->EMPTY_UPDATER:Lcom/agc/glide/load/Option$CacheKeyUpdater;

    return-object v0
.end method

.method private getKeyBytes()[B
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/Option;->keyBytes:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/Option;->key:Ljava/lang/String;

    sget-object v1, Lcom/agc/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/Option;->keyBytes:[B

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/Option;->keyBytes:[B

    return-object v0
.end method

.method public static memory(Ljava/lang/String;)Lcom/agc/glide/load/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/agc/glide/load/Option<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/Option;

    invoke-static {}, Lcom/agc/glide/load/Option;->emptyUpdater()Lcom/agc/glide/load/Option$CacheKeyUpdater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/agc/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/agc/glide/load/Option$CacheKeyUpdater;)V

    return-object v0
.end method

.method public static memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/agc/glide/load/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/agc/glide/load/Option<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/Option;

    invoke-static {}, Lcom/agc/glide/load/Option;->emptyUpdater()Lcom/agc/glide/load/Option$CacheKeyUpdater;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/agc/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/agc/glide/load/Option$CacheKeyUpdater;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/agc/glide/load/Option;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/load/Option;

    iget-object v0, p0, Lcom/agc/glide/load/Option;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/agc/glide/load/Option;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/Option;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/Option;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/Option;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/Option;->cacheKeyUpdater:Lcom/agc/glide/load/Option$CacheKeyUpdater;

    invoke-direct {p0}, Lcom/agc/glide/load/Option;->getKeyBytes()[B

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/agc/glide/load/Option$CacheKeyUpdater;->update([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method
