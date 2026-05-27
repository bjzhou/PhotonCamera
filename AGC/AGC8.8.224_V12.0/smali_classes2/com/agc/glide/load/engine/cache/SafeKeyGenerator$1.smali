.class Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/util/pool/FactoryPools$Factory<",
        "Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$1;->this$0:Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$1;->create()Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;

    move-result-object v0

    return-object v0
.end method
