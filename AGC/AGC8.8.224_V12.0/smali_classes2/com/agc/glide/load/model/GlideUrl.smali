.class public Lcom/agc/glide/load/model/GlideUrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/Key;


# static fields
.field private static final ALLOWED_URI_CHARS:Ljava/lang/String; = "@#&=*+-_.,:!?()/~\'%;$"


# instance fields
.field private volatile cacheKeyBytes:[B

.field private hashCode:I

.field private final headers:Lcom/agc/glide/load/model/Headers;

.field private safeStringUrl:Ljava/lang/String;

.field private safeUrl:Ljava/net/URL;

.field private final stringUrl:Ljava/lang/String;

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/agc/glide/load/model/Headers;->DEFAULT:Lcom/agc/glide/load/model/Headers;

    invoke-direct {p0, p1, v0}, Lcom/agc/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/agc/glide/load/model/Headers;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/agc/glide/load/model/Headers;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->url:Ljava/net/URL;

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    invoke-static {p2}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/model/Headers;

    iput-object p1, p0, Lcom/agc/glide/load/model/GlideUrl;->headers:Lcom/agc/glide/load/model/Headers;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    sget-object v0, Lcom/agc/glide/load/model/Headers;->DEFAULT:Lcom/agc/glide/load/model/Headers;

    invoke-direct {p0, p1, v0}, Lcom/agc/glide/load/model/GlideUrl;-><init>(Ljava/net/URL;Lcom/agc/glide/load/model/Headers;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/agc/glide/load/model/Headers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    iput-object p1, p0, Lcom/agc/glide/load/model/GlideUrl;->url:Ljava/net/URL;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/agc/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    invoke-static {p2}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/model/Headers;

    iput-object p1, p0, Lcom/agc/glide/load/model/GlideUrl;->headers:Lcom/agc/glide/load/model/Headers;

    return-void
.end method

.method private getCacheKeyBytes()[B
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->cacheKeyBytes:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/agc/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->cacheKeyBytes:[B

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->cacheKeyBytes:[B

    return-object v0
.end method

.method private getSafeStringUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->safeStringUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->url:Ljava/net/URL;

    invoke-static {v0}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "@#&=*+-_.,:!?()/~\'%;$"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->safeStringUrl:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->safeStringUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getSafeUrl()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->safeUrl:Ljava/net/URL;

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {p0}, Lcom/agc/glide/load/model/GlideUrl;->getSafeStringUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->safeUrl:Ljava/net/URL;

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->safeUrl:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/agc/glide/load/model/GlideUrl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/load/model/GlideUrl;

    invoke-virtual {p0}, Lcom/agc/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/agc/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->headers:Lcom/agc/glide/load/model/Headers;

    iget-object p1, p1, Lcom/agc/glide/load/model/GlideUrl;->headers:Lcom/agc/glide/load/model/Headers;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->url:Ljava/net/URL;

    invoke-static {v0}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/model/GlideUrl;->headers:Lcom/agc/glide/load/model/Headers;

    invoke-interface {v0}, Lcom/agc/glide/load/model/Headers;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/agc/glide/load/model/GlideUrl;->hashCode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/agc/glide/load/model/GlideUrl;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/agc/glide/load/model/GlideUrl;->headers:Lcom/agc/glide/load/model/Headers;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/agc/glide/load/model/GlideUrl;->hashCode:I

    :cond_0
    iget v0, p0, Lcom/agc/glide/load/model/GlideUrl;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringUrl()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/agc/glide/load/model/GlideUrl;->getSafeStringUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/agc/glide/load/model/GlideUrl;->getSafeUrl()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Lcom/agc/glide/load/model/GlideUrl;->getCacheKeyBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
